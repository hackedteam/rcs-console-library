package it.ht.rcs.console.network.rest
{
  import it.ht.rcs.console.network.model.Collector;
  import it.ht.rcs.console.network.model.CollectorLog;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class DBCollectorDemo implements IDBCollector
  {
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      var items:ArrayCollection;
      var a:Array = [
        new Collector({name:    'Collector node 1',  _id: 'c1',  prev: [null],  next: ['a0'],  address: '192.168.1.101', type:  'local', port:    0, _mid:  1, configured:  true, desc: 'Desc 192.168.1.101', instance: '525C4E89CDE6244A444EA4D23F482ED3RSS', poll: false, version: 2011092101}),
        new Collector({name:    'Collector node 2',  _id: 'c2',  prev: [null],  next: [null],  address: '192.168.1.102', type:  'local', port:    0, _mid:  9, configured:  true, desc: 'Desc 192.168.1.102', instance: 'dbca550f1174f3028308344c4d58545dRSS', poll: false, version: 2011092101}),
        new Collector({name:    'Collector node 3',  _id: 'c3',  prev: [null],  next: ['a1'],  address: '192.168.1.103', type:  'local', port:    0, _mid: 15, configured:  true, desc: 'Desc 192.168.1.103', instance: '0C84BF20AA9B0C54F3AA2CB87AC8C6BARSS', poll: false, version: 2011092101}),
        new Collector({name:    'Collector node 4',  _id: 'c4',  prev: [null],  next: [null],  address: '192.168.1.104', type:  'local', port:    0, _mid: 16, configured:  true, desc: 'Desc 192.168.1.104', instance: 'b943f1f6151bda08b82adfb0b0d21ce6RSS', poll: false, version: 2011092101}),
        new Collector({name:    'Collector node 5',  _id: 'c5',  prev: [null],  next: ['a3'],  address: '192.168.1.105', type:  'local', port:    0, _mid: 17, configured:  true, desc: 'Desc 192.168.1.105', instance: 'c02acdd7e9432d784e867a17f6a5f13cRSS', poll: false, version: 2011092101}),
        new Collector({name:    'Collector node 6',  _id: 'c6',  prev: [null],  next: [null],  address: '192.168.1.106', type:  'local', port:    0, _mid: 18, configured:  true, desc: 'Desc 192.168.1.106', instance: '1252deed693ce0559eaf525558410f3dRSS', poll: false, version: 2011092101}),
        new Collector({name:    'Collector node 7',  _id: 'c7',  prev: [null],  next: [null],  address: '192.168.1.107', type:  'local', port:    0, _mid: 22, configured:  true, desc: 'Desc 192.168.1.107', instance: '6ad98ea6cb3338e48ed5778c6bf8f97fRSS', poll: false, version: 2011092101}),
        new Collector({name: 'Prod Public Address',  _id: 'a0',  prev: ['c1'],  next: [null],  address: '192.168.2.170', type: 'remote', port: 4444, _mid:  3, configured:  true, desc: 'Desc 192.168.1.170', instance:                                    '', poll: true, version: 2011092101}),
        new Collector({name:        'Anonymizer 1',  _id: 'a1',  prev: ['c3'],  next: ['a2'],  address: '192.168.2.171', type: 'remote', port: 4444, _mid: 19, configured:  true, desc: 'Desc 192.168.1.171', instance:                                    '', poll: true, version: 2011092101}),
        new Collector({name:        'Anonymizer 2',  _id: 'a2',  prev: ['a1'],  next: [null],  address: '192.168.2.172', type: 'remote', port: 4444, _mid: 20, configured:  true, desc: 'Desc 192.168.1.172', instance:                                    '', poll: true, version: 2011092101}),
        new Collector({name:        'Anonymizer 3',  _id: 'a3',  prev: ['c5'],  next: [null],  address: '192.168.2.173', type: 'remote', port: 4444, _mid: 21, configured:  true, desc: 'Desc 192.168.1.173', instance:                                    '', poll: true, version: 2011092101}),
        new Collector({name:        'Anonymizer 4',  _id: 'a4',  prev: [null],  next: [null],  address: '192.168.2.174', type: 'remote', port: 4444, _mid: 23, configured:  true, desc: 'Desc 192.168.1.174', instance:                                    '', poll: false, version: 2011092101})];
      items = new ArrayCollection(a);
      
      var event:ResultEvent = new ResultEvent('collector.all', false, true, items);
      if (onResult != null)
        onResult(event);
    }
    
    public function show(id:String, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function create(params:Object, onResult:Function=null, onFault:Function=null):void
    {
      var collector:Collector = new Collector(params);
      
      var event:ResultEvent = new ResultEvent('collector.create', false, true, collector);
      if (onResult != null)
        onResult(event);
    }
    
    public function update(collector:Collector, property:Object, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function destroy(id:String, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function logs(id:String, onResult:Function=null, onFault:Function=null):void
    {
      
      var logs:ArrayCollection = new ArrayCollection();
      logs.addItem(new CollectorLog({time: '2011-01-01 12:00:00', type: 'INFO', info: 'Started'}));
      logs.addItem(new CollectorLog({time: '2011-01-01 13:00:00', type: 'INFO', info: 'Forwarwed sync for 1.2.3.4'}));
      logs.addItem(new CollectorLog({time: '2011-01-01 14:00:00', type: 'WARN', info: 'Forwarwed sync for 5.6.7.8'}));
      
      var event:ResultEvent = new ResultEvent('collector.logs', false, true, logs);
      if (onResult != null)
        onResult(event);
    }
    
    public function del_logs(id:String, onResult:Function=null, onFault:Function=null):void
    {
      var event:ResultEvent = new ResultEvent('collector.del_logs', false, true);
      if (onResult != null)
        onResult(event);
    }
    
  }
  
}