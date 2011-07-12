/**
 * This is a generated sub-class of _DBAlert.as and is intended for behavior
 * customization.  This class is only generated when there is no file already present
 * at its target location.  Thus custom behavior that you add here will survive regeneration
 * of the super-class. 
 **/
 
package it.ht.rcs.console.alert.rest
{
  import com.adobe.serialization.json.JSON;
  
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.alert.model.Alert;
  
  import mx.rpc.CallResponder;

public class DBAlert extends _Super_DBAlert implements IDBAlert
{
    /**
     * Override super.init() to provide any initialization customization if needed.
     */
    protected override function preInitializeService():void
    {
        super.preInitializeService();
        // Initialization customization goes here
    }
         
    public function DBAlert(host:String)
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
      resp.token = create_(JSON.encode(params));
    }
    
    public function destroy(alert:Alert, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = destroy_(JSON.encode({_id: alert._id}))
    }
    
    public function show(id:String, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = show_(id)
    }
    
    public function update(alert:Alert, property:Object, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      property['_id'] = alert._id;
      resp.token = update_(JSON.encode(property));
    }
    
    public function counters(onResult:Function = null, onFault:Function = null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = counters_();
    }
}

}
