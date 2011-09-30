package it.ht.rcs.console.backup.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.backup.model.BackupJob;
  import it.ht.rcs.console.backup.model.BackupJobTime;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.events.RefreshEvent;
  
  import mx.collections.ArrayCollection;
  import mx.collections.ISort;
  import mx.collections.ListCollectionView;
  import mx.collections.Sort;
  import mx.collections.SortField;
  import mx.rpc.events.ResultEvent;
  
  public class BackupJobManager extends ItemManager
  {
    
    /* singleton */
    private static var _instance:BackupJobManager = new BackupJobManager();
    public static function get instance():BackupJobManager { return _instance; } 
    
    public function BackupJobManager()
    {
      super();
    }
    
    override protected function onRefresh(e:RefreshEvent):void
    {
      super.onRefresh(e);
      DB.instance.backup.all_job(onResult);
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
    
    override protected function onItemRemove(o:*):void
    { 
      DB.instance.backup.destroy_job(o);
    }
    
    override protected function onItemUpdate(e:*):void
    { 
      var o:Object = new Object;

      if (e.newValue is BackupJobTime) {
        var bjt:BackupJobTime = e.newValue as BackupJobTime;
        o[e.property] = {week: bjt.week.source, month: bjt.month.source, time: bjt.time};
      } else {
        o[e.property] = e.newValue;
      }

      DB.instance.backup.update_job(e.source, o);
    }
    
    public function newJob(callback:Function):void
    {     
      DB.instance.backup.create_job(BackupJob.defaultJob(), function (e:ResultEvent):void {
        var j:BackupJob = e.result as BackupJob;
        addItem(j);
        callback(j);
      });
    }
    
    override public function getView(sortCriteria:ISort=null, filterFunction:Function=null):ListCollectionView
    {
      var sort:Sort = new Sort();
      sort.fields = [new SortField('_id', true, false, true)];
      return super.getView(sort);
    }
  }
}