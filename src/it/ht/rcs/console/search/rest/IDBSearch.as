package it.ht.rcs.console.search.rest
{
  public interface IDBSearch
  {
    function all(filter:Object, onResult:Function = null, onFault:Function = null) : void;
    function show(id:String, onResult:Function = null, onFault:Function = null):void;
  }
}