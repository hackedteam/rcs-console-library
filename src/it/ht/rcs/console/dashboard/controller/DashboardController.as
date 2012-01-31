package it.ht.rcs.console.dashboard.controller
{
  import flash.events.Event;
  import flash.events.TimerEvent;
  import flash.utils.Timer;
  
  import it.ht.rcs.console.accounting.controller.UserManager;
  import it.ht.rcs.console.accounting.model.User;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.search.controller.SearchManager;
  import it.ht.rcs.console.search.model.SearchItem;
  
  import mx.collections.ArrayCollection;
  import mx.collections.ArrayList;
  
  public class DashboardController extends ItemManager
  {
    
    private static var _instance:DashboardController = new DashboardController();
    public static function get instance():DashboardController { return _instance; } 
    
    private var _user:User;
    private var _dashboard_ids:ArrayCollection;
    
    /* auto refresh every 15 seconds */
    private var autoRefresh:Timer = new Timer(10000);
    
    public function startAutoRefresh():void
    {
      autoRefresh.addEventListener(TimerEvent.TIMER, onAutoRefresh);
      autoRefresh.start();
    }

    public function stopAutoRefresh():void
    {
      autoRefresh.removeEventListener(TimerEvent.TIMER, onAutoRefresh);
      autoRefresh.stop();
    }
    
    private function onAutoRefresh(e:Event):void
    {
      trace('Dashboard autorefresh')
      refresh();
    }
    
    override public function refresh():void
    {
      super.refresh();
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
    
    public function set user(user:User):void
    {
      _user = user;
      _dashboard_ids = _user.dashboard_ids;
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
          
          trace('elem.stat.evidence');
          for (var p:* in elem.stat.evidence) {
            trace('.');
            trace( p + ": " + elem.stat.evidence[p]);
          }
          trace('elem.stat.dashboard');
          for (var p:String in elem.stat.dashboard) {
            trace( p + ": " + elem.stat.dashboard[p]);
          }
          
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
        addItem(item);
      });
      
      /* save in the user profile the new list of items */
      UserManager.instance.update(_user, {dashboard_ids: _dashboard_ids.source});
      if (callback != null)
        callback(_dashboard_ids);
    }
    
    override public function removeItem(o:Object):void
    {
      var idx:int = _dashboard_ids.getItemIndex(o._id as String);
      if (idx != -1) {
        _dashboard_ids.removeItemAt(idx);
        _items.removeItem(o);
        /* save in the user profile the new list of items */
        UserManager.instance.update(_user, {dashboard_ids: _dashboard_ids.source});
      }
    }
    
  }
}