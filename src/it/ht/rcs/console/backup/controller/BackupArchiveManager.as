package it.ht.rcs.console.backup.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.backup.model.BackupArchive;
  import it.ht.rcs.console.controller.ItemManager;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class BackupArchiveManager extends ItemManager
  {
    
    private static var _instance:BackupArchiveManager = new BackupArchiveManager();
    public static function get instance():BackupArchiveManager { return _instance; } 
    
    public function BackupArchiveManager()
    {
      super(BackupArchive);
    }
    
    override public function refresh():void
    {
      super.refresh();
      DB.instance.backup.all_archive(onResult);
    }
    
    private function onResult(e:ResultEvent):void
    {
      _items.removeAll();
      for each (var item:* in e.result.source)
        _items.addItem(item);
      dispatchDataLoadedEvent();
    }
    
    override protected function onItemRemove(o:*):void
    { 
      DB.instance.backup.destroy_archive(o);
    }
    
    public function restoreArchive(a:BackupArchive, destructive:Boolean):void
    {
      DB.instance.backup.restore_archive(a, destructive);
    }
    
  }
  
}