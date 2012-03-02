package it.ht.rcs.console.operation.rest
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.operation.model.Operation;
  import it.ht.rcs.console.search.model.Stat;
  import it.ht.rcs.console.search.rest.DBSearchDemo;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class DBOperationDemo implements IDBOperation
  {
    
    public static var operations: ArrayCollection = new ArrayCollection([
      new Operation({ _id: 'o1', _kind: 'operation', name: 'Swordfish', desc: 'Terrorist attack in Singapore', status: 'open',   path: [], group_ids: ['1', '3'], stat: new Stat({ last_sync: 1309354166, evidence: null, dashboard: null, grid_size: 0, size: 0 }) }),
      new Operation({ _id: 'o2', _kind: 'operation', name: 'Blackjack', desc: 'Mad bombers in Rome',           status: 'open',   path: [], group_ids: [],         stat: new Stat({ last_sync: 1308354166, evidence: null, grid_size: 0, size: 0 }) }),
      new Operation({ _id: 'o3', _kind: 'operation', name: 'All In',    desc: 'Worldwide drug dealer network', status: 'closed', path: [], group_ids: [],         stat: new Stat({ last_sync: 1307354166, evidence: null, grid_size: 0, size: 0 }) })
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
      params._id = new Date().time.toString();
      
      var operation:Operation = new Operation(params);
      operations.addItem(operation);
      DBSearchDemo.addItemAsSearchItem(operation, 0, null);
      
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