package it.ht.rcs.console.accounting.controller
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
    
    override public function refresh():void
    {
      super.refresh();
      DB.instance.operation.all(true, onResult);
    }
    
    private function onResult(e:ResultEvent):void
    {
      var items:ArrayCollection = e.result as ArrayCollection;
      _items.removeAll();
      items.source.forEach(function toGroupArray(element:*, index:int, arr:Array):void {
        addItem(element as Operation);
      });
    }
  }
}
