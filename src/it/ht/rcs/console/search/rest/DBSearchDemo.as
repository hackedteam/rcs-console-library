package it.ht.rcs.console.search.rest
{
  import it.ht.rcs.console.agent.rest.DBAgentDemo;
  import it.ht.rcs.console.operation.rest.DBOperationDemo;
  import it.ht.rcs.console.search.model.SearchItem;
  import it.ht.rcs.console.target.rest.DBTargetDemo;
  import it.ht.rcs.console.evidence.rest.DBEvidenceDemo;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class DBSearchDemo implements IDBSearch
  {
    
    private static var items:ArrayCollection = new ArrayCollection();
    
    public function DBSearchDemo()
    {
      DBOperationDemo.operations.source.forEach(addItemAsSearchItem);
      DBTargetDemo.targets.source.forEach(addItemAsSearchItem);
      DBAgentDemo.agents.source.forEach(addItemAsSearchItem);
      DBAgentDemo.agents.source.forEach(addItemAsSearchItem);
      //DBEvidenceDemo.evidence.source.forEach(addItemAsSearchItem);
    }
    
    public static function addItemAsSearchItem(item:*, index:int, array:Array):void 
    { 
      items.addItem(new SearchItem(item)); 
    }
    
    public function all(filter:Object, onResult:Function=null, onFault:Function=null):void
    {
      if (onResult != null)
        onResult(new ResultEvent('search.all', false, true, items));
    }
    
    public function show(id:String, onResult:Function=null, onFault:Function=null):void
    {
      var found:* = null;
      for each (var item:* in items.source) {
        if (item._id == id) {
          found = item;
          break;
        }
      }
      
      if (onResult != null)
        onResult(new ResultEvent('search.show', false, true, found));
    }
    
  }
  
}