package it.ht.rcs.console.network.rest
{
  import it.ht.rcs.console.network.model.Collector;

  public interface IDBCollector
  {
    function all(onResult:Function=null, onFault:Function=null):void;
    
    function show(id:String, onResult:Function=null, onFault:Function=null):void;
    
    function create(params:Object, onResult:Function=null, onFault:Function=null):void;
    
    function update(collector:Collector, property:Object, onResult:Function=null, onFault:Function=null):void;

    function upgrade(id:String, onResult:Function=null, onFault:Function=null):void;
    
    function destroy(id:String, onResult:Function=null, onFault:Function=null):void;
    
    function logs(id:String, onResult:Function=null, onFault:Function=null):void;
    
    function del_logs(id:String, onResult:Function=null, onFault:Function=null):void;
    
    function get_public(onResult:Function=null, onFault:Function=null):void;
    
    function custom_relay(onResult:Function=null, onFault:Function=null):void;
    
    function public_destroy(id:String, onResult:Function=null, onFault:Function=null):void;
    
  }
  
}