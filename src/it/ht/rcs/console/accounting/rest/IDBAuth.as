package it.ht.rcs.console.accounting.rest
{
  public interface IDBAuth
  {
    function login(credentials:Object, onResult:Function, onFault:Function):void;
    function logout(onResult:Function = null, onFault:Function = null):void;
  }
}