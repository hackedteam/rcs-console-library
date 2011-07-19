package it.ht.rcs.console.network.rest
{
  import it.ht.rcs.console.network.model.Collector;
  import it.ht.rcs.console.network.model.Proxy;
  import it.ht.rcs.console.network.model.ProxyRule;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class DBProxyDemo implements IDBProxy
  {
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      var items:ArrayCollection;
      var a:Array = [
        new Proxy({_id: 'p1', address: '192.168.1.101', desc: 'Desc 192.168.1.101', name: 'Proxy 1', poll: false, port: 4444, redirect: '', redirection_tag: '', created_at: '2011-06-22T17:29:41+02:00', updated_at: '2011-06-22T17:29:41+02:00', version: 0,
                   rules: [new ProxyRule({_id: '', action: 'INJECT-EXE', action_param: 'document.doc', disable_sync: false, enabled: true,  ident: 'Ident 1', ident_param: '', probability: 0,  resource: '.doc', target_id: ['Target 1']}),
                           new ProxyRule({_id: '', action:    'REPLACE', action_param:     'RCS_0001', disable_sync:  true, enabled: false, ident: 'Ident 2', ident_param: '', probability: 10, resource: '.exe', target_id: ['Target 2']})]}),
        new Proxy({_id: 'p2', address: '192.168.1.102', desc: 'Desc 192.168.1.102', name: 'Proxy 2', poll: false, port: 4444, redirect: '', redirection_tag: '', created_at: '2011-06-22T17:29:41+02:00', updated_at: '2011-06-22T17:29:41+02:00', version: 0,
                   rules: [new ProxyRule({_id: '', action: 'action2'})]}),
        new Proxy({_id: 'p3', address: '192.168.1.103', desc: 'Desc 192.168.1.103', name: 'Proxy 3', poll: false, port: 4444, redirect: '', redirection_tag: '', created_at: '2011-06-22T17:29:41+02:00', updated_at: '2011-06-22T17:29:41+02:00', version: 0,
                   rules: []}),
        new Proxy({_id: 'p4', address: '192.168.1.104', desc: 'Desc 192.168.1.104', name: 'Proxy 4', poll: false, port: 4444, redirect: '', redirection_tag: '', created_at: '2011-06-22T17:29:41+02:00', updated_at: '2011-06-22T17:29:41+02:00', version: 0,
                   rules: []})];
      items = new ArrayCollection(a);
      
      var event:ResultEvent = new ResultEvent('proxy.all', false, true, items);
      if (onResult != null)
        onResult(event);
    }
    
    public function show(id:String, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function create(params:Object, onResult:Function=null, onFault:Function=null):void
    {
      var proxy:Proxy = new Proxy(params);
      
      var event:ResultEvent = new ResultEvent('proxy.create', false, true, proxy);
      onResult(event);
    }
    
    public function update(proxy:Proxy, property:Object, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function destroy(id:String, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function add_rule(rule:ProxyRule, proxy_id:String, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function del_rule(proxy_id:String, rule_id:String, onResult:Function=null, onFault:Function=null):void
    {
    }
    
  }
  
}