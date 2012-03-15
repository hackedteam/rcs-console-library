package it.ht.rcs.console.monitor.rest
{
  import it.ht.rcs.console.monitor.model.Status;
  import it.ht.rcs.console.monitor.model.StatusCounters;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;

  public class DBMonitorDemo implements IDBMonitor
  {
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      var items:ArrayCollection = new ArrayCollection();
      items.addItem(new Status(
        {
          _id: '1',
          address: '1.2.3.4',
          cpu:30,
          disk:10,
          info: 'Status for component...',
          name: 'Collector',
          pcpu:15,
          status:'0',
          time: new Date().time / 1000,
          type: 'collector'
        }));
      
      items.addItem(new Status(
        {
          _id: '2',
          address: '127.0.0.1',
          cpu:70,
          disk:20,
          info: 'Pay attention',
          name: 'Database',
          pcpu:15,
          status:'1',
          time: new Date().time / 1000,
          type: 'db'
        }));
      
      items.addItem(new Status(
        {
          _id: '3',
          address: '5.6.7.8',
          cpu:90,
          disk:70,
          info: 'Houston we have a problem!',
          name: 'Network Controller',
          pcpu:85,
          status:'2',
          time: new Date().time / 1000,
          type: 'nc'
        }));
      
      items.addItem(new Status(
        {
          _id: '4',
          address: '9.10.11.12',
          cpu:90,
          disk:70,
          info: 'Houston we have a problem!',
          name: 'Anonymizer',
          pcpu:70,
          status:'2',
          time: new Date().time / 1000,
          type: 'anon'
        }));
      
      if (onResult != null) 
        onResult(new ResultEvent('monitor.index', false, true, items));
    }
    
    public function counters(onResult:Function=null, onFault:Function=null):void
    {
      var counters:StatusCounters = new StatusCounters(
        {
          error: 2,
          ok: 1,
          warn: 1
        });
      
      if (onResult != null) 
        onResult(new ResultEvent('monitor.counters', false, true, counters));
    }
    
    public function destroy(id:String, onResult:Function=null, onFault:Function=null):void
    {
    }
    
  }
  
}