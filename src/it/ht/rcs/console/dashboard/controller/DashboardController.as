package it.ht.rcs.console.dashboard.controller
{
  
  import flash.events.Event;
  
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.accounting.controller.UserManager;
  import it.ht.rcs.console.accounting.model.User;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.controller.Manager;
  import it.ht.rcs.console.events.RefreshEvent;
  import it.ht.rcs.console.search.controller.SearchManager;
  import it.ht.rcs.console.search.model.SearchItem;
  
  import mx.collections.ArrayCollection;
  import mx.collections.ISort;
  import mx.collections.ListCollectionView;
  import mx.rpc.events.ResultEvent;
  
  public class DashboardController extends ItemManager
  {
    
    /* singleton */
    private static var _instance:DashboardController = new DashboardController();
    public static function get instance():DashboardController { return _instance; } 
    
    private var _user:User;
    private var _dashboard_ids:ArrayCollection;
    
    public function DashboardController()
    {
      super();
    }
    
    public function set user(user:User):void
    {
      _user = user;
      _dashboard_ids = _user.dashboard_ids;
    }
    
    override protected function onRefresh(e:RefreshEvent):void
    {
      _items.removeAll();

      /* for each element in the user profile, get the items from the managers */ 
      _user.dashboard_ids.source.forEach(function _(element:*, index:int, arr:Array):void {
        var item:SearchItem = SearchManager.instance.getItem(element);
        if (item)
          addItem(item);
      });
      
      dispatchDataLoadedEvent();
    }
    
    public function newDashItem(id:String, callback:Function=null):void
    {     
      _dashboard_ids.addItem(id);
      
      var item:SearchItem = SearchManager.instance.getItem(id);
      if (item)
        addItem(item);
      
      /* save in the user profile the new list of items */
      UserManager.instance.update(_user, {dashboard_ids: _dashboard_ids});
      if (callback != null)
        callback(_dashboard_ids);
    }
    
    override public function removeItem(o:Object):void
    {
      var idx:int = _dashboard_ids.getItemIndex(o._id as String);
      _dashboard_ids.removeItemAt(idx);
      
      _items.removeItem(o);
      
      /* save in the user profile the new list of items */
      UserManager.instance.update(_user, {dashboard_ids: _dashboard_ids});
    }
    
  }
}