package it.ht.rcs.console.search.rest
{
  import it.ht.rcs.console.agent.rest.DBAgentDemo;
  import it.ht.rcs.console.factory.rest.DBFactoryDemo;
  import it.ht.rcs.console.operation.rest.DBOperationDemo;
  import it.ht.rcs.console.search.model.SearchItem;
  import it.ht.rcs.console.target.rest.DBTargetDemo;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class DBSearchDemo implements IDBSearch
  {
    private var _search_items : ArrayCollection = new ArrayCollection();
    
    public function DBSearchDemo()
    {
      DBOperationDemo.operations.source.forEach(addItemAsSearchItem);
      DBTargetDemo.targets.source.forEach(addItemAsSearchItem);
      DBAgentDemo.agents.source.forEach(addItemAsSearchItem);
    }
    
    private function addItemAsSearchItem(item:*, index:int, array:Array) : void 
    { 
      trace(item._kind);
      _search_items.addItem(new SearchItem(item)); 
    }
    
    public function all(filter:Object, onResult:Function=null, onFault:Function=null):void
    {
      var event:ResultEvent = new ResultEvent('search.all', false, true, _search_items);
      if (onResult != null)
        onResult(event);
    }
    
    public function show(id:String, onResult:Function=null, onFault:Function=null):void
    {
      /* search for the item with _id and return it */
      for (var idx:int = 0; idx < _search_items.length; idx++) {
        var elem:* = _search_items.getItemAt(idx);
        if (elem._id == id) {
          var event:ResultEvent = new ResultEvent('search.show', false, true, elem);
          if (onResult != null)
            onResult(event);
        }
      }
    }
  }
}
