package it.ht.rcs.console.accounting.rest
{
  import it.ht.rcs.console.accounting.model.User;

  public interface IDBUser
  {
    function all(onResult:Function = null, onFault:Function = null):void;
    function show(id:String, onResult:Function = null, onFault:Function = null):void;
    function create(params:Object, onResult:Function = null, onFault:Function = null):void;
    function update(user:User, property:Object, onResult:Function = null, onFault:Function = null):void;
    function destroy(user:User, onResult:Function = null, onFault:Function = null):void;
    function add_recent(item:Object, onResult:Function = null, onFault:Function = null):void;
    function message(id:String, text:String):void;
  }
}