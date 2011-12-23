package it.ht.rcs.console.agent.rest
{
  import it.ht.rcs.console.agent.model.Agent;
  import it.ht.rcs.console.operation.model.Operation;
  import it.ht.rcs.console.target.model.Target;

  public interface IDBAgent
  {
    function all(onResult:Function=null, onFault:Function=null):void;
    
    function show(id:String, onResult:Function=null, onFault:Function=null):void;
    
    function create(params:Object, operation:Operation, target:Target, onResult:Function=null, onFault:Function=null):void;
    
    function update(agent:Agent, property:Object, onResult:Function=null, onFault:Function=null):void;
    
    function destroy(id:String, onResult:Function=null, onFault:Function=null):void;
    
    function add_config(agent:Agent, config: String, onResult:Function=null, onFault:Function=null):void;
    
    function del_config(agent:Agent, config_id: String, onResult:Function=null, onFault:Function=null):void;
  }
  
}