package it.ht.rcs.console.monitor.rest
{
  import it.ht.rcs.console.DB;
  import mx.rpc.CallResponder;

  public class DBMonitor extends _Super_DBMonitor implements IDBMonitor
  {
    
    public function DBMonitor(host:String)
    {
      super();
      _serviceControl.baseURL = host;
    }

    public function all(onResult:Function = null, onFault:Function = null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = all_();
    }

    public function counters(onResult:Function = null, onFault:Function = null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = counters_();
    }

    public function destroy(id:String, onResult:Function = null, onFault:Function = null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = destroy_(JSON.stringify({_id: id}));
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