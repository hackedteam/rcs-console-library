package it.ht.rcs.console.operation.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.events.RefreshEvent;
  import it.ht.rcs.console.operation.model.Operation;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class OperationManager extends ItemManager
  {
    private static var _instance:OperationManager = new OperationManager();
    public static function get instance():OperationManager { return _instance; } 
    
    public function OperationManager()
    {
      super();
    }
    
    private static var startMS:Number;
    override protected function onRefresh(e:RefreshEvent):void
    {
      super.onRefresh(e);
      
      startMS = new Date().time;
      DB.instance.operation.all(false, onResult);
    }
    
    private function onResult(e:ResultEvent):void
    {
      var endMS:Number = new Date().time - startMS;
      trace('Operations: ' + endMS);
      
      var items:ArrayCollection = e.result as ArrayCollection;
      _items.removeAll();
      items.source.forEach(function(element:*, index:int, arr:Array):void {
        addItem(element);
      });
      dispatchDataLoadedEvent();
    }
    
    override protected function onItemRemove(o:*):void
    {
      DB.instance.operation.destroy(o._id);
    }
    
    override protected function onItemUpdate(e:*):void
    { 
      var o:Object = new Object;

      o[e.property] = e.newValue;

      DB.instance.operation.update(e.source, o);
    }
    
    public function addOperation(operation:Operation, callback:Function):void
    {
      DB.instance.operation.create(operation, function (e:ResultEvent):void {
        var operation:Operation = e.result as Operation;
        addItem(operation);
        if (callback != null)
          callback(operation);
      });
    }
    
  }
}
