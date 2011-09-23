package it.ht.rcs.console.backup.rest
{
  import it.ht.rcs.console.backup.model.BackupJob;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;

  public class DBBackdupDemo implements IDBBackup
  {
    public function DBBackdupDemo()
    {
    }
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      var items:ArrayCollection = new ArrayCollection();
      items.addItem(new BackupJob({_id: '1', enabled:false, lastrun: 0, status: 'COMPLETED', what: 'only metadata', when: "every 00:00:00", name: 'meta-data'}) );
      items.addItem(new BackupJob({_id: '2', enabled:false, lastrun: new Date().time / 1000, status: 'RUNNING', what: 'whole evidence', when: "every SUN", name: 'full-evidence'}) );
      items.addItem(new BackupJob({_id: '3', enabled:false, lastrun: 0, status: 'ERROR', what: 'full [terror]', when: "every MON", name: 'terror'}) );
      
      var event:ResultEvent = new ResultEvent("alert.index", false, true, items);
      if (onResult != null) 
        onResult(event);

    }
  }
}