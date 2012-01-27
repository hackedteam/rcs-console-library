package it.ht.rcs.console.operation.rest
{
  import it.ht.rcs.console.operation.model.Operation;
  import it.ht.rcs.console.search.model.Stat;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class DBOperationDemo implements IDBOperation
  {
    
    public static var operations: ArrayCollection = new ArrayCollection([
      new Operation({ _id: 'o1', _kind: 'operation', name: 'Swordfish', desc: 'Terrorist attack in Singapore', status: 'open',   path: [], group_ids: ['1', '3'], stat: new Stat({ last_sync: 1306514166, evidence: {}, grid_size: 0, size: 0 }) }),
      new Operation({ _id: 'o2', _kind: 'operation', name: 'Blackjack', desc: 'Mad bombers in Rome',           status: 'open',   path: [], group_ids: [],         stat: new Stat({ last_sync: 1309514166, evidence: {}, grid_size: 0, size: 0 }) }),
      new Operation({ _id: 'o3', _kind: 'operation', name: 'All In',    desc: 'Worldwide drug dealer network', status: 'closed', path: [], group_ids: [],         stat: new Stat({ last_sync: 1306632166, evidence: {}, grid_size: 0, size: 0 }) })
    ]);
    
    public function all(all:Boolean, onResult:Function=null, onFault:Function=null):void
    {     
      if (onResult != null)
        onResult(new ResultEvent('operation.all', false, true, operations));
    }
    
    public function show(id:String, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function create(params:Object, onResult:Function=null, onFault:Function=null):void
    {
      var operation:Operation = new Operation(params);
      params._id = new Date().time.toString();
      operations.addItem(operation);
      
      if (onResult != null)
        onResult(new ResultEvent('operation.create', false, true, operation));
    }
    
    public function update(operation:Operation, property:Object, onResult:Function=null, onFault:Function=null):void
    {
      if (onResult != null)
        onResult(new ResultEvent('operation.update'));
    }
    
    public function destroy(id:String, onResult:Function=null, onFault:Function=null):void
    {
      if (onResult != null)
        onResult(new ResultEvent('operation.destroy'));
    }
    
  }
  
}