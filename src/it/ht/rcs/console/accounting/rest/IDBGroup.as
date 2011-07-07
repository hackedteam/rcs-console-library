package it.ht.rcs.console.accounting.rest
{
  import it.ht.rcs.console.accounting.model.Group;
  import it.ht.rcs.console.accounting.model.User;

  public interface IDBGroup
  {
    function all(onResult:Function = null, onFault:Function = null):void;
    function show(id:String, onResult:Function = null, onFault:Function = null):void;
    function create(params:Object, onResult:Function = null, onFault:Function = null):void;
    function update(group:Group, property:Object, onResult:Function = null, onFault:Function = null):void;
    function destroy(group:Group, onResult:Function = null, onFault:Function = null):void;
    function add_user(group:Group, user:User, onResult:Function = null, onFault:Function = null):void;
    function del_user(group:Group, user:User, onResult:Function = null, onFault:Function = null):void;
    function alert(group:Group, onResult:Function = null, onFault:Function = null):void;
  }
}