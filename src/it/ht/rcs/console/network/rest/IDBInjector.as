package it.ht.rcs.console.network.rest
{
  import it.ht.rcs.console.network.model.Injector;

  public interface IDBInjector
  {
    function all(onResult:Function = null, onFault:Function = null):void;
    function show(id:String, onResult:Function = null, onFault:Function = null):void;
    function create(params:Object, onResult:Function = null, onFault:Function = null):void;
    function update(injector:Injector, property:Object, onResult:Function = null, onFault:Function = null):void;
    function upgrade(id:String, onResult:Function = null, onFault:Function = null):void;
    function destroy(id:String, onResult:Function = null, onFault:Function = null):void;
    function add_rule(injector_id:String, params:Object, onResult:Function = null, onFault:Function = null):void;
    function del_rule(injector_id:String, rule_id:String, onResult:Function = null, onFault:Function = null):void;
    function update_rule(injector_id:String, params:Object, onResult:Function = null, onFault:Function = null):void;
    function logs(id:String, onResult:Function = null, onFault:Function = null):void;
    function del_logs(id:String, onResult:Function = null, onFault:Function = null):void;
  }
}