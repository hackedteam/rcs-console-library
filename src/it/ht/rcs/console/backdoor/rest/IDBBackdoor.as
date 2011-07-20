package it.ht.rcs.console.backdoor.rest
{
  import it.ht.rcs.console.backdoor.model.Backdoor;
  import it.ht.rcs.console.operation.model.Operation;
  import it.ht.rcs.console.target.model.Target;

  public interface IDBBackdoor
  {
    function all(onResult:Function = null, onFault:Function = null):void;
    
    function show(id:String, onResult:Function = null, onFault:Function = null):void;
    
    function create(params:Object, operation:Operation, target:Target, onResult:Function = null, onFault:Function = null):void;
    
    function update(backdoor:Backdoor, property:Object, onResult:Function = null, onFault:Function = null):void;
    
    function destroy(id:String, onResult:Function = null, onFault:Function = null):void;
  }
}