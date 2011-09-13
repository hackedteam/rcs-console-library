package it.ht.rcs.console.search.rest
{
  import it.ht.rcs.console.backdoor.rest.DBBackdoorDemo;
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
      DBBackdoorDemo.backdoors.source.forEach(addItemAsSearchItem);
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
  }
}
