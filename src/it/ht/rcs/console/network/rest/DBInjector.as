/**
 * This is a generated sub-class of _DBInjector.as and is intended for behavior
 * customization.  This class is only generated when there is no file already present
 * at its target location.  Thus custom behavior that you add here will survive regeneration
 * of the super-class. 
 **/
 
package it.ht.rcs.console.network.rest
{
  
  
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.network.model.Injector;

  import mx.rpc.CallResponder;
  
  public class DBInjector extends _Super_DBInjector implements IDBInjector
  {
    
    public function DBInjector(host:String)
    {
      super();
      _serviceControl.baseURL = host;
    }
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = all_();
    }
    
    public function show(id:String, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = show_(id);
    }
    
    public function create(params:Object, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = create_(JSON.stringify(params));
    }
    
    public function update(injector:Injector, property:Object, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      property['_id'] = injector._id;
      resp.token = update_(JSON.stringify(property));
    }
    
    public function destroy(id:String, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = destroy_(JSON.stringify( { _id: id } ));
    }
    
    public function add_rule(injector_id:String, params:Object, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = add_rule_(JSON.stringify( { _id: injector_id, rule: params } ));
    }
    
    public function del_rule(injector_id:String, rule_id:String, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = del_rule_(JSON.stringify( { _id: injector_id, rule: { _id: rule_id } } ));
    }
    
    public function update_rule(injector_id:String, params:Object, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = update_rule_(JSON.stringify( { _id: injector_id, rule: params } ));
    }
    
    public function logs(id:String, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = logs_(id);
    }
    
    public function del_logs(id:String, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = del_logs_(JSON.stringify( { _id: id} ));
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