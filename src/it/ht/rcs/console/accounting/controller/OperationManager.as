package it.ht.rcs.console.accounting.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.operation.model.Operation;
  
  import mx.rpc.events.ResultEvent;
  
  public class OperationManager extends ItemManager
  {
    
    public function OperationManager() { super(Operation); }
    
    private static var _instance:OperationManager = new OperationManager();
    public static function get instance():OperationManager { return _instance; } 
    
    override public function refresh():void
    {
      super.refresh();
      DB.instance.operation.all(true, onResult);
    }
    
    private function onResult(e:ResultEvent):void
    {
      clear();
      for each (var item:* in e.result.source)
        addItem(item);
      dispatchDataLoadedEvent();
    }
    
  }
  
}