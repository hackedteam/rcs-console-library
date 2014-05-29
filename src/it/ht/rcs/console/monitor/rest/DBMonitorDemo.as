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
          _id: '21',
          address: '127.0.0.1',
          cpu:70,
          disk:20,
          info: '',
          name: 'Database',
          pcpu:15,
          status:'0',
          time: new Date().time / 1000,
          type: 'db'
        }));
      
      items.addItem(new Status(
        {
          _id: '22',
          address: '127.0.0.1',
          cpu:70,
          disk:20,
          info: '',
          name: 'Connector',
          pcpu:15,
          status:'0',
          time: new Date().time / 1000,
          type: 'connector'
        }));
      
      items.addItem(new Status(
        {
          _id: '23',
          address: '127.0.0.1',
          cpu:70,
          disk:20,
          info: '',
          name: 'Master',
          pcpu:15,
          status:'0',
          time: new Date().time / 1000,
          type: 'archive'
        }));
      
      items.addItem(new Status(
        {
          _id: '23',
          address: '127.0.0.1',
          cpu:70,
          disk:20,
          info: '',
          name: 'Satellite',
          pcpu:15,
          status:'0',
          time: new Date().time / 1000,
          type: 'satellite'
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
      
      items.addItem(new Status(
        {
          _id: '5',
          address: '172.20.20.1',
          cpu:90,
          disk:70,
          info: '',
          name: 'Anonymizer',
          pcpu:70,
          status:'0',
          time: new Date().time / 1000,
          type: 'anon'
        }));
      
      items.addItem(new Status(
        {
          _id: '5',
          address: '172.20.20.1',
          cpu:90,
          disk:70,
          info: '',
          name: 'Ocr',
          pcpu:70,
          status:'0',
          time: new Date().time / 1000,
          type: 'ocr'
        }));
      
      items.addItem(new Status(
        {
          _id: '5',
          address: '172.20.20.1',
          cpu:90,
          disk:70,
          info: '',
          name: 'Intelligence',
          pcpu:70,
          status:'0',
          time: new Date().time / 1000,
          type: 'intelligence'
        }));
      
      items.addItem(new Status(
        {
          _id: '5',
          address: '172.20.20.1',
          cpu:90,
          disk:70,
          info: '',
          name: 'Money',
          pcpu:70,
          status:'0',
          time: new Date().time / 1000,
          type: 'money'
        }));
      
      
      items.addItem(new Status(
        {
          _id: '6',
          address: '172.20.20.2',
          cpu:90,
          disk:70,
          info: '',
          name: 'Anonymizer',
          pcpu:70,
          status:'0',
          time: new Date().time / 1000,
          type: 'anon'
        }));
      
      items.addItem(new Status(
        {
          _id: '7',
          address: '172.20.20.3',
          cpu:90,
          disk:70,
          info: '',
          name: 'Anonymizer',
          pcpu:70,
          status:'0',
          time: new Date().time / 1000,
          type: 'anon'
        }));
      
      items.addItem(new Status(
        {
          _id: '8',
          address: '172.20.20.4',
          cpu:90,
          disk:70,
          info: '',
          name: 'Anonymizer',
          pcpu:70,
          status:'0',
          time: new Date().time / 1000,
          type: 'anon'
        }));
      
      items.addItem(new Status(
        {
          _id: '9',
          address: '172.20.20.5',
          cpu:90,
          disk:70,
          info: '',
          name: 'Anonymizer',
          pcpu:70,
          status:'0',
          time: new Date().time / 1000,
          type: 'anon'
        }));
      
      items.addItem(new Status(
        {
          _id: '10',
          address: '172.20.20.6',
          cpu:90,
          disk:70,
          info: 'Pay attention',
          name: 'Anonymizer',
          pcpu:70,
          status:'1',
          time: new Date().time / 1000,
          type: 'anon'
        }));
      
      items.addItem(new Status(
        {
          _id: '11',
          address: '172.20.20.7',
          cpu:90,
          disk:70,
          info: '',
          name: 'Anonymizer',
          pcpu:70,
          status:'0',
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