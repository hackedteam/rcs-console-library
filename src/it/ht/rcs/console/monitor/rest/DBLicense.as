/**
 * This is a generated sub-class of _DBLicense.as and is intended for behavior
 * customization.  This class is only generated when there is no file already present
 * at its target location.  Thus custom behavior that you add here will survive regeneration
 * of the super-class.
 **/

package it.ht.rcs.console.monitor.rest
{
  import it.ht.rcs.console.DB;

  import mx.rpc.CallResponder;

  public class DBLicense extends _Super_DBLicense implements IDBLicense
  {
    /**
     * Override super.init() to provide any initialization customization if needed.
     */
    protected override function preInitializeService():void
    {
      super.preInitializeService();
      // Initialization customization goes here
    }

    public function DBLicense(host:String)
    {
      super();
      _serviceControl.baseURL = "https://" + host + ":4444/";
    }

    public function count(onResult:Function = null, onFault:Function = null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = count_();
    }

    public function limit(onResult:Function = null, onFault:Function = null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = limit_();
    }


  }

}
