package it.ht.rcs.console.network.rest
{
  import it.ht.rcs.console.network.model.Collector;
  import it.ht.rcs.console.network.model.Injector;
  import it.ht.rcs.console.network.model.InjectorRule;
  import it.ht.rcs.console.network.model.NetworkLog;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class DBInjectorDemo implements IDBInjector
  {
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      var items:ArrayCollection;
      var a:Array = [
        new Injector({_id: 'p1', address: '192.168.1.101', desc: 'Desc 192.168.1.101', name: 'Injector Telecom', poll: true, port: 4444, redirect: 'auto', redirection_tag: '', created_at: '2011-06-22T17:29:41+02:00', updated_at: '2011-06-22T17:29:41+02:00', version: 0,
                   rules: [new InjectorRule({_id: '', action: 'INJECT-EXE', action_param: '4e26a406963d350eb1000003', action_param_name: '4e26a406963d350eb1000003', disable_sync: false, enabled:  true, ident: 'STATIC-IP', ident_param: '1.2.3.4', probability:   0, resource: '*.exe', target_id: ['4e2683f3963d350658000001']}),
                           new InjectorRule({_id: '', action: 'REPLACE', action_param_name: 'Document.doc', disable_sync:  true, enabled: false, ident: 'STRING-CLIENT', ident_param: 'joey@gmail.com', probability: 100, resource: '*manual*.doc', target_id: ['4e268719963d350658000003']})]}),
        new Injector({_id: 'p2', address: '192.168.1.102', desc: 'Desc 192.168.1.102', name: 'Injector Fastweb', poll: true, port: 4444, redirect: 'auto', redirection_tag: '', created_at: '2011-06-22T17:29:41+02:00', updated_at: '2011-06-22T17:29:41+02:00', version: 0,
                   rules: [new InjectorRule({_id: '', action: 'INJECT-HTML', action_param: '4e26a862963d350f4e000009', action_param_name: '4e26a862963d350f4e000009', disable_sync: false, enabled:  true, ident: 'STATIC-IP', ident_param: '1.2.3.4', probability:   0, resource: 'www.oracle.com/index.html', target_id: ['4e26872b963d350658000005']})]}),
        new Injector({_id: 'p3', address: '192.168.1.103', desc: 'Desc 192.168.1.103', name: 'Injector Infostrada', poll: false, port: 4444, redirect: 'auto', redirection_tag: '', created_at: '2011-06-22T17:29:41+02:00', updated_at: '2011-06-22T17:29:41+02:00', version: 0,
                   rules: []}),
        new Injector({_id: 'p4', address: '192.168.1.104', desc: 'Desc 192.168.1.104', name: 'Injector Tiscali', poll: false, port: 4444, redirect: 'auto', redirection_tag: '', created_at: '2011-06-22T17:29:41+02:00', updated_at: '2011-06-22T17:29:41+02:00', version: 0,
                   rules: []})];
      items = new ArrayCollection(a);
      
      var event:ResultEvent = new ResultEvent('injector.all', false, true, items);
      if (onResult != null)
        onResult(event);
    }
    
    public function show(id:String, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function create(params:Object, onResult:Function=null, onFault:Function=null):void
    {
      var injector:Injector = new Injector(params);
      
      var event:ResultEvent = new ResultEvent('injector.create', false, true, injector);
      onResult(event);
    }
    
    public function update(inj:Injector, property:Object, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function destroy(id:String, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function add_rule(injector_id:String, params:Object, onResult:Function=null, onFault:Function=null):void
    {
      var rule:InjectorRule = new InjectorRule(params);
      
      var event:ResultEvent = new ResultEvent('injector.add_rule', false, true, rule);
      onResult(event);
    }
    
    public function update_rule(injector_id:String, params:Object, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function del_rule(injector_id:String, rule_id:String, onResult:Function=null, onFault:Function=null):void
    {
    }
    

    public function logs(id:String, onResult:Function = null, onFault:Function = null):void
    {
      var logs:ArrayCollection = new ArrayCollection();
      logs.addItem(new NetworkLog({time: (new Date().time) / 1000, type: 'INFO', desc: 'Started'}));
      logs.addItem(new NetworkLog({time: (new Date().time) / 1000, type: 'INFO', desc: 'Injected 1.2.3.4'}));
      
      var event:ResultEvent = new ResultEvent('injector.logs', false, true, logs);
      if (onResult != null)
        onResult(event);

    }
    
    public function del_logs(id:String, onResult:Function = null, onFault:Function = null):void
    {
      var event:ResultEvent = new ResultEvent('injector.del_logs', false, true);
      if (onResult != null)
        onResult(event);
    }
  }
  
}