package it.ht.rcs.console.agent.rest
{
  import it.ht.rcs.console.DefaultConfigBuilder;
  import it.ht.rcs.console.agent.model.Agent;
  import it.ht.rcs.console.agent.model.Config;
  import it.ht.rcs.console.operation.model.Operation;
  import it.ht.rcs.console.search.model.Stat;
  import it.ht.rcs.console.search.model.StatEvidence;
  import it.ht.rcs.console.search.rest.DBSearchDemo;
  import it.ht.rcs.console.target.model.Target;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;

  public class DBAgentDemo implements IDBAgent
  {
    
    public static var agents:ArrayCollection = new ArrayCollection([
      
      // AGENTS
      
      // John Doe (SwordFish)
      new Agent({ _id: "a1", _kind: "agent", name: "Laptop (1)",      desc:"John's Laptop",               status: "open",   path :["o1", "t1"], type: "desktop", platform: "windows",     version: 10, ident:"RCS_0000000001", counter: 1, upgradable: false, stat: new Stat({ _id: "s1", last_sync: 1307515166, evidence: null, grid_size: 0, size: 0 }),
        configs: [new Config({config: DefaultConfigBuilder.getDefaultConfigAsString(new Agent({type: 'desktop'}))})] }),
      new Agent({ _id: "a2", _kind: "agent", name: "Mobile (1)",      desc:"John's Android Mobile",       status: "open",   path :["o1", "t1"], type: "mobile",  platform: "android", version: 10, ident:"RCS_0000000002", counter: 1, upgradable: false, stat: new Stat({ _id: "s2", last_sync: 1307524166, evidence: null, grid_size: 0, size: 0 }),
        configs: [new Config({config: DefaultConfigBuilder.getDefaultConfigAsString(new Agent({type: 'mobile'}))})] }),
      // Alejandro Reade (Swordfish)
      new Agent({ _id: "a3", _kind: "agent", name: "Desktop (1)",     desc:"Alejandro's Windows Desktop", status: "open",   path :["o1", "t2"], type: "desktop", platform: "osx", version: 10, ident:"RCS_0000000003", counter: 1, upgradable: false, stat: new Stat({ _id: "s3", last_sync: 1307614166, evidence: null, grid_size: 0, size: 0 }),
        configs: [new Config({config: DefaultConfigBuilder.getDefaultConfigAsString(new Agent({type: 'desktop'}))})] }),
      // Joey Fargo (SwordFish)
      new Agent({ _id: "a4", _kind: "agent", name: "Joey mac (1)",    desc:"Joey's Mac",                  status: "open",   path :["o1", "t3"], type: "desktop", platform: "osx",        version: 10, ident:"RCS_0000000004", counter: 1, upgradable: false, stat: new Stat({ _id: "s4", last_sync: 1308514166, evidence: null, grid_size: 0, size: 0 }),
        configs: [new Config({config: DefaultConfigBuilder.getDefaultConfigAsString(new Agent({type: 'desktop'}))})] }),
      new Agent({ _id: "a5", _kind: "agent", name: "Joey pc (1)",     desc:"Joey's PC",                   status: "open",   path :["o1", "t3"], type: "desktop", platform: "windows",    scout:true, version: 10, ident:"RCS_0000000004", counter: 2, upgradable: false, stat: new Stat({ _id: "s5", last_sync: 1307512166, evidence: null, grid_size: 0, size: 0 }),
        configs: [new Config({config: DefaultConfigBuilder.getDefaultConfigAsString(new Agent({type: 'desktop'}))})] }),
      new Agent({ _id: "a6", _kind: "agent", name: "Joey cell (1)",   desc:"Joey's Mobile",               status: "open",   path :["o1", "t3"], type: "mobile",  platform: "android", version: 10, ident:"RCS_0000000005", counter: 3, upgradable: false, stat: new Stat({ _id: "s6", last_sync: 1307514166, evidence: null, grid_size: 0, size: 0 }),
        configs: [new Config({config: DefaultConfigBuilder.getDefaultConfigAsString(new Agent({type: 'mobile'}))})] }),
      
     
      
      // Guido (Blackjack)
      new Agent({ _id: "a7", _kind: "agent", name: "Guido pc (1)",    desc:"Guido's PC",                  status: "open",   path :["o2", "t4"], type: "desktop",  platform: "windows", version: 10, ident:"RCS_0000000006", counter: 1, upgradable: false, stat: new Stat({ _id: "s7", last_sync: 1305514166, evidence: null, grid_size: 0, size: 0 }),
        configs: [new Config({config: DefaultConfigBuilder.getDefaultConfigAsString(new Agent({type: 'desktop'}))})] }),
      new Agent({ _id: "a8", _kind: "agent", name: "Guido ipad (1)",  desc:"Guido's iPad",                status: "open",   path :["o2", "t4"], type: "mobile",   platform: "ios",     version: 10, ident:"RCS_0000000007", counter: 1, upgradable: false, stat: new Stat({ _id: "s8", last_sync: 1308514166, evidence: null, grid_size: 0, size: 0 }),
        configs: [new Config({config: DefaultConfigBuilder.getDefaultConfigAsString(new Agent({type: 'mobile'}))})] }),
      
      // Dmitry Vitaly (All In)
      new Agent({ _id: "a9", _kind: "agent", name: "Dmitry cell (1)", desc:"Dmitry's Cellphone",          status: "closed", path :["o3", "t5"], type: "mobile",   platform: "symbian", version: 10, ident:"RCS_0000000008", counter: 1, upgradable: false, stat: new Stat({ _id: "s9", last_sync: 1307514166, evidence: null, grid_size: 0, size: 0 }), instance: 'i1',
                  configs: [new Config({ _id: 'c1', desc: 'First config',  sent: 1319708409, activated: 1319708409, saved: 1319708409, user: 'Tech User', config: '' }),
                            new Config({ _id: 'c2', desc: 'Second config', sent: 1319708409, activated: 1319708409, saved: 1319708409, user: 'Tech User', config: '' })] }),
      
      // FACTORIES
      
      // John Doe (SwordFish)
      new Agent({ _id: "f1", _kind: "factory", name: "John's Laptop Configuration", type: "desktop", desc: "Catch all",                                   status: "open",   path: ["o1", "t1"], ident: "RCS_0000000001", counter: 1, configs: [new Config({config: DefaultConfigBuilder.getDefaultConfigAsString(new Agent({type: 'desktop'}))})] }),
      new Agent({ _id: "f2", _kind: "factory", name: "John's Mobile Configuration", type: "mobile",  desc: "Voice and position",                          status: "open",   path: ["o1", "t1"], ident: "RCS_0000000002", counter: 1, configs: [new Config({config: DefaultConfigBuilder.getDefaultConfigAsString(new Agent({type: 'mobile'}))})] }),
      // Alejandro Reade (Swordfish)
      new Agent({ _id: "f3", _kind: "factory", name: "Alejandro's Setup",           type: "desktop", desc: "Documents & contacts",                        status: "open",   path: ["o1", "t2"], ident: "RCS_0000000003", counter: 1, configs: [new Config({config: DefaultConfigBuilder.getDefaultConfigAsString(new Agent({type: 'desktop'}))})] }),
      // Joey Fargo (SwordFish)
      new Agent({ _id: "f4", _kind: "factory", name: "Joey's Desktop conf",         type: "desktop", desc: "All accessed files",                          status: "open",   path: ["o1", "t3"], ident: "RCS_0000000004", counter: 1, configs: [new Config({config: DefaultConfigBuilder.getDefaultConfigAsString(new Agent({type: 'desktop'}))})] }),
      new Agent({ _id: "f5", _kind: "factory", name: "Joey's Mobile conf",          type: "mobile",  desc: "Position and location upon sms",              status: "open",   path: ["o1", "t3"], ident: "RCS_0000000005", counter: 1, configs: [new Config({config: DefaultConfigBuilder.getDefaultConfigAsString(new Agent({type: 'mobile'}))})] }),
      
      // Guido (Blackjack)
      new Agent({ _id: "f6", _kind: "factory", name: "Guido PC setup",              type: "desktop", desc: "Get everything",                              status: "open",   path: ["o2", "t4"], ident: "RCS_0000000006", counter: 1, configs: [new Config({config: DefaultConfigBuilder.getDefaultConfigAsString(new Agent({type: 'desktop'}))})] }),
      new Agent({ _id: "f7", _kind: "factory", name: "IPad agent setup for Guido",  type: "mobile",  desc: "Contacts & emails",                           status: "open",   path: ["o2", "t4"], ident: "RCS_0000000007", counter: 1, configs: [new Config({config: DefaultConfigBuilder.getDefaultConfigAsString(new Agent({type: 'mobile'}))})] }),
      
      // Dmitry Vitaly (All In)
      new Agent({ _id: "f8", _kind: "factory", name: "Dmitry's mobile conf",        type: "mobile",  desc: "Eveything ok, watch out for battery levels!", status: "closed", path: ["o3", "t5"], ident: "RCS_0000000008", counter: 1, configs: [new Config({config: DefaultConfigBuilder.getDefaultConfigAsString(new Agent({type: 'desktop'}))})] })
    ]);
    
    public static function getTarget(aid:String):String
    {
      var target:String;
      for(var i :int=0;i<agents.length;i++)
      {
        var agent:Agent=agents.getItemAt(i) as Agent;
        if(agent._id==aid)
        {
          target=String(agent.path.getItemAt(1));
          break;
        }
      }
      return target;
    }
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      if (onResult != null)
        onResult(new ResultEvent('agent.all', false, true, agents));
    }
    
    public function show(id:String, onResult:Function=null, onFault:Function=null):void
    {
      var found:* = null;
      for each (var item:* in agents.source) {
        if (item._id == id) {
          found = item;
          break;
        }
      }
      
      if (onResult != null)
        onResult(new ResultEvent('agent.show', false, true, found));
    }
    
    public function create(params:Object, operation:Operation, target:Target, onResult:Function=null, onFault:Function=null):void
    {
      params._id = new Date().time.toString();
      
      var agent:Agent = new Agent(params);
      agent.path = [operation._id, target._id];
      agents.addItem(agent);
      DBSearchDemo.addItemAsSearchItem(agent, 0, null);
      
      if (onResult != null)
        onResult(new ResultEvent('agent.create', false, true, agent));
    }
    
    public function update(agent:Agent, property:Object, onResult:Function=null, onFault:Function=null):void
    {
      if (onResult != null)
        onResult(new ResultEvent('agent.update'));
    }
    
    public function destroy(id:String, permanent:Boolean=false, onResult:Function=null, onFault:Function=null):void
    {
      if (onResult != null)
        onResult(new ResultEvent('agent.destroy'));
    }
    
    public function purge(id:String, time:Number, size:Number, onResult:Function=null, onFault:Function=null):void
    {
      if (onResult != null)
        onResult(new ResultEvent('agent.purge'));
    }
    
    public function add_config(agent:Agent, config:String, onResult:Function=null, onFault:Function=null):void
    {
      // TODO: what happens in demo when we add a config?
      var a:Agent = agents.getItemAt(agents.getItemIndex(agent)) as Agent;
      var c:Config = new Config({_id: new Date().time.toString(), config: config});
      if (a._kind == 'factory')
        if (a.configs.length == 0)
          a.configs.addItem(c);
        else
          a.configs.setItemAt(c, 0);
      else
        a.configs.addItemAt(c, 0);
      
      if (onResult != null)
        onResult(new ResultEvent('agent.add_config'));
    }
    
    public function del_config(agent:Agent, config_id:String, onResult:Function=null, onFault:Function=null):void
    {
      // TODO: what happens in demo when we delete a config?
      if (onResult != null)
        onResult(new ResultEvent('agent.del_config'));
    }
    
    public function update_config(agent:Agent, config_id: String, desc:String, onResult:Function=null, onFault:Function=null):void
    {
      if (onResult != null)
        onResult(new ResultEvent('agent.update_config'));
    }
    
    public function upgrade(agent:Agent, onResult:Function=null, onFault:Function=null):void
    {
      if (onResult != null)
        onResult(new ResultEvent('agent.upgrade'));
    }
    
    public function downloads(agent:Agent, onResult:Function=null, onFault:Function=null):void {}
    
    public function filesystems(agent:Agent, onResult:Function=null, onFault:Function=null):void {}
    
    public function create_download(agentId:String, path:String, onResult:Function=null, onFault:Function=null):void {}
    
    public function destroy_download(agent:Agent, downloadId:String, onResult:Function=null, onFault:Function=null):void {}
    
    public function destroy_filesystem(agent:Agent, filesystemId:String, onResult:Function=null, onFault:Function=null):void {}
    
    public function destroy_upload(agent:Agent, downloadId:String, onResult:Function=null, onFault:Function=null):void {}
    
    public function uploads(agent:Agent, onResult:Function=null, onFault:Function=null):void {}
    
    public function create_upload(agent:Agent, filename:String, grid:String, onResult:Function=null, onFault:Function=null):void {}
    
    public function filesystem(agentId:String, path:String, depth:int, onResult:Function=null, onFault:Function=null):void {}
    
    public function move(agentId:String, targetId:String, onResult:Function=null, onFault:Function=null):void {}
    
    public function activate_ghost(agent:Agent, sync:Array, onResult:Function=null, onFault:Function=null):void{}
    
    public function create_command(agent:Agent, command:String, onResult:Function=null, onFault:Function=null):void{}
    
    public function commands(agent:Agent, onResult:Function=null, onFault:Function=null):void {}
    
    public function destroy_command(agent:Agent, commandId:String, onResult:Function=null, onFault:Function=null):void{}
    
    public function destroy_factory(id:String, permanent:Boolean=false, onResult:Function=null, onFault:Function=null):void{};
    
  }
  
}