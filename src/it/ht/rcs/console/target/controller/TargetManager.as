package it.ht.rcs.console.target.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.ObjectUtils;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.dashboard.controller.DashboardController;
  import it.ht.rcs.console.operation.model.Operation;
  import it.ht.rcs.console.push.PushController;
  import it.ht.rcs.console.push.PushEvent;
  import it.ht.rcs.console.search.controller.SearchManager;
  import it.ht.rcs.console.target.model.Target;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.FaultEvent;
  import mx.rpc.events.ResultEvent;
  
  public class TargetManager extends ItemManager
  {
    
    public function TargetManager()
    {
      super(Target);
      PushController.instance.addEventListener(PushEvent.TARGET, onTargetPush);
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
      TargetManager.instance.show(e.data.id as String);
    }
    
    override protected function onItemRemove(item:*):void
    {
      DB.instance.target.destroy(item._id);
      DashboardController.instance.removeItem(DashboardController.instance.getItem(item._id));
    }
    
    override protected function onItemUpdate(event:*):void
    {
      var property:Object = new Object();
      property[event.property] = event.newValue is ArrayCollection ? event.newValue.source : event.newValue;
      DB.instance.target.update(event.source, property);
    }
    
    public function addTarget(t:Target, o:Operation, callback:Function):void
    {
      DB.instance.target.create(ObjectUtils.toHash(t), o, function(e:ResultEvent):void {
        var target:Target = e.result as Target;
        addItem(target);
        SearchManager.instance.showItem(target._id);
        callback(target);
      });
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
    
  }
  
}