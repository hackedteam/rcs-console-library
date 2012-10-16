package it.ht.rcs.console.operation.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.ObjectUtils;
  import it.ht.rcs.console.agent.controller.AgentManager;
  import it.ht.rcs.console.agent.model.Agent;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.dashboard.controller.DashboardController;
  import it.ht.rcs.console.operation.model.Operation;
  import it.ht.rcs.console.push.PushController;
  import it.ht.rcs.console.push.PushEvent;
  import it.ht.rcs.console.search.controller.SearchManager;
  import it.ht.rcs.console.target.controller.TargetManager;
  import it.ht.rcs.console.target.model.Target;
  
  import mx.collections.ArrayCollection;
  import mx.collections.ListCollectionView;
  import mx.rpc.events.FaultEvent;
  import mx.rpc.events.ResultEvent;
  import mx.utils.ArrayUtil;
  
  public class OperationManager extends ItemManager
  {
    
    public function OperationManager() {
      super(Operation);
      PushController.instance.addEventListener(PushEvent.OPERATION, onOperationPush);
    }
    
    private static var _instance:OperationManager = new OperationManager();
    public static function get instance():OperationManager { return _instance; }
    
    override public function refresh():void
    {
      super.refresh();
      DB.instance.operation.all(false, onResult);
    }
    
    private function onResult(e:ResultEvent):void
    {
      clear();
      for each (var item:* in e.result.source)
        addItem(item);
      dispatchDataLoadedEvent();
    }
    
    private function onOperationPush(e:PushEvent):void
    {
      show(e.data.id as String);
    }
    
    override protected function onItemRemove(item:*):void
    {
      DB.instance.operation.destroy(item._id, onItemDestroyed);
      
     
      
      DashboardController.instance.removeItem(DashboardController.instance.getItem(item._id));
    }
    private function onItemDestroyed(e:ResultEvent):void
    {
      TargetManager.instance.refresh();
      AgentManager.instance.refresh();
    }
      
    override protected function onItemUpdate(event:*):void
    {
      var property:Object = new Object();
      property[event.property] = event.newValue is ArrayCollection ? event.newValue.source : event.newValue;
      DB.instance.operation.update(event.source, property);
    }
    
    public function addOperation(o:Operation, callback:Function):void
    {
      DB.instance.operation.create(ObjectUtils.toHash(o), function(e:ResultEvent):void {
        var operation:Operation = e.result as Operation;
        addItem(operation);
        SearchManager.instance.showItem(operation._id);
        callback(operation);
      });
    }
    
    // Se l'elemento non e' presente, ma la show me lo ritorna, lo aggiungo. In ogni caso, aggiorno il search manager.
    public function show(_id:String, onResult:Function=null):void
    {
      DB.instance.operation.show(_id, function(re:ResultEvent):void {
        var o:Operation = getItem(_id);
        if (o == null)
          addItem(re.result);
        
        SearchManager.instance.showItem(_id);
        
        if (onResult != null)
          onResult(re);
      }, function(fe:FaultEvent):void {
        SearchManager.instance.showItem(_id);
      });
    }
    
    public function closeOperation(id:String):void
    {
      var operation:Operation = getItem(id);
      
      if (operation == null) return;
      
      var items:Array = [operation];
      
      var targets:ListCollectionView = TargetManager.instance.getView(null,
        function(item:Object):Boolean {
          return (
            item is Target &&
            item.status == 'open' &&
            item.path[0] == id); });
      
      items = items.concat(targets.toArray());
      
      var agents:ListCollectionView = AgentManager.instance.getView(null,
        function(item:Object):Boolean {
          return (
            item is Agent &&
            item.status == 'open' &&
            item.path[0] == id); });
      
      items = items.concat(agents.toArray());
      
      items.forEach(function(item:*, index:int, array:Array):void {
        item.status = 'closed';
      });
    }
    
  }
  
}