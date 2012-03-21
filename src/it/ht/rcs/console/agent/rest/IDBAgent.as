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
    
    function upgrade(agent:Agent, onResult:Function=null, onFault:Function=null):void;
    
    function destroy(id:String, permanent:Boolean=false, onResult:Function=null, onFault:Function=null):void;
    
    function add_config(agent:Agent, config: String, onResult:Function=null, onFault:Function=null):void;
    
    function del_config(agent:Agent, config_id: String, onResult:Function=null, onFault:Function=null):void;
    
    
    function downloads(agent:Agent, onResult:Function=null, onFault:Function=null):void;
    
    function create_download(agent:Agent, path:String, onResult:Function=null, onFault:Function=null):void;
    
    function uploads(agent:Agent, onResult:Function=null, onFault:Function=null):void;
    
    function create_upload(agent:Agent, filename:String, grid:String, onResult:Function=null, onFault:Function=null):void;
  }
  
}