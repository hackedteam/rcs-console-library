package it.ht.rcs.console.operation.rest
{ 
  import it.ht.rcs.console.operation.model.Operation;
  
  public interface IDBOperation
  {
    function all(params: Object, onResult:Function = null, onFault:Function = null):void;
    
    function show(id:String, onResult:Function = null, onFault:Function = null):void;
    
    function create(params:Object, onResult:Function = null, onFault:Function = null):void;
    
    function update(operation:Operation, property:Object, onResult:Function = null, onFault:Function = null):void;
    
    function destroy(id:String, onResult:Function = null, onFault:Function = null):void;
  }
}
