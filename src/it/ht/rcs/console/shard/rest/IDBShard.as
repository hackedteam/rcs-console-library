package it.ht.rcs.console.shard.rest
{
  public interface IDBShard
  {
    function all(onResult:Function = null, onFault:Function = null):void;
    function show(id:String, onResult:Function = null, onFault:Function = null):void;
    
  }
}