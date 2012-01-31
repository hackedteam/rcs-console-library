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
  import it.ht.rcs.console.ObjectUtils;
  
  import mx.collections.ArrayCollection;
  
  public class DashboardController extends ItemManager
  {
    public function DashboardController() { super(DashboardItem); }
    private static var _instance:DashboardController = new DashboardController();
    public static function get instance():DashboardController { return _instance; } 
    
    private var _user:User;
    private var _dashboard_ids:ArrayCollection;
    
    /* auto refresh every 10 seconds */
    private var autoRefresh:Timer = new Timer(3000);
    
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
      refresh();
    }
    
    override public function refresh():void
    {
      super.refresh();
      for each (var id:String in _dashboard_ids.source) {
        SearchManager.instance.showItem(id, function (item:SearchItem):void {
          manageItem(item);
        });
      }
    }
    
    private static var iter:Number = 0;
    private function manageItem(item:SearchItem):void
    {
      var dashboardItem:DashboardItem = getItem(item._id);
      if (dashboardItem == null) {
        dashboardItem = new DashboardItem();
        dashboardItem._id = item._id;
        dashboardItem._kind = item._kind;
        dashboardItem.baseline = item.stat.evidence;
        dashboardItem.lastSyncBaseline = item.stat.last_sync;
        addItem(dashboardItem);
      }
      
      dashboardItem.name = item.name;
      
      var totTot:Number = 0;
      var totSync:Number = 0;
      var evidence:ArrayCollection = new ArrayCollection();
      var ev:Object;
      
      var evidenceHash:Object = ObjectUtils.toHash(item.stat.evidence);
      var dashboardHash:Object = ObjectUtils.toHash(item.stat.dashboard);
      
      for (var type:String in evidenceHash)
      {
        if (evidenceHash[type] == 0) continue;
        ev = {};
        ev._id = type;
        ev.name = type;
        ev.tot = evidenceHash[type] - dashboardItem.baseline[type];
        totTot += ev.tot;
        ev.sync = dashboardHash[type];
        totSync += ev.sync;
        evidence.addItem(ev);
      }
      
      if (dashboardItem.lastSyncBaseline == item.stat.last_sync)
        for each (var x:Object in evidence)
          x.sync = null;

      dashboardItem.last_sync = item.stat.last_sync;
      
      dashboardItem.evidence = evidence;
      dashboardItem.totTot = totTot;
      dashboardItem.totSync = totSync;
      
      //iter++;
    }
    
    public function set user(user:User):void
    {
      _user = user;
      _dashboard_ids = _user.dashboard_ids;
    }
    
    public function newDashItem(id:String):void
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
        manageItem(item);
      });
      
      /* save in the user profile the new list of items */
      UserManager.instance.update(_user, {dashboard_ids: _dashboard_ids.source});
    }
    
    override protected function onItemRemove(item:*):void
    {
      var idx:int = _dashboard_ids.getItemIndex(item._id);
      if (idx != -1)
        _dashboard_ids.removeItemAt(idx);
      
      UserManager.instance.update(_user, {dashboard_ids: _dashboard_ids.source});
    }
    
  }
  
}