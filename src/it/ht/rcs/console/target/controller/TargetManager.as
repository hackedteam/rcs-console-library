package it.ht.rcs.console.target.controller
{
  import flash.events.Event;
  import flash.events.TimerEvent;
  import flash.utils.Timer;
  
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.ObjectUtils;
  import it.ht.rcs.console.agent.controller.AgentManager;
  import it.ht.rcs.console.agent.model.Agent;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.dashboard.controller.DashboardController;
  import it.ht.rcs.console.entities.controller.EntityManager;
  import it.ht.rcs.console.operation.model.Operation;
  import it.ht.rcs.console.push.PushController;
  import it.ht.rcs.console.push.PushEvent;
  import it.ht.rcs.console.search.controller.SearchManager;
  import it.ht.rcs.console.search.model.Stat;
  import it.ht.rcs.console.search.model.StatEvidence;
  import it.ht.rcs.console.target.model.Target;
  
  import mx.collections.ArrayCollection;
  import mx.collections.ListCollectionView;
  import mx.events.CollectionEvent;
  import mx.rpc.events.FaultEvent;
  import mx.rpc.events.ResultEvent;
  
  import org.osmf.events.TimeEvent;
  
  public class TargetManager extends ItemManager
  {
    
    public function TargetManager()
    {
      super(Target);
      //PushController.instance.addEventListener(PushEvent.TARGET, onTargetPush);
    }
    
    public function listenPush():void
    {
      PushController.instance.addEventListener( PushEvent.TARGET, onTargetPush);
    }
    public function unlistenPush():void
    {
      PushController.instance.removeEventListener( PushEvent.TARGET, onTargetPush);
    }
    
    private static var _instance:TargetManager = new TargetManager();
    public static function get instance():TargetManager { return _instance; }
    
    override public function refresh():void
    {
      super.refresh();
      DB.instance.target.all(onResult);
    }
    
    private function onResult(e:ResultEvent):void
    {
      clear();
      for each (var item:* in e.result.source)
        addItem(item);
      dispatchDataLoadedEvent();
    }
    
    private function onTargetPush(e:PushEvent):void
    {
      //TargetManager.instance.show(e.data.id as String);
      
      var t:Target;
      switch (e.data.action)
      {
        case PushEvent.CREATE:
          trace("target creation");
          
          var evidence:StatEvidence=new StatEvidence(e.data.changes.stat.evidence)
          e.data.changes.stat.evidence=evidence;
          var dashboard:StatEvidence=new StatEvidence(e.data.changes.stat.dashboard)
          e.data.changes.stat.dashboard=dashboard;
          
          var stat:Stat=new Stat(e.data.changes.stat)
          e.data.changes.stat=stat
          
          t=new Target(e.data.changes);
          if(!getItem(e.data.id))

          addItem(t);
          break;
      
        
        case PushEvent.MODIFY:
          trace("target update");
          t = getItem(e.data.id)
          _items.removeEventListener(CollectionEvent.COLLECTION_CHANGE, onItemsChange);
          for(var property:String in e.data.changes)
          {
            
            t[property]= e.data.changes[property];
          }
          _items.addEventListener(CollectionEvent.COLLECTION_CHANGE, onItemsChange);
          break;
        
        
        case PushEvent.DESTROY:
          trace("target deletion");
          _items.removeEventListener(CollectionEvent.COLLECTION_CHANGE, onItemsChange);
          removeItem(getItem(e.data.id))
          _items.addEventListener(CollectionEvent.COLLECTION_CHANGE, onItemsChange);
          break;
      }
      dispatchEvent(new Event("dataPush"))
    }
    
    override protected function onItemRemove(item:*):void
    {
      DB.instance.target.destroy(item._id);
      DashboardController.instance.removeItem(DashboardController.instance.getItem(item._id));
      //EntityManager.instance.refresh();
     
    }
    
    override protected function onItemUpdate(event:*):void
    {
      var property:Object = new Object();
      property[event.property] = event.newValue is ArrayCollection ? event.newValue.source : event.newValue;
      DB.instance.target.update(event.source, property);
    }
    
    public function addTarget(t:Target, o:Operation, callback:Function=null):void
    {
      DB.instance.target.create(ObjectUtils.toHash(t), o, function(e:ResultEvent):void {
        var target:Target = e.result as Target;
        addItem(target);
        SearchManager.instance.showItem(target._id);
        
        //EntityManager.instance.refresh();
        
         
       /* var t:Timer=new Timer(5000,1);
        t.addEventListener(TimerEvent.TIMER, refreshEntities)
        t.start()*/
       

        if(callback!=null)
        callback(target);
      });
    }
    
    private function refreshEntities(e:TimerEvent):void
    {
      EntityManager.instance.refresh();
      e.target.stop();
    }

    // Se l'elemento non e' presente, ma la show me lo ritorna, lo aggiungo. In ogni caso, aggiorno il search manager.
    public function show(_id:String, onResult:Function=null):void
    {
      DB.instance.target.show(_id, function(re:ResultEvent):void {
        var t:Target = getItem(_id);
        if (t == null)
          addItem(re.result);
        
        SearchManager.instance.showItem(_id);
        
        if (onResult != null)
          onResult(re);
      }, function(fe:FaultEvent):void {
        SearchManager.instance.showItem(_id);
      });
    }
    
    public function closeTarget(id:String):void
    {
      var target:Target = getItem(id);
      
      if (target == null) return;
      
      var items:Array = [target];
      
      var agents:ListCollectionView = AgentManager.instance.getView(null,
        function(item:Object):Boolean {
          if(item.path.length>1)
          {
          return (
            item is Agent &&
            item.status == 'open' &&
            item.path[1] == id);
        }
          else
          {
          return false;
          }
        
        });
      
      items = items.concat(agents.toArray());
      
      items.forEach(function(item:*, index:int, array:Array):void {
        item.status = 'closed';
      });
    }
    
  }
  
}