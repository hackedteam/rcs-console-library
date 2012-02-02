package it.ht.rcs.console.evidence.rest
{
  public interface IDBEvidence
  {
    function all(filter: Object, onResult:Function = null, onFault:Function = null):void;
    function agent_status(params: Object, onResult:Function = null, onFault:Function = null):void;
    function sync_start(params: Object, onResult:Function = null, onFault:Function = null):void;
    function sync_stop(params: Object, onResult:Function = null, onFault:Function = null):void;
  }
}