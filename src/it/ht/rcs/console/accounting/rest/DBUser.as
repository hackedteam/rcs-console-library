/**
 * This is a generated sub-class of _DBUser.as and is intended for behavior
 * customization.  This class is only generated when there is no file already present
 * at its target location.  Thus custom behavior that you add here will survive regeneration
 * of the super-class. 
 **/
 
package it.ht.rcs.console.accounting.rest
{
  import com.adobe.serialization.json.JSON;
  
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.accounting.model.User;
  
  import mx.rpc.CallResponder;

public class DBUser extends _Super_DBUser implements IDBUser
{
    /**
     * Override super.init() to provide any initialization customization if needed.
     */
    protected override function preInitializeService():void
    {
        super.preInitializeService();
        // Initialization customization goes here
    }
         
    public function DBUser(host:String)
    {
      super();
      _serviceControl.baseURL = "https://" + host + ":4444/";
    }
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = all_();
    }
    
    public function create(user:User, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = create_(JSON.encode(user.toHash()));
    }
    
    public function destroy(user:User, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = destroy_(JSON.encode({_id: user._id}))
    }
    
    public function show(id:String, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = show_(id)
    }
    
    public function update(user:User, property:Object, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      property['_id'] = user._id;
      resp.token = update_(JSON.encode(property));
    }
    
    
}

}
