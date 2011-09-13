package it.ht.rcs.console.search.rest
{
  public interface IDBSearch
  {
    function all(filter:Object, onResult:Function = null, onFault:Function = null) : void;
  }
}