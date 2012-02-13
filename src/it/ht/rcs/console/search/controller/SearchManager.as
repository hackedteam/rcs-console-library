package it.ht.rcs.console.search.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.search.model.SearchItem;
  
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
    
    public function showItem(id:String, callback:Function=null):void
    {
      DB.instance.search.show(id, function(e:ResultEvent):void {
        var item:SearchItem = e.result as SearchItem;
        if (getItem(item._id) == null)
          addItem(item);
        if (callback != null)
          callback(item);
      });
    }
    
  }

}