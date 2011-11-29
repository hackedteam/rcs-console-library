package it.ht.rcs.console.dashboard.controller
{
  
  import flash.events.Event;
  import flash.events.TimerEvent;
  import flash.utils.Timer;
  
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.accounting.controller.UserManager;
  import it.ht.rcs.console.accounting.model.User;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.controller.Manager;
  import it.ht.rcs.console.events.RefreshEvent;
  import it.ht.rcs.console.search.controller.SearchManager;
  import it.ht.rcs.console.search.model.SearchItem;
  
  import mx.collections.ArrayCollection;
  import mx.collections.ArrayList;
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
    
    /* for the auto refresh every 15 seconds */
    private var _autorefresh:Timer = new Timer(15000);
    
    public function DashboardController()
    {
      super();
    }
    
    override public function start():void
    {
      super.start();
      _autorefresh.addEventListener(TimerEvent.TIMER, onAutoRefresh);
      _autorefresh.start();
    }
    
    override public function stop():void
    {
      super.stop();
      _autorefresh.removeEventListener(TimerEvent.TIMER, onAutoRefresh);
      _autorefresh.stop();
    }
    
    public function set user(user:User):void
    {
      _user = user;
      _dashboard_ids = _user.dashboard_ids;
    }
    
    private function onAutoRefresh(e:Event):void
    {
      refresh();
    }
    
    override public function refresh():void
    {
      /* don't remove all the element here to avoid flickering
       * we instead use the addOrReplaceItem
       */
      //_items.removeAll();

      /* for each element in the user profile, get the items from the managers */ 
      _user.dashboard_ids.source.forEach(function _(element:*, index:int, arr:Array):void {
        SearchManager.instance.showItem(element, function (item:SearchItem):void {
          addOrUpdateItem(_items, item);
        });
      });
      
      dispatchDataLoadedEvent();
    }
    
    private function addOrUpdateItem(array:ArrayList, item:*):void
    {
      for (var idx:int = 0; idx < array.length; idx++) {
        var elem:* = array.getItemAt(idx);
        if (elem._id == item._id) {
          /* don't replace the item here, otherwise the renderer will be destroyed and recreated
           * causing it to restart from initial state. Just update the stats
           */
          //array.setItemAt(item, idx);
          elem.stat = item.stat;
          return;
        }
      }
      addItem(item);
    }
    
    public function newDashItem(id:String, callback:Function=null):void
    {     
      // don't insert if already in list
      for (var idx:int = 0; idx < _dashboard_ids.length; idx++) {
        var elem:* = _dashboard_ids.getItemAt(idx);
        if (elem == id) {
          return;
        }
      }
      _dashboard_ids.addItem(id);
      
      SearchManager.instance.showItem(id, function (item:SearchItem):void {
        _items.addItem(item);
      });
      
      /* save in the user profile the new list of items */
      UserManager.instance.update(_user, {dashboard_ids: _dashboard_ids.source});
      if (callback != null)
        callback(_dashboard_ids);
    }
    
    override public function removeItem(o:Object):void
    {
      var idx:int = _dashboard_ids.getItemIndex(o._id as String);
      _dashboard_ids.removeItemAt(idx);
      
      _items.removeItem(o);
      
      /* save in the user profile the new list of items */
      UserManager.instance.update(_user, {dashboard_ids: _dashboard_ids.source});
    }
    
  }
}