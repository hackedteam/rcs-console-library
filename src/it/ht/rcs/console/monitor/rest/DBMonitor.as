/**
 * This is a generated sub-class of _DBMonitor.as and is intended for behavior
 * customization.  This class is only generated when there is no file already present
 * at its target location.  Thus custom behavior that you add here will survive regeneration
 * of the super-class.
 **/

package it.ht.rcs.console.monitor.rest
{
  import com.adobe.serialization.json.JSON;
  import it.ht.rcs.console.DB;
  import mx.rpc.CallResponder;

  public class DBMonitor extends _Super_DBMonitor implements IDBMonitor
  {
    /**
     * Override super.init() to provide any initialization customization if needed.
     */
    protected override function preInitializeService():void
    {
      super.preInitializeService();
      // Initialization customization goes here
    }

    public function DBMonitor(host:String)
    {
      super();
      _serviceControl.baseURL = "https://" + host + ":4444/";
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
      resp.token = destroy_(JSON.encode({_id: id}));
    }

  }

}
