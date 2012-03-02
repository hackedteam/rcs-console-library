package it.ht.rcs.console.forwarder.rest
{
  import it.ht.rcs.console.forwarder.model.Forwarder;

  public interface IDBForwarder
  {
    function all(onResult:Function = null, onFault:Function = null):void;
    function create(params:Object, onResult:Function = null, onFault:Function = null):void;
    function update(f:Forwarder, property:Object, onResult:Function = null, onFault:Function = null):void;
    function destroy(f:Forwarder, onResult:Function = null, onFault:Function = null):void;
  }
}