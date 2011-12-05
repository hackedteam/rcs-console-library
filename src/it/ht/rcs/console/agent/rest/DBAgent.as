/**
 * This is a generated sub-class of _DBAgent.as and is intended for behavior
 * customization.  This class is only generated when there is no file already present
 * at its target location.  Thus custom behavior that you add here will survive regeneration
 * of the super-class. 
 **/
 
package it.ht.rcs.console.agent.rest
{
  
  
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.agent.model.Agent;
  import it.ht.rcs.console.agent.rest.IDBAgent;
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
      params['target'] = target._id;
      resp.token = create_(JSON.stringify(params)); 
    }
    
    public function destroy(id:String, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = destroy_(id);
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