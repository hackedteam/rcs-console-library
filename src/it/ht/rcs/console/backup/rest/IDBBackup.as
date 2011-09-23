package it.ht.rcs.console.backup.rest
{
  public interface IDBBackup
  {
    function all(onResult:Function = null, onFault:Function = null):void;
  }
}