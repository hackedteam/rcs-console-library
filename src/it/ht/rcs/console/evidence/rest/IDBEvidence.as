package it.ht.rcs.console.evidence.rest
{
  public interface IDBEvidence
  {
    function all(filter: Object, onResult:Function = null, onFault:Function = null):void;
  }
}