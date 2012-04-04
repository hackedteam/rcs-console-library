package it.ht.rcs.console.operation.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.ObjectUtils;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.dashboard.controller.DashboardController;
  import it.ht.rcs.console.operation.model.Operation;
  import it.ht.rcs.console.search.controller.SearchManager;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class OperationManager extends ItemManager
  {
    
    public function OperationManager() { super(Operation); }
    
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
    
    override protected function onItemRemove(item:*):void
    {
      DB.instance.operation.destroy(item._id);
      DashboardController.instance.removeItem(DashboardController.instance.getItem(item._id));
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
    
  }
  
}