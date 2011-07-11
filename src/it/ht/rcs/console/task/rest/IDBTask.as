package it.ht.rcs.console.task.rest
{
  import it.ht.rcs.console.task.model.Task;

  public interface IDBTask
  {
    function create(params:Object, onResult:Function = null, onFault:Function = null):void;
    function destroy(id: String, onResult:Function = null, onFault:Function = null):void;
    function all(onResult:Function = null, onFault:Function = null):void;
    function show(id: String, onResult:Function = null, onFault:Function = null):void;
  }
}