package it.ht.rcs.console.backup.rest
{
  import it.ht.rcs.console.backup.model.BackupArchive;
  import it.ht.rcs.console.backup.model.BackupJob;

  public interface IDBBackup
  {
    function all_job(onResult:Function = null, onFault:Function = null):void;
    function create_job(params:Object, onResult:Function = null, onFault:Function = null):void;
    function update_job(job:BackupJob, property:Object, onResult:Function = null, onFault:Function = null):void;
    function destroy_job(job:BackupJob, onResult:Function = null, onFault:Function = null):void;
    function run_job(job:BackupJob, onResult:Function = null, onFault:Function = null):void;
    
    function all_archive(onResult:Function = null, onFault:Function = null):void;
    function restore_archive(archive:BackupArchive, destructive:Boolean, onResult:Function = null, onFault:Function = null):void;
    function destroy_archive(archive:BackupArchive, onResult:Function = null, onFault:Function = null):void;
  }
}