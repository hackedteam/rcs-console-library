package it.ht.rcs.console.backup.rest
{
  import it.ht.rcs.console.backup.model.BackupArchive;
  import it.ht.rcs.console.backup.model.BackupJob;
  import it.ht.rcs.console.backup.model.BackupJobTime;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;

  public class DBBackupDemo implements IDBBackup
  {

    private var jobs:ArrayCollection = new ArrayCollection([
      new BackupJob({ _id: '1', enabled:true,  lastrun: '2011-10-11 12:31', status: 'COMPLETED', what: 'metadata',     when: new BackupJobTime({ week: [],      month: [],  time: '12:30'}), name: 'meta-data' }),
      new BackupJob({ _id: '2', enabled:true,  lastrun: '2011-10-09 00:00', status: 'RUNNING',   what: 'full',         when: new BackupJobTime({ week: [0],     month: [],  time: '00:00'}), name: 'full-evidence' }),
      new BackupJob({ _id: '3', enabled:false, lastrun: '2011-10-10 00:05', status: 'ERROR',     what: 'operation:o1', when: new BackupJobTime({ week: [1,3,5], month: [],  time: '00:00'}), name: 'blackjack' }),
      new BackupJob({ _id: '4', enabled:true,  lastrun: '2011-10-01 00:00', status: 'COMPLETED', what: 'target:o1',    when: new BackupJobTime({ week: [],      month: [1], time: '00:00'}), name: 'critical' })
    ]);
    
    public function all_job(onResult:Function=null, onFault:Function=null):void
    {
      if (onResult != null) 
        onResult(new ResultEvent('backupjob.index', false, true, jobs));
    }
    
    public function create_job(params:Object, onResult:Function=null, onFault:Function=null):void
    {
      params._id = new Date().time.toString();
      var job:BackupJob = new BackupJob(params);
      var event:ResultEvent = new ResultEvent('backupjob.create', false, true, job);
      onResult(event);
    }
    
    public function destroy_job(job:BackupJob, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function update_job(job:BackupJob, property:Object, onResult:Function=null, onFault:Function=null):void
    {
    }

    public function run_job(job:BackupJob, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    private var archives:ArrayCollection = new ArrayCollection([
      new BackupArchive({ _id: '1', when: '2011-09-26 15:30', name: 'meta-data',     size: 125635874 }),
      new BackupArchive({ _id: '2', when: '2011-09-01 00:00', name: 'full-evidence', size: 5634879214 })
    ]);
    
    public function all_archive(onResult:Function=null, onFault:Function=null):void
    {
      if (onResult != null) 
        onResult(new ResultEvent('backuparchive.index', false, true, archives));
    }
    
    public function destroy_archive(archive:BackupArchive, onResult:Function=null, onFault:Function=null):void
    {
    }

    public function restore_archive(archive:BackupArchive, destructive:Boolean, onResult:Function=null, onFault:Function=null):void
    {
    }

  }
  
}