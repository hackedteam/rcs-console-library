package it.ht.rcs.console.alert.rest
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.alert.model.Alert;
  import it.ht.rcs.console.alert.model.AlertLog;
  
  import mx.rpc.CallResponder;
  
  public class DBAlert extends _Super_DBAlert implements IDBAlert
  {
    
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
      resp.token = create_(JSON.stringify(params));
    }
    
    public function destroy(alert:Alert, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = destroy_(JSON.stringify({_id: alert._id}))
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
      resp.token = update_(JSON.stringify(property));
    }
    
    public function counters(onResult:Function = null, onFault:Function = null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = counters_();
    }
    
    public function destroy_log(alert:Alert, log:AlertLog, onResult:Function = null, onFault:Function = null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = destroy_log_(JSON.stringify({_id: alert._id, log: {_id: log._id}}))
    }
    
    public function destroy_all_logs(alert:Alert, onResult:Function = null, onFault:Function = null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = destroy_all_logs_(JSON.stringify({_id: alert._id}))
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