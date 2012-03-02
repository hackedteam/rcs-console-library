package it.ht.rcs.console.accounting.rest
{
  import it.ht.rcs.console.DB;
  
  import mx.rpc.CallResponder;

  public class DBSession extends _Super_DBSession implements IDBSession
  {
    
    public function DBSession(host:String) {
      super();
      _serviceControl.baseURL = host;
    }
    
    public function login(credentials:Object, onResult:Function, onFault:Function):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = login_(JSON.stringify(credentials));  
    }
    
    public function logout(onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = logout_(); 
    }
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = all_(); 
    }
    
    public function destroy(cookie:String, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = destroy_(JSON.stringify({_id: cookie})); 
    }
    
    /**
     * Override super.init() to provide any initialization customization if needed.
     */
    protected override function preInitializeService():void
    {
      super.preInitializeService();
    }
    
  }

}