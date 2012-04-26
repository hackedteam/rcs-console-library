package it.ht.rcs.console.connector.rest
{
  import it.ht.rcs.console.connector.model.Connector;

  public interface IDBConnector
  {
    function all(onResult:Function = null, onFault:Function = null):void;
    function create(params:Object, onResult:Function = null, onFault:Function = null):void;
    function update(f:Connector, property:Object, onResult:Function = null, onFault:Function = null):void;
    function destroy(f:Connector, onResult:Function = null, onFault:Function = null):void;
  }
}