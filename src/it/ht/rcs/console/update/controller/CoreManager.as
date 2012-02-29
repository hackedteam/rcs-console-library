package it.ht.rcs.console.update.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.controller.Manager;
  import it.ht.rcs.console.update.model.Core;
  
  import mx.rpc.events.ResultEvent;
  
  [Bindable]
  public class CoreManager extends ItemManager
  {
    
    /* singleton */
    private static var _instance:CoreManager = new CoreManager();
    public static function get instance():CoreManager { return _instance; }
    
    public function CoreManager()
    {
      super();
      /* always get new data upon startup */
      refresh();
    }
    
    override public function refresh():void
    {
      super.refresh();
      DB.instance.update.core_all(onResult);
    }
    
    private function onResult(e:ResultEvent):void
    {
      clear();
      for each (var item:* in e.result.source)
        addItem(item);
      dispatchDataLoadedEvent();
    }
   
    public function getLatestVersion(platform:String):String
    {
      for each (var item:Core in _items.source) {
        if (item.name == platform)
          return item.version.toString();
      }
      return "unknown";
    }
  }
  
}