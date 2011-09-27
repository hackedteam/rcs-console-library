package it.ht.rcs.console.backup.rest
{
  public interface IDBBackup
  {
    function all_job(onResult:Function = null, onFault:Function = null):void;

    function all_archive(onResult:Function = null, onFault:Function = null):void;

  }
}