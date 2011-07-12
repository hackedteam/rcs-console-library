package it.ht.rcs.console.alert.rest
{
  import it.ht.rcs.console.alert.model.Alert;

  public interface IDBAlert
  {
    function all(onResult:Function = null, onFault:Function = null):void;
    function show(id:String, onResult:Function = null, onFault:Function = null):void;
    function create(params:Object, onResult:Function = null, onFault:Function = null):void;
    function update(alert:Alert, property:Object, onResult:Function = null, onFault:Function = null):void;
    function destroy(alert:Alert, onResult:Function = null, onFault:Function = null):void;
    function counters(onResult:Function = null, onFault:Function = null):void;
  }
}