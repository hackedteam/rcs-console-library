/**
 * This is a generated sub-class of _DBForwarder.as and is intended for behavior
 * customization.  This class is only generated when there is no file already present
 * at its target location.  Thus custom behavior that you add here will survive regeneration
 * of the super-class. 
 **/
 
package it.ht.rcs.console.forwarder.rest
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.forwarder.model.Forwarder;
  
  import mx.rpc.CallResponder;

public class DBForwarder extends _Super_DBForwarder implements IDBForwarder
{
    /**
     * Override super.init() to provide any initialization customization if needed.
     */
    protected override function preInitializeService():void
    {
        super.preInitializeService();
        // Initialization customization goes here
    }
        
    public function DBForwarder(host:String)
    { 
      super();
      _serviceControl.baseURL = host;
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
    
    public function destroy(f:Forwarder, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = destroy_(f._id);
    }
    
    public function update(f:Forwarder, property:Object, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      property['_id'] = f._id;
      resp.token = update_(JSON.stringify(property));
    }
}

}
