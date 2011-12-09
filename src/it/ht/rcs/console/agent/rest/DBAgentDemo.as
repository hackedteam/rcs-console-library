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
      new Agent({ _id:"a1", _kind:"agent", name: "Laptop (1)",      desc:"John's Laptop",               status: "open",   path :["o1", "t1"], version: 10, ident:"RCS_01", counter: 1, upgradable: false, stat: new Stat({ _id:"s1", last_sync: 1307515166, evidence: {}, grid_size: 0, size: 0 }) }),
      new Agent({ _id:"a2", _kind:"agent", name: "Mobile (1)",      desc:"John's Android Mobile",       status: "open",   path :["o1", "t1"], version: 10, ident:"RCS_02", counter: 1, upgradable: false, stat: new Stat({ _id:"s2", last_sync: 1307524166, evidence: {}, grid_size: 0, size: 0 }) }),
      // Alejandro Reade (Swordfish)                                                                                                          
      new Agent({ _id:"a3", _kind:"agent", name: "Desktop (1)",     desc:"Alejandro's Windows Desktop", status: "open",   path :["o1", "t2"], version: 10, ident:"RCS_03", counter: 1, upgradable: false, stat: new Stat({ _id:"s3", last_sync: 1307614166, evidence: {}, grid_size: 0, size: 0 }) }),
      // Joey Fargo (SwordFish)                                                                                                               
      new Agent({ _id:"a4", _kind:"agent", name: "Joey mac (1)",    desc:"Joey's Mac",                  status: "open",   path :["o1", "t3"], version: 10, ident:"RCS_04", counter: 1, upgradable: false, stat: new Stat({ _id:"s4", last_sync: 1308514166, evidence: {}, grid_size: 0, size: 0 }) }),
      new Agent({ _id:"a5", _kind:"agent", name: "Joey pc (1)",     desc:"Joey's PC",                   status: "open",   path :["o1", "t3"], version: 10, ident:"RCS_04", counter: 2, upgradable: false, stat: new Stat({ _id:"s5", last_sync: 1307512166, evidence: {}, grid_size: 0, size: 0 }) }),
      new Agent({ _id:"a6", _kind:"agent", name: "Joey cell (1)",   desc:"Joey's Mobile",               status: "open",   path :["o1", "t3"], version: 10, ident:"RCS_05", counter: 3, upgradable: false, stat: new Stat({ _id:"s6", last_sync: 1307514166, evidence: {}, grid_size: 0, size: 0,
                                                                                                                                                                                                                                     source: "1.2.3.4",     user: "Joey", device: "スパイ" }) }),
      // Guido (Blackjack)                                                                                                                    
      new Agent({ _id:"a7", _kind:"agent", name: "Guido pc (1)",    desc:"Guido's PC",                  status: "open",   path :["o2", "t4"], version: 10, ident:"RCS_06", counter: 1, upgradable: false, stat: new Stat({ _id:"s7", last_sync: 1305514166, evidence: {}, grid_size: 0, size: 0 }) }),
      new Agent({ _id:"a8", _kind:"agent", name: "Guido ipad (1)",  desc:"Guido's iPad",                status: "open",   path :["o2", "t4"], version: 10, ident:"RCS_07", counter: 1, upgradable: false, stat: new Stat({ _id:"s8", last_sync: 1308514166, evidence: {}, grid_size: 0, size: 0 }) }),
                                                                                                                                              
      // Dmitry Vitaly (All In)                                                                                                               
      new Agent({ _id:"a9", _kind:"agent", name: "Dmitry cell (1)", desc:"Dmitry's Cellphone",          status: "closed", path :["o3", "t5"], version: 10, ident:"RCS_08", counter: 1, upgradable: false, stat: new Stat({ _id:"s9", last_sync: 1307514166, evidence: {}, grid_size: 0, size: 0 }), instance: 'i1',
                  configs: [new Config({ _id: 'c1', desc: 'First config',  sent: 1319708409, activated: 1319708409, saved: 1319708409, user: 'Tech User', config: '' }),
                            new Config({ _id: 'c2', desc: 'Second config', sent: 1319708409, activated: 1319708409, saved: 1319708409, user: 'Tech User', config: '' })] })
    ]);
    
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