package it.ht.rcs.console.search.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.search.model.SearchItem;
  
  import mx.rpc.events.FaultEvent;
  import mx.rpc.events.ResultEvent;

  public class SearchManager extends ItemManager
  {
    
    [Bindable]
    public var filter:Object = {};
    
    private static var _instance:SearchManager = new SearchManager();
    public static function get instance():SearchManager { return _instance; }
    
    override public function refresh():void
    {
      super.refresh();
      DB.instance.search.all(filter, onResult);
    }
    
    private function onResult(e:ResultEvent):void
    {
      clear();
      for each (var item:* in e.result.source)
        addItem(item);
      dispatchDataLoadedEvent();
    }
    
    // logic: when showing, if the item is present, replace it, if not, just add it.
    // if show returns an error the item is gone, delete it from list
    public function showItem(id:String, onResult:Function=null, onFault:Function=null):void
    {
      var faultHandler:Function = onFault != null ? onFault : 
      function(fe:FaultEvent):void {
        var current:SearchItem = getItem(id);
        if (current != null)
          removeItem(current);
      };
      
      DB.instance.search.show(id, function(re:ResultEvent):void {
        var item:SearchItem = re.result as SearchItem;
        var current:SearchItem = getItem(item._id);
        if (current != null)
          removeItem(current);
        addItem(item);
        if (onResult != null)
          onResult(item);
      }, faultHandler);
    }
    
  }

}