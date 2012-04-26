package it.ht.rcs.console.search.rest
{
  import it.ht.rcs.console.DB;
  
  import mx.rpc.CallResponder;

  public class DBSearch extends _Super_DBSearch implements IDBSearch
  {
    
    public function DBSearch(host:String)
    {
      super();
      _serviceControl.baseURL = host;
    }
    
    public function all(filter:Object, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = all_(JSON.stringify(filter));
    }
    
    public function show(id:String, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = show_(id);
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