package it.ht.rcs.console.network.rest
{
  import it.ht.rcs.console.network.model.Proxy;
  import it.ht.rcs.console.network.model.ProxyRule;

  public interface IDBProxy
  {
    function all(onResult:Function = null, onFault:Function = null):void;
    
    function show(id:String, onResult:Function = null, onFault:Function = null):void;
    
    function create(params:Object, onResult:Function = null, onFault:Function = null):void;
    
    function update(proxy:Proxy, property:Object, onResult:Function = null, onFault:Function = null):void;
    
    function destroy(id:String, onResult:Function = null, onFault:Function = null):void;
    
    function add_rule(rule:ProxyRule, proxy_id:String, onResult:Function = null, onFault:Function = null):void;
    
    function del_rule(proxy_id:String, rule_id:String, onResult:Function = null, onFault:Function = null):void;
  }
}