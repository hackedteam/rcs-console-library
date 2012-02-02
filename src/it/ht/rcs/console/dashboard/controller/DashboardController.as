package it.ht.rcs.console.dashboard.controller
{
  import flash.events.Event;
  import flash.events.TimerEvent;
  import flash.utils.Timer;
  
  import it.ht.rcs.console.ObjectUtils;
  import it.ht.rcs.console.accounting.controller.UserManager;
  import it.ht.rcs.console.accounting.model.User;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.search.controller.SearchManager;
  import it.ht.rcs.console.search.model.SearchItem;
  import it.ht.rcs.console.target.controller.TargetManager;
  import it.ht.rcs.console.target.model.Target;
  
  import mx.collections.ArrayCollection;
  import mx.collections.ListCollectionView;
  import mx.collections.Sort;
  import mx.collections.SortField;
  
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
    
    private function manageItem(item:SearchItem):void
    {
      item._kind == 'operation' ? manageOperation(item) : manageAgentTarget(item);
    }
    
    private function manageOperation(item:SearchItem):void
    {
      var dashboardItem:DashboardItem = getItem(item._id);
      if (dashboardItem == null) {
        dashboardItem = new DashboardItem();
        dashboardItem._id = item._id;
        dashboardItem._kind = item._kind;
        addItem(dashboardItem);
      }
      
      dashboardItem.totSync = 0;
      dashboardItem.totTot = 0;
      dashboardItem.targets = updateTargetList(dashboardItem, item);
      dashboardItem.name = item.name;
      
    }
    
    private function updateTargetList(dashboardItem:DashboardItem, item:SearchItem):ArrayCollection
    {
      var targets:ArrayCollection = new ArrayCollection();
      
      var sort:Sort = new Sort();
      sort.fields = [new SortField('name', true, false)];
      targets.sort = sort;
      targets.refresh();
      
      var view:ListCollectionView = TargetManager.instance.getView();
      for each (var target:Target in view) {
        if (target.path[0] == item._id) {
          SearchManager.instance.showItem(target._id, function(item:SearchItem):void {
            
            if (!dashboardItem.targetBaselines.hasOwnProperty(item._id))
              dashboardItem.targetBaselines[item._id] = item.stat;
            
            var totTot:Number = 0;
            var totSync:Number = 0;
            
            var evidenceHash:Object = ObjectUtils.toHash(item.stat.evidence);
            var dashboardHash:Object = ObjectUtils.toHash(item.stat.dashboard);
            
            var model:Object = {};
            model.name = item.name;
            for (var type:String in evidenceHash)
            {
              if (evidenceHash[type] == 0)
                continue;

              model.tot = evidenceHash[type] - dashboardItem.targetBaselines[item._id].evidence[type];
              model.sync = dashboardHash[type];
            }
            dashboardItem.totTot += model.tot;
            dashboardItem.totSync += model.sync;
            
            if (dashboardItem.targetBaselines[item._id].last_sync == item.stat.last_sync)
              model.sync = 0;
            
            targets.addItem(model);
          });
        }
      }
      
      return targets;
    }
    
    private function manageAgentTarget(item:SearchItem):void
    {
      var dashboardItem:DashboardItem = getItem(item._id);
      if (dashboardItem == null) {
        dashboardItem = new DashboardItem();
        dashboardItem._id = item._id;
        dashboardItem._kind = item._kind;
        dashboardItem.baseline = item.stat;
        addItem(dashboardItem);
      }
      
      dashboardItem.name = item.name;
      dashboardItem.lastSync = item.stat.last_sync;
      
      var totTot:Number = 0;
      var totSync:Number = 0;
      var modules:ArrayCollection = new ArrayCollection();
      
      var evidenceHash:Object = ObjectUtils.toHash(item.stat.evidence);
      var dashboardHash:Object = ObjectUtils.toHash(item.stat.dashboard);
      
      var module:Object;
      for (var type:String in evidenceHash)
      {
        if (evidenceHash[type] == 0)
          continue;
        
        module = {};
        module.type = type;
        module.tot = evidenceHash[type] - dashboardItem.baseline.evidence[type];
        totTot += module.tot;
        module.sync = dashboardHash[type];
        totSync += module.sync;
        modules.addItem(module);
      }
      
      if (dashboardItem.baseline.last_sync == item.stat.last_sync) {
        totSync = 0;
        for each (module in modules)
          module.sync = null;
      }
      
      var sort:Sort = new Sort();
      sort.fields = [new SortField('type', true, false)];
      modules.sort = sort;
      modules.refresh();
      
      dashboardItem.modules = modules;
      dashboardItem.totTot = totTot;
      dashboardItem.totSync = totSync;
    }
    
    public function set user(user:User):void
    {
      _user = user;
      _dashboard_ids = _user.dashboard_ids;
    }
    
    public function newDashboardItem(id:String):void
    {
      if (_dashboard_ids.getItemIndex(id) != -1)
        return;
      
      _dashboard_ids.addItem(id);
      UserManager.instance.update(_user, {dashboard_ids: _dashboard_ids.source});
      
      SearchManager.instance.showItem(id, function (item:SearchItem):void {
        UserManager.instance.add_recent(_user, item);
        manageItem(item);
      });
    }
    
    override protected function onItemRemove(item:*):void
    {
      var idx:int = _dashboard_ids.getItemIndex(item._id);
      if (idx != -1) {
        _dashboard_ids.removeItemAt(idx);
        UserManager.instance.update(_user, {dashboard_ids: _dashboard_ids.source});
      }
    }
    
  }
  
}
