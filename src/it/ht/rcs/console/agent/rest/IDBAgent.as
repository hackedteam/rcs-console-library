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
    
    function destroy(id:String, permanent:Boolean=false, onResult:Function=null, onFault:Function=null):void;

    function upgrade(agent:Agent, onResult:Function=null, onFault:Function=null):void;
    
    function add_config(agent:Agent, config: String, onResult:Function=null, onFault:Function=null):void;
    
    function del_config(agent:Agent, config_id: String, onResult:Function=null, onFault:Function=null):void;
    
    function update_config(agent:Agent, config_id: String, desc:String, onResult:Function=null, onFault:Function=null):void;
    
    function downloads(agent:Agent, onResult:Function=null, onFault:Function=null):void;
    
    function create_download(agentId:String, path:String, onResult:Function=null, onFault:Function=null):void;
    
    function destroy_download(agent:Agent, downloadId:String, onResult:Function=null, onFault:Function=null):void;
    
    function destroy_upload(agent:Agent, uploadId:String, onResult:Function=null, onFault:Function=null):void;
    
    function uploads(agent:Agent, onResult:Function=null, onFault:Function=null):void;
    
    function create_upload(agent:Agent, filename:String, grid:String, onResult:Function=null, onFault:Function=null):void;
   
    function filesystem(agentId:String, path:String, depth:int, onResult:Function=null, onFault:Function=null):void;
    
    function move(agentId:String, targetId:String, onResult:Function=null, onFault:Function=null):void;
    
    function purge(agentId:String, time:Number, size:Number, onResult:Function=null, onFault:Function=null):void
      
    function activate_ghost(agent:Agent, sync:Array, onResult:Function=null, onFault:Function=null):void
      
    function filesystems(agent:Agent, onResult:Function=null, onFault:Function=null):void;
      
    function destroy_filesystem(agent:Agent, filesystemId:String, onResult:Function=null, onFault:Function=null):void;
    
    function create_command(agent:Agent, command:String, onResult:Function=null, onFault:Function=null):void;
    
    function commands(agent:Agent, onResult:Function=null, onFault:Function=null):void;
    
    function destroy_command(agent:Agent, commandId:String, onResult:Function=null, onFault:Function=null):void;
    
    function destroy_factory(id:String, permanent:Boolean=false, onResult:Function=null, onFault:Function=null):void;
    
    function can_upgrade(agent:Agent, onResult:Function=null, onFault:Function=null):void;

  }
  
}