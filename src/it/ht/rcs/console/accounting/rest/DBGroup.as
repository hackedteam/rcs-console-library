/**
 * This is a generated sub-class of _DBGroup.as and is intended for behavior
 * customization.  This class is only generated when there is no file already present
 * at its target location.  Thus custom behavior that you add here will survive regeneration
 * of the super-class. 
 **/
 
package it.ht.rcs.console.accounting.rest
{
  
  
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.accounting.model.Group;
  import it.ht.rcs.console.accounting.model.User;
  import it.ht.rcs.console.operation.model.Operation;
  
  import mx.rpc.CallResponder;

public class DBGroup extends _Super_DBGroup implements IDBGroup
{
    /**
     * Override super.init() to provide any initialization customization if needed.
     */
    protected override function preInitializeService():void
    {
        super.preInitializeService();
        // Initialization customization goes here
    }
           
    public function DBGroup(host:String)
    {
      super();
      _serviceControl.baseURL = host;
    }
    
    public function add_user(group:Group, user:User, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = add_user_(JSON.stringify( {_id: group._id, user: {_id: user._id}} )); 
    }
    
    public function alert(group:Group, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      if (group != null) 
        resp.token = alert_(JSON.stringify( {_id: group._id} ));
      else
        resp.token = alert_(JSON.stringify( {_id: null} ));
    }
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = all_(); 
    }
    
    public function create(params:Object, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = create_(JSON.stringify(params));
    }
    
    public function del_user(group:Group, user:User, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = del_user_(JSON.stringify( {_id: group._id, user: {_id: user._id}} ));
    }
    
    public function destroy(group:Group, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = destroy_(JSON.stringify({_id: group._id}))
    }
    
    public function show(id:String, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = show_(id)
    }
    
    public function update(group:Group, property:Object, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      property['_id'] = group._id;
      resp.token = update_(JSON.stringify(property));
    }
    
    public function add_operation(group:Group, op:Operation, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = add_operation_(JSON.stringify( {_id: group._id, operation: {_id: op._id}} )); 
    }
    
    public function del_operation(group:Group, op:Operation, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = del_operation_(JSON.stringify( {_id: group._id, operation: {_id: op._id}} ));
    }
    
}

}
