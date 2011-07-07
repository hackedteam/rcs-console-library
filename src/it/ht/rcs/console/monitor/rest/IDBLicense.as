package it.ht.rcs.console.monitor.rest
{
  public interface IDBLicense
  {
    function limit(onResult:Function = null, onFault:Function = null):void;
    function count(onResult:Function = null, onFault:Function = null):void;
  }
}