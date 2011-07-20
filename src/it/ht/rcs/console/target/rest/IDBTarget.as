package it.ht.rcs.console.target.rest
{
  import it.ht.rcs.console.operation.model.Operation;
  import it.ht.rcs.console.target.model.Target;

  public interface IDBTarget
  {
    function all(onResult:Function = null, onFault:Function = null):void;
    
    function show(id:String, onResult:Function = null, onFault:Function = null):void;
    
    function create(params:Object, operation:Operation, onResult:Function = null, onFault:Function = null):void;
    
    function update(target:Target, property:Object, onResult:Function = null, onFault:Function = null):void;
    
    function destroy(id:String, onResult:Function = null, onFault:Function = null):void;
  }
}