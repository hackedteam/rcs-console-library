package it.ht.rcs.console.alert.controller
{
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.events.RefreshEvent;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class AlertManager extends ItemManager
  {
    /* singleton */
    private static var _instance:AlertManager = new AlertManager();
    public static function get instance():AlertManager { return _instance; } 
    
    public function AlertManager()
    {
      super();
    }
    
    override protected function onItemRemove(o:*):void
    { 
      console.currentDB.alert.destroy(o);
    }
    
    override protected function onItemUpdate(e:*):void
    { 
      var o:Object = new Object;
      if (e.newValue is ArrayCollection)
        o[e.property] = e.newValue.source;
      else
        o[e.property] = e.newValue;
      console.currentDB.alert.update(e.source, o);
    }
    
    override protected function onRefresh(e:RefreshEvent):void
    {
      super.onRefresh(e);
      console.currentDB.alert.all(onGroupIndexResult);
    }
    
    private function onGroupIndexResult(e:ResultEvent):void
    {
      var items:ArrayCollection = e.result as ArrayCollection;
      _items.removeAll();
      items.source.forEach(function toGroupArray(element:*, index:int, arr:Array):void {
        addItem(new Alert(element));
      });
    }
  }
}