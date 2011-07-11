package it.ht.rcs.console.network.rest
{
  import it.ht.rcs.console.network.model.Collector;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class DBNetworkDemo implements IDBNetwork
  {
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      var items:ArrayCollection;
      var a:Array = [
        new Collector({_id: '4e020a65963d353c65000cef', _mid:  1, address: '192.168.1.100', configured:  true, created_at: '2011-06-22T17:29:41+02:00', desc: '192.168.1.100', instance: '525C4E89CDE6244A444EA4D23F482ED3RSS', name:      'Collector node', next: '4e020a65963d353c65000cf6', poll: false, port:    0, prev:                       null, type:  'local', updated_at: '2011-06-22T17:29:41+02:00', version:          0}),
        new Collector({_id: '4e020a65963d353c65000cf0', _mid:  3, address: '192.168.1.172', configured:  true, created_at: '2011-06-22T17:29:41+02:00', desc: '192.168.1.172', instance:                                    '', name: 'Prod Public Address', next: '4e020a65963d353c65000cf7', poll: false, port: 4444, prev: '4e020a65963d353c65000cf2', type: 'remote', updated_at: '2011-06-22T17:29:41+02:00', version: 2010073101}),
        new Collector({_id: '4e020a65963d353c65000cf1', _mid:  9, address: '192.168.1.172', configured:  true, created_at: '2011-06-22T17:29:41+02:00', desc: '192.168.1.172', instance: 'dbca550f1174f3028308344c4d58545dRSS', name:      'Collector node', next:                       null, poll: false, port:    0, prev:                       null, type:  'local', updated_at: '2011-06-22T17:29:41+02:00', version:          0}),
        new Collector({_id: '4e020a65963d353c65000cf2', _mid: 15, address: '192.168.1.161', configured:  true, created_at: '2011-06-22T17:29:41+02:00', desc: '192.168.1.161', instance: '0C84BF20AA9B0C54F3AA2CB87AC8C6BARSS', name:      'Collector node', next: '4e020a65963d353c65000cf0', poll: false, port:    0, prev:                       null, type:  'local', updated_at: '2011-06-22T17:29:41+02:00', version:          0}),
        new Collector({_id: '4e020a65963d353c65000cf3', _mid: 16, address: '192.168.1.189', configured:  true, created_at: '2011-06-22T17:29:41+02:00', desc: '192.168.1.189', instance: 'b943f1f6151bda08b82adfb0b0d21ce6RSS', name:      'Collector node', next:                       null, poll: false, port:    0, prev:                       null, type:  'local', updated_at: '2011-06-22T17:29:41+02:00', version:          0}),
        new Collector({_id: '4e020a65963d353c65000cf4', _mid: 17, address: '192.168.1.189', configured:  true, created_at: '2011-06-22T17:29:41+02:00', desc: '192.168.1.189', instance: 'c02acdd7e9432d784e867a17f6a5f13cRSS', name:      'Collector node', next: '4e020a65963d353c65000cfa', poll: false, port:    0, prev:                       null, type:  'local', updated_at: '2011-06-22T17:29:41+02:00', version:          0}),
        new Collector({_id: '4e020a65963d353c65000cf5', _mid: 18, address: '192.168.1.154', configured:  true, created_at: '2011-06-22T17:29:41+02:00', desc: '192.168.1.154', instance: '1252deed693ce0559eaf525558410f3dRSS', name:      'Collector node', next:                       null, poll: false, port:    0, prev:                       null, type:  'local', updated_at: '2011-06-22T17:29:41+02:00', version:          0}),
        new Collector({_id: '4e020a65963d353c65000cf6', _mid: 19, address: '192.168.1.172', configured:  true, created_at: '2011-06-22T17:29:41+02:00', desc: '192.168.1.172', instance:                                    '', name:            'Anon EEE', next: '4e020a65963d353c65000cf8', poll: false, port: 4444, prev: '4e020a65963d353c65000cef', type: 'remote', updated_at: '2011-06-22T17:29:41+02:00', version: 2011011101}),
        new Collector({_id: '4e020a65963d353c65000cf7', _mid: 20, address: '192.168.1.172', configured:  true, created_at: '2011-06-22T17:29:41+02:00', desc: '192.168.1.172', instance:                                    '', name:              'Test 1', next:                       null, poll: false, port: 4444, prev: '4e020a65963d353c65000cf0', type: 'remote', updated_at: '2011-06-22T17:29:41+02:00', version:          0}),
        new Collector({_id: '4e020a65963d353c65000cf8', _mid: 21, address: '192.168.1.172', configured:  true, created_at: '2011-06-22T17:29:41+02:00', desc: '192.168.1.172', instance:                                    '', name:              'Test 2', next:                       null, poll: false, port: 4444, prev: '4e020a65963d353c65000cf6', type: 'remote', updated_at: '2011-06-22T17:29:41+02:00', version:          0}),
        new Collector({_id: '4e020a65963d353c65000cf9', _mid: 22, address: '192.168.1.189', configured:  true, created_at: '2011-06-22T17:29:41+02:00', desc: '192.168.1.189', instance: '6ad98ea6cb3338e48ed5778c6bf8f97fRSS', name:      'Collector node', next:                       null, poll: false, port:    0, prev:                       null, type:  'local', updated_at: '2011-06-22T17:29:41+02:00', version:          0}),
        new Collector({_id: '4e020a65963d353c65000cfa', _mid: 23, address: '192.168.1.172', configured: false, created_at: '2011-06-22T17:29:41+02:00', desc: '192.168.1.172', instance:                                    '', name:                 'Asd', next:                       null, poll: false, port: 4444, prev: '4e020a65963d353c65000cf4', type: 'remote', updated_at: '2011-06-22T17:29:41+02:00', version:          0})];
      items = new ArrayCollection(a);
      
      var event:ResultEvent = new ResultEvent("collector.index", false, true, items);
      if (onResult != null)
        onResult(event);
    }
    
    public function show(id:String, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function create(params:Object, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function update(collector:Collector, property:Object, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function destroy(id:String, onResult:Function=null, onFault:Function=null):void
    {
    }
    
  }
  
}