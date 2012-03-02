package it.ht.rcs.console.monitor.rest
{

  public interface IDBMonitor
  {
    function all(onResult:Function=null, onFault:Function=null):void;
    
    function counters(onResult:Function=null, onFault:Function=null):void;
    
    function destroy(id:String, onResult:Function=null, onFault:Function=null):void;
  }
  
}