package it.ht.rcs.console.operation.rest
{
  import it.ht.rcs.console.operation.model.Operation;
  import it.ht.rcs.console.operation.model.Stat;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class DBOperationDemo implements IDBOperation
  {
    
    public static var operations: ArrayCollection = new ArrayCollection([
      new Operation({ _id: '4df7246d963d350964000001', _kind: 'operation', name: 'Swordfish', status: 'open',   desc: 'Terrorist attack in Singapore', path: [], group_ids: ['1', '3'], stat: new Stat({ last_sync: 1306514166, evidence: {}, grid_size: 0, size: 0 }) }),
      new Operation({ _id: '4e259fe5963d35425c000001', _kind: 'operation', name: 'BlackJack', status: 'open',   desc: 'Mad bombers in Rome',           path: [], group_ids: [],         stat: new Stat({ last_sync: 1309514166, evidence: {}, grid_size: 0, size: 0 }) }),
      new Operation({ _id: '4e25a173963d354260000003', _kind: 'operation', name: 'All In',    status: 'closed', desc: 'Worldwide drug dealer network', path: [], group_ids: [],         stat: new Stat({ last_sync: 1306632166, evidence: {}, grid_size: 0, size: 0 }) })
    ]);
    
    public function DBOperationDemo()
    {
    }
    
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
      params._id = new Date().getTime().toString();
      
      var operation:Operation = new Operation(params);
      operations.addItem(operation);
      
      if (onResult != null)
        onResult(new ResultEvent('operation.create', false, true, operation));
    }
    
    public function update(operation:Operation, property:Object, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function destroy(id:String, onResult:Function=null, onFault:Function=null):void
    {
      if (onResult != null)
        onResult(new ResultEvent('operation.destroy'));
    }
    
  }
  
}