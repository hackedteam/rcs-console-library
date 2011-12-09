/**
 * This is a generated sub-class of _DBOperation.as and is intended for behavior
 * customization.  This class is only generated when there is no file already present
 * at its target location.  Thus custom behavior that you add here will survive regeneration
 * of the super-class. 
 **/
 
package it.ht.rcs.console.operation.rest
{
  
  
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.operation.model.Operation;
  
  import mx.rpc.CallResponder;

public class DBOperation extends _Super_DBOperation implements IDBOperation
{
  public function DBOperation(host:String)
  {
    super();
    _serviceControl.baseURL = host;
  }
  
  public function all(all:Boolean, onResult:Function=null, onFault:Function=null):void
  {
    var resp:CallResponder = DB.getCallResponder(onResult, onFault);
    resp.token = all_(all);
  }
  
  public function create(params:Object, onResult:Function=null, onFault:Function=null):void
  {
    var resp:CallResponder = DB.getCallResponder(onResult, onFault);
    resp.token = create_(JSON.stringify(params)); 
  }
  
  public function destroy(id:String, onResult:Function=null, onFault:Function=null):void
  {
    var resp:CallResponder = DB.getCallResponder(onResult, onFault);
    resp.token = destroy_(id);
  }
  
  public function show(id:String, onResult:Function=null, onFault:Function=null):void
  {
    var resp:CallResponder = DB.getCallResponder(onResult, onFault);
    resp.token = show_(id);
  }
  
  public function update(operation:Operation, property:Object, onResult:Function=null, onFault:Function=null):void
  {
    var resp:CallResponder = DB.getCallResponder(onResult, onFault);
    property['_id'] = operation._id;
    resp.token = update_(JSON.stringify(property));
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
