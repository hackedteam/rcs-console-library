package it.ht.rcs.console.network.rest
{
  import it.ht.rcs.console.network.model.Collector;
  import it.ht.rcs.console.network.model.NetworkLog;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class DBCollectorDemo implements IDBCollector
  {
    
    public static var collectors:ArrayCollection = new ArrayCollection([
      new Collector({name: 'Collector Milan',    _id: 'c1',  prev: [null],  next: ['a1'],  internal_address: '172.20.20.1', address: '192.168.1.101', type: 'local',  port:    0, _mid:  1, configured:  true, desc: 'Desc 192.168.1.101', instance: 'i1', poll: false, version: 2011092101, good:true}),
      new Collector({name: 'Collector Rome',     _id: 'c2',  prev: [null],  next: [null],  internal_address: '172.20.20.2', address: '192.168.1.102', type: 'local',  port:    0, _mid:  9, configured:  true, desc: 'Desc 192.168.1.102', instance: 'i2', poll: false, version: 2011092101, good:true}),
      new Collector({name: 'Collector Turin',    _id: 'c3',  prev: [null],  next: ['a2'],  internal_address: '172.20.20.3', address: '192.168.1.103', type: 'local',  port:    0, _mid: 15, configured:  true, desc: 'Desc 192.168.1.103', instance: 'i3', poll: false, version: 2011092101, good:true}),
      new Collector({name: 'Collector Venice',   _id: 'c4',  prev: [null],  next: [null],  internal_address: '172.20.20.4', address: '192.168.1.104', type: 'local',  port:    0, _mid: 16, configured:  true, desc: 'Desc 192.168.1.104', instance: 'i4', poll: false, version: 2011092101, good:true}),
      new Collector({name: 'Collector Florence', _id: 'c5',  prev: [null],  next: ['a4'],  internal_address: '172.20.20.5', address: '192.168.1.105', type: 'local',  port:    0, _mid: 17, configured:  true, desc: 'Desc 192.168.1.105', instance: 'i5', poll: false, version: 2011092101, good:true}),
      new Collector({name: 'Collector Naples',   _id: 'c6',  prev: [null],  next: [null],  internal_address: '172.20.20.6', address: '192.168.1.106', type: 'local',  port:    0, _mid: 18, configured:  true, desc: 'Desc 192.168.1.106', instance: 'i6', poll: false, version: 2011092101, good:true}),
      new Collector({name: 'Collector Palermo',  _id: 'c7',  prev: [null],  next: [null],  internal_address: '172.20.20.7', address: '192.168.1.107', type: 'local',  port:    0, _mid: 22, configured:  true, desc: 'Desc 192.168.1.107', instance: 'i7', poll: false, version: 2011092101, good:true}),
      new Collector({name: 'Anon Switzerland',   _id: 'a1',  prev: ['c1'],  next: [null],  internal_address: null,          address: '192.168.2.170', type: 'remote', port: 4444, _mid:  3, configured:  true, desc: 'Desc 192.168.1.170', instance: '',   poll: true,  version: 2011092101, good:true}),
      new Collector({name: 'Anon Germany',       _id: 'a2',  prev: ['c3'],  next: ['a3'],  internal_address: null,          address: '192.168.2.171', type: 'remote', port: 4444, _mid: 19, configured:  true, desc: 'Desc 192.168.1.171', instance: '',   poll: true,  version: 2011092101, good:true}),
      new Collector({name: 'Anon USA',           _id: 'a3',  prev: ['a2'],  next: [null],  internal_address: null,          address: '192.168.2.172', type: 'remote', port: 4444, _mid: 20, configured:  true, desc: 'Desc 192.168.1.172', instance: '',   poll: true,  version: 2011092101, good:true}),
      new Collector({name: 'Anon China',         _id: 'a4',  prev: ['c5'],  next: [null],  internal_address: null,          address: '192.168.2.173', type: 'remote', port: 4444, _mid: 21, configured:  true, desc: 'Desc 192.168.1.173', instance: '',   poll: true,  version: 2011092101, good:true}),
      new Collector({name: 'Anon Sweden',        _id: 'a5',  prev: [null],  next: [null],  internal_address: null,          address: '192.168.2.174', type: 'remote', port: 4444, _mid: 23, configured:  true, desc: 'Desc 192.168.1.174', instance: '',   poll: false, version: 2011092101, good:true})
    ]);
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      if (onResult != null)
        onResult(new ResultEvent('collector.all', false, true, collectors));
    }
    
    public function show(id:String, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function create(params:Object, onResult:Function=null, onFault:Function=null):void
    {
      var collector:Collector = new Collector(params);
      collectors.addItem(collector);
      
      if (onResult != null)
        onResult(new ResultEvent('collector.create', false, true, collector));
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
      logs.addItem(new NetworkLog({time: (new Date().time) / 1000, type: 'INFO', desc: 'Started'}));
      logs.addItem(new NetworkLog({time: (new Date().time) / 1000, type: 'INFO', desc: 'Forwarwed sync for 1.2.3.4'}));
      logs.addItem(new NetworkLog({time: (new Date().time) / 1000, type: 'WARN', desc: 'Forwarwed sync for 5.6.7.8'}));
      
      if (onResult != null)
        onResult(new ResultEvent('collector.logs', false, true, logs));
    }
    
    public function del_logs(id:String, onResult:Function=null, onFault:Function=null):void
    {
      if (onResult != null)
        onResult(new ResultEvent('collector.del_logs'));
    }
    
    public function upgrade(id:String, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function get_public(onResult:Function=null, onFault:Function=null):void
    {
      
    }
    
    public function public_destroy(id:String, onResult:Function=null, onFault:Function=null):void
    {
     
    }
    
  }
  
}