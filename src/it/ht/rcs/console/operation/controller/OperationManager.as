package it.ht.rcs.console.operation.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.operation.model.Operation;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class OperationManager extends ItemManager
  {
    
    private static var _instance:OperationManager = new OperationManager();
    public static function get instance():OperationManager { return _instance; }
    
    public function OperationManager()
    {
      super(Operation);
    }
    
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
    }
    
    override protected function onItemUpdate(event:*):void
    {
      var property:Object = new Object();
      property[event.property] = event.newValue is ArrayCollection ? event.newValue.source : event.newValue;
      DB.instance.operation.update(event.source, property);
    }
    
    public function addOperation(operation:Operation, callback:Function):void
    {
      DB.instance.operation.create(operation, function(e:ResultEvent):void {
        var o:Operation = e.result as Operation;
        addItem(o);
        callback(o);
      });
    }
    
  }
  
}