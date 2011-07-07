package it.ht.rcs.console.accounting.rest
{
  public interface IDBSession
  {
    function login(credentials:Object, onResult:Function, onFault:Function):void;
    function logout(onResult:Function = null, onFault:Function = null):void;
    
    function all(onResult:Function = null, onFault:Function = null):void;
    function destroy(cookie:String, onResult:Function = null, onFault:Function = null):void;
  }
}