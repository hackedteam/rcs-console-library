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
      // Swordfish
      new Target({ _id: 't1', _kind: 'target', name: 'John Doe',        desc: 'Head of the terrorist cell', status: 'open',   path: ['o1'], stat: new Stat({ last_sync: 1309354166, evidence: {}, grid_size: 0, size: 0 }) }),
      new Target({ _id: 't2', _kind: 'target', name: 'Alejandro Reade', desc: 'The tough guy',              status: 'open',   path: ['o1'], stat: new Stat({ last_sync: 1306354166, evidence: {}, grid_size: 0, size: 0 }) }),
      new Target({ _id: 't3', _kind: 'target', name: 'Joey Fargo',      desc: 'Smart, computer savvy',      status: 'open',   path: ['o1'], stat: new Stat({ last_sync: 1309355336, evidence: {}, grid_size: 0, size: 0 }) }),
      
      // Blackjack
      new Target({ _id: 't4', _kind: 'target', name: 'Guido',           desc: 'The bomber',                 status: 'open',   path: ['o2'], stat: new Stat({ last_sync: 1309965166, evidence: {}, grid_size: 0, size: 0 }) }),
    
      // All In
      new Target({ _id: 't5', _kind: 'target', name: 'Dmitry Vitaly',   desc: 'Drug trafficker',            status: 'closed', path: ['o3'], stat: new Stat({ last_sync: 1301454166, evidence: {}, grid_size: 0, size: 0 }) }),
    ]);
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      if (onResult != null)
        onResult(new ResultEvent('target.all', false, true, targets));
    }
    
    public function show(id:String, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function create(params:Object, operation:Operation, onResult:Function=null, onFault:Function=null):void
    {
      params._id = new Date().time.toString();
      
      var target:Target = new Target(params);
      target.path = [operation._id];
      targets.addItem(target);
      
      if (onResult != null)
        onResult(new ResultEvent('target.create', false, true, target));
    }
    
    public function update(target:Target, property:Object, onResult:Function=null, onFault:Function=null):void
    {
      if (onResult != null)
        onResult(new ResultEvent('target.update'));
    }
    
    public function destroy(id:String, onResult:Function=null, onFault:Function=null):void
    {
      if (onResult != null)
        onResult(new ResultEvent('target.destroy'));
    }
    
  }
  
}