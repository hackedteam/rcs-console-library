package it.ht.rcs.console.target.rest
{
  import it.ht.rcs.console.operation.model.Operation;
  import it.ht.rcs.console.operation.model.Stat;
  import it.ht.rcs.console.target.model.Target;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class DBTargetDemo implements IDBTarget
  {   
    public static var targets:ArrayCollection = new ArrayCollection([
      // operation Swordfish
      new Target({_id: "4e2683f3963d350658000001", _kind: "target", name: "John Doe", desc: "Head of the terrorist cell.", status: "open", path: ["4df7246d963d350964000001"], stat: new Stat({last_sync: 1309354166, evidence: {}, grid_size: 0, size: 0})}),
      new Target({_id: "4e2686e1963d350658000002", _kind: "target", name: "Alejandro Reade", desc: "The tough guy.", status: "open", path: ["4df7246d963d350964000001"]}),
      new Target({_id: "4e268719963d350658000003", _kind: "target", name: "Joey Fargo", desc: "Smart, computer savvy.", status: "open", path: ["4df7246d963d350964000001"]}),
      
      // operation BlackJack
      new Target({_id: "4e268724963d350658000004", _kind: "target", name: "Guido", desc: "The bomber.", status: "open", path: ["4e259fe5963d35425c000001"]}),
    
      // operation All In
      new Target({_id: "4e26872b963d350658000005", _kind: "target", name: "Dmitry Vitaly", desc: "Drug trafficker.", status: "open", path: ["4e25a173963d354260000003"]}),
    ]);
    
    public function DBTargetDemo()
    {
    }
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      var event:ResultEvent = new ResultEvent('target.all', false, true, targets);
      if (onResult != null)
        onResult(event);
    }
    
    public function show(id:String, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function create(params:Object, operation:Operation, onResult:Function=null, onFault:Function=null):void
    {
      params._id = new Date().getTime().toString();
      
      var target:Target = new Target(params);
      target.path = [operation._id];
      targets.addItem(target);
      
      var event:ResultEvent = new ResultEvent("target.create", false, true, target);
      onResult(event);
    }
    
    public function update(target:Target, property:Object, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function destroy(id:String, onResult:Function=null, onFault:Function=null):void
    {
    }
  }
}