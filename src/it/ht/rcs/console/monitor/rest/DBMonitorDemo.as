package it.ht.rcs.console.monitor.rest
{
  import com.adobe.serialization.json.JSON;
  
  import it.ht.rcs.console.monitor.model.StatusCounters;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;

  public class DBMonitorDemo implements IDBMonitor
  {
    public function DBMonitorDemo()
    {
    }
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      var items:ArrayCollection = new ArrayCollection();
      items.addItem({_id: '1', name: 'Collector', status:'0', address: '1.2.3.4', info: 'status for component...', time: new Date().time / 1000, pcpu:15, cpu:30, disk:10});
      items.addItem({_id: '2', name: 'Database', status:'1', address: '127.0.0.1', info: 'pay attention', time: new Date().time / 1000, pcpu:15, cpu:70, disk:20});
      items.addItem({_id: '3', name: 'Collector', status:'2', address: '5.6.7.8', info: 'houston we have a problem!', time: new Date().time / 1000, pcpu:70, cpu:90, disk:70});
      var event:ResultEvent = new ResultEvent("monitor.index", false, true, items);
      if (onResult != null) 
        onResult(event);
    }
    
    public function counters(onResult:Function=null, onFault:Function=null):void
    {
      var counters:StatusCounters = new StatusCounters({"ok":1, "warn":1, "error":1});
      var event:ResultEvent = new ResultEvent("monitor.counters", false, true, JSON.encode(counters));
      if (onResult != null) 
        onResult(event);   
    }
    
    public function destroy(id:String, onResult:Function=null, onFault:Function=null):void
    {
      /* do nothing */
    }
  }
}