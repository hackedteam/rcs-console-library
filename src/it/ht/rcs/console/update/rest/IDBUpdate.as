package it.ht.rcs.console.update.rest
{
  public interface IDBUpdate
  {
    function all(onResult:Function = null, onFault:Function = null):void;
    function core_all(onResult:Function = null, onFault:Function = null):void;
  }
}