package it.ht.rcs.console.network.rest
{
  import it.ht.rcs.console.network.model.Collector;

  public interface IDBNetwork
  {
    function all(onResult:Function = null, onFault:Function = null):void;
    
    function show(id:String, onResult:Function = null, onFault:Function = null):void;
    
    function create(collector:Collector, onResult:Function = null, onFault:Function = null):void;
    
    function update(collector:Collector, property:Object, onResult:Function = null, onFault:Function = null):void;
    
    function destroy(id:String, onResult:Function = null, onFault:Function = null):void;
  }
}