package it.ht.rcs.console.backdoor.rest
{
  import it.ht.rcs.console.backdoor.model.Backdoor;
  import it.ht.rcs.console.operation.model.Operation;
  import it.ht.rcs.console.operation.model.Stat;
  import it.ht.rcs.console.target.model.Target;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;

  public class DBBackdoorDemo implements IDBBackdoor
  {
    /*
    private var targets:ArrayCollection = new ArrayCollection([
    // operation Swordfish 
    new Target({_id: "4e2683f3963d350658000001", name: "John Doe", desc: "Head of the terrorist cell.", status: "open", path: ["4df7246d963d350964000001"]}),
    new Target({_id: "4e2686e1963d350658000002", name: "Alejandro Reade", desc: "The tough guy.", status: "open", path: ["4df7246d963d350964000001"]}),
    new Target({_id: "4e268719963d350658000003", name: "Joey Fargo", desc: "Smart, computer savvy.", status: "open", path: ["4df7246d963d350964000001"]}),
    
    // operation BlackJack
    new Target({_id: "4e268724963d350658000004", name: "Guido", desc: "The bomber.", status: "open", path: ["4e259fe5963d35425c000001"]}),
    
    // operation All In
    new Target({_id: "4e26872b963d350658000005", name: "Dmitry Vitaly", desc: "Drug trafficker.", status: "open", path: ["4e25a173963d354260000003"]}),
    ]);
    */
    
    /*
    {"_id":"4e26a406963d350eb1000003",
    "_kind":"factory",
    "desc":"this is a test backdoor",
    "ident":"RCS_0000000623",
    "name":"test backdoor",
    "path":["4e1f08b6963d3539f8000024","4e1f08b7963d3539f800005a"],
    "stat":{"_id":"4e26a406963d350eb1000002","evidence":{},"grid_size":0,"size":0},
    "status":"open",
    "upgradable":false}
    */
    
    private var backdoors:ArrayCollection = new ArrayCollection([
        // John Doe (SwordFish)
        new Backdoor({_id:"4e26a406963d350eb1000003", _kind:"backdoor", desc:"John's Laptop", ident:"RCS_0000000001", counter: 1, name: "Laptop",path :["4df7246d963d350964000001", "4e2683f3963d350658000001"], stat: new Stat({_id:"4e26a406963d350eb1000002",evidence: {}, grid_size: 0, size: 0}), status: "open", upgradable: false}),
        new Backdoor({_id:"4e26a6f9963d350f4e000001", _kind:"backdoor", desc:"John's Android Mobile", ident:"RCS_0000000002", counter: 1, name: "Mobile",path :["4df7246d963d350964000001", "4e2683f3963d350658000001"], stat: new Stat({_id:"4e26a745963d350f4e000003",evidence: {}, grid_size: 0, size: 0}), status: "open", upgradable: false}),
        // Alejandro Reade (Swordfish)
        new Backdoor({_id:"4e26a712963d350f4e000002", _kind:"backdoor", desc:"Alejandro's Windows Desktop", ident:"RCS_0000000003",counter: 1, name: "Desktop",path :["4df7246d963d350964000001", "4e2686e1963d350658000002"], stat: new Stat({_id:"4e26a87a963d350f4e00000a",evidence: {}, grid_size: 0, size: 0}), status: "open", upgradable: false}),
        // Joey Fargo (SwordFish)
        new Backdoor({_id:"4e26a843963d350f4e000004", _kind:"backdoor", desc:"Joey's Mac", ident:"RCS_0000000004", counter: 1, name: "test backdoor",path :["4df7246d963d350964000001", "4e268719963d350658000003"], stat: new Stat({_id:"4e26a884963d350f4e00000b",evidence: {}, grid_size: 0, size: 0}), status: "open", upgradable: false}),
        new Backdoor({_id:"4e26a84a963d350f4e000005", _kind:"backdoor", desc:"Joey's PC", ident:"RCS_0000000004", counter: 2, name: "test backdoor",path :["4df7246d963d350964000001", "4e268719963d350658000003"], stat: new Stat({_id:"4e26a889963d350f4e00000c",evidence: {}, grid_size: 0, size: 0}), status: "open", upgradable: false}),
        new Backdoor({_id:"4e26a850963d350f4e000006", _kind:"backdoor", desc:"Joey's Mobile", ident:"RCS_0000000005", counter: 1, name: "test backdoor",path :["4df7246d963d350964000001", "4e268719963d350658000003"], stat: new Stat({_id:"4e26a890963d350f4e00000d",evidence: {}, grid_size: 0, size: 0}), status: "open", upgradable: false}),
        
        // Guido (BlackJack)
        new Backdoor({_id:"4e26a857963d350f4e000007", _kind:"backdoor", desc:"Guido's PC", ident:"RCS_0000000006", name: "test backdoor",path :["4e259fe5963d35425c000001", "4e268724963d350658000004"], stat: new Stat({_id:"4e26a895963d350f4e00000e",evidence: {}, grid_size: 0, size: 0}), status: "open", upgradable: false}),
        new Backdoor({_id:"4e26a85d963d350f4e000008", _kind:"backdoor", desc:"Guido's iPad", ident:"RCS_0000000007", name: "test backdoor",path :["4e259fe5963d35425c000001", "4e268724963d350658000004"], stat: new Stat({_id:"4e26a89a963d350f4e00000f",evidence: {}, grid_size: 0, size: 0}), status: "open", upgradable: false}),
        
        // Dmitry Vitaly (All In)
        new Backdoor({_id:"4e26a862963d350f4e000009", _kind:"backdoor", desc:"Dmitry's Cellphone", ident:"RCS_0000000008", name: "test backdoor",path :["4e25a173963d354260000003", "4e26872b963d350658000005"], stat: new Stat({_id:"4e26a8a0963d350f4e000010",evidence: {}, grid_size: 0, size: 0}), status: "open", upgradable: false})
      ]);
    
    public function DBBackdoorDemo()
    {
    }
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      var event:ResultEvent = new ResultEvent('backdoor.all', false, true, backdoors);
      if (onResult != null)
        onResult(event);
    }
    
    public function show(id:String, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function create(params:Object, operation:Operation, target:Target, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function update(backdoor:Backdoor, property:Object, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function destroy(id:String, onResult:Function=null, onFault:Function=null):void
    {
    }
  }
}