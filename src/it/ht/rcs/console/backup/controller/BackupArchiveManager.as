package it.ht.rcs.console.backup.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.events.RefreshEvent;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class BackupArchiveManager extends ItemManager
  {
    
    /* singleton */
    private static var _instance:BackupArchiveManager = new BackupArchiveManager();
    public static function get instance():BackupArchiveManager { return _instance; } 
    
    public function BackupArchiveManager()
    {
      super();
    }
    
    override protected function onRefresh(e:RefreshEvent):void
    {
      super.onRefresh(e);
      
      DB.instance.backup.all_archive(onResult);
    }
    
    private function onResult(e:ResultEvent):void
    {
      var items:ArrayCollection = e.result as ArrayCollection;
      _items.removeAll();
      items.source.forEach(function(element:*, index:int, arr:Array):void {
        addItem(element);
      });
      dispatchDataLoadedEvent();
    }
    
  }
}