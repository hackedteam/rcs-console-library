package it.ht.rcs.console.search.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.events.RefreshEvent;
  import it.ht.rcs.console.search.model.SearchItem;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;

  public class SearchManager extends ItemManager
  {
    [Bindable]
    public var filter:Object = {};
    
    private static var _instance:SearchManager = new SearchManager();
    public static function get instance():SearchManager { return _instance; } 
    
    public function SearchManager()
    {
      super();
    }
    
    override protected function onRefresh(e:RefreshEvent):void
    {
      super.onRefresh(e);
      DB.instance.search.all(filter, onResult);
    }
    
    private function onResult(e:ResultEvent):void
    {
      var items:ArrayCollection = e.result as ArrayCollection;
      _items.removeAll();
      items.source.forEach(function(element:*, index:int, array:Array):void {
        addItem(element);
      });
    }
    
    public function showItem(id:String, callback:Function):void
    {
      DB.instance.search.show(id, function (e:ResultEvent):void {
        callback(e.result as SearchItem);
      });
    }
    
  }
}
