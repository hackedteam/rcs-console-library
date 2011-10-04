package it.ht.rcs.console.backup.rest
{
  import it.ht.rcs.console.backup.model.BackupArchive;
  import it.ht.rcs.console.backup.model.BackupJob;
  import it.ht.rcs.console.backup.model.BackupJobTime;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;

  public class DBBackupDemo implements IDBBackup
  {
    public function DBBackupDemo()
    {
    }
    
    public function all_job(onResult:Function=null, onFault:Function=null):void
    {
      var items:ArrayCollection = new ArrayCollection();
      var date:Date = new Date();
      date.setTime(Date.UTC(2011,08,28,12,30));
      items.addItem(new BackupJob({_id: '1', enabled:true, lastrun: date.time / 1000, status: 'COMPLETED', what: 'metadata', when: new BackupJobTime({week: [], month: [], time: '12:30'}), name: 'meta-data'}) );
      items.addItem(new BackupJob({_id: '2', enabled:true, lastrun: new Date().time / 1000, status: 'RUNNING', what: 'full', when: new BackupJobTime({week: [0], month: [], time: '00:00'}), name: 'full-evidence'}) );
      date.setTime(Date.UTC(2011,08,26,0,0));
      items.addItem(new BackupJob({_id: '3', enabled:false, lastrun: date.time / 1000, status: 'ERROR', what: 'operation:4e259fe5963d35425c000001', when: new BackupJobTime({week: [1,3,5], month: [], time: '00:00'}), name: 'blackjack'}) );
      date.setTime(Date.UTC(2011,09,1,0,0));
      items.addItem(new BackupJob({_id: '4', enabled:true, lastrun: date.time / 1000, status: 'COMPLETED', what: 'target:4e2686e1963d350658000002', when: new BackupJobTime({week: [], month: [1], time: '00:00'}), name: 'critical'}) );
      
      var event:ResultEvent = new ResultEvent("backupjob.index", false, true, items);
      if (onResult != null) 
        onResult(event);
    }
    
    public function create_job(params:Object, onResult:Function=null, onFault:Function=null):void
    {
      params._id = new Date().getTime().toString();
      var job:BackupJob = new BackupJob(params);
      var event:ResultEvent = new ResultEvent("backupjob.create", false, true, job);
      onResult(event);
    }
    
    public function destroy_job(job:BackupJob, onResult:Function=null, onFault:Function=null):void
    {
      /* do nothing */
    }
    
    public function update_job(job:BackupJob, property:Object, onResult:Function=null, onFault:Function=null):void
    {
      /* do nothing */
    }

    public function run_job(job:BackupJob, onResult:Function=null, onFault:Function=null):void
    {
      /* do nothing */
    }
    
    public function all_archive(onResult:Function=null, onFault:Function=null):void
    {
      var items:ArrayCollection = new ArrayCollection();
      items.addItem(new BackupArchive({_id: '1', when: "2011-09-26 15:30", name: 'meta-data', size: 125635874}) );
      items.addItem(new BackupArchive({_id: '2', when: "2011-09-01 00:00", name: 'full-evidence', size: 5634879214}) );
      
      var event:ResultEvent = new ResultEvent("backuparchive.index", false, true, items);
      if (onResult != null) 
        onResult(event);
    }
    
    public function destroy_archive(archive:BackupArchive, onResult:Function=null, onFault:Function=null):void
    {
      /* do nothing */
    }

    public function restore_archive(archive:BackupArchive, destructive:Boolean, onResult:Function=null, onFault:Function=null):void
    {
      /* do nothing */
    }

  }
}