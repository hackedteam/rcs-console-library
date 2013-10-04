package it.ht.rcs.console.dashboard.controller
{
  import flash.events.Event;
  import flash.events.TimerEvent;
  import flash.utils.Timer;
  
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.ObjectUtils;
  import it.ht.rcs.console.accounting.controller.UserManager;
  import it.ht.rcs.console.accounting.model.User;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.events.SessionEvent;
  import it.ht.rcs.console.operation.model.Operation;
  import it.ht.rcs.console.push.PushController;
  import it.ht.rcs.console.push.PushEvent;
  import it.ht.rcs.console.search.controller.SearchManager;
  import it.ht.rcs.console.search.model.SearchItem;
  import it.ht.rcs.console.target.controller.TargetManager;
  import it.ht.rcs.console.target.model.Target;
  
  import mx.collections.ArrayCollection;
  import mx.collections.ListCollectionView;
  import mx.collections.Sort;
  import mx.collections.SortField;
  import mx.rpc.events.FaultEvent;
  
  public class DashboardController extends ItemManager
  {
    public function DashboardController() { super(DashboardItem); }
    
    private static var _instance:DashboardController = new DashboardController();
    public static function get instance():DashboardController { return _instance; } 
    
    private var _user:User;
    private var _dashboard_ids:ArrayCollection;
    
   
    
    public function startListeningForUpdates():void
    {
        PushController.instance.addEventListener(PushEvent.DASHBOARD, onUpdate)
    }

    public function stopListeningForUpdates():void
    {
      PushController.instance.removeEventListener(PushEvent.DASHBOARD, onUpdate)
    }
    
    private function onUpdate(e:PushEvent):void
    {
      trace("GOT UPDATE IN DASHBOARD");
      
        var item:DashboardItem=DashboardController.instance.getItem(e.data.id)
        if (item != null) updateItem(item, e.data);
        else 
          trace("update operation")
        
    }


    override public function refresh():void
    {
      super.refresh();
      for each (var id:String in _dashboard_ids.source) {
        SearchManager.instance.showItem(id, function (item:SearchItem):void {
          if (item != null)
            manageItem(item);
          trace("Refresh > "+item.name)
        }, function(fe:FaultEvent):void {}); // Do nothing when disconnected.
      }
      dispatchDataLoadedEvent();
      
    }
    
    private function manageItem(item:SearchItem):void
    {
      item._kind == 'operation' ? manageOperation(item) : manageAgentTarget(item); //push mode: no operations > only agents and target 
    }
    
    private function updateItem(item:DashboardItem, data:*):void
    {
      updateAgentTarget(item, data); //only agents and target 
    }
    
    
    
    private var currentOperationId:String;
    private function manageOperation(item:SearchItem):void
    {
      trace("Manage Operation > "+item.name)
      var dashboardItem:DashboardItem = getItem(item._id);
      if (dashboardItem == null) {
        dashboardItem = new DashboardItem();
        dashboardItem._id = item._id;
        dashboardItem._kind = item._kind;
        dashboardItem.status = item.status;
        dashboardItem.scout=item.scout;
        
        currentOperationId = dashboardItem._id;
        var sort:Sort = new Sort();
        sort.fields = [new SortField('name', true, false)];
        var view:ListCollectionView = TargetManager.instance.getView(sort, operationFilterFunction);
        
        dashboardItem.targets = new ArrayCollection();
        for each (var target:Target in view) {
          var ti:TargetInfo = new TargetInfo();
          ti._id = target._id;
          ti.name = target.name;
         
          dashboardItem.targets.addItem(ti);
        }
        
        addItem(dashboardItem);
      }
      
      if (!item.stat) return; // TODO: Demo fix
      //trace(dashboardItem.name)
      dashboardItem.name = item.name;
      dashboardItem.desc = item.desc;
      dashboardItem.lastSync = item.stat.last_sync;
      dashboardItem.lastSyncStatus = item.stat.last_sync_status;
      dashboardItem.totSync = 0;
      dashboardItem.totTot = 0;
      
      updateTargetList(dashboardItem);
      
    }
    
    private function operationFilterFunction(item:Object):Boolean
    {
      return item && item.path[0] == currentOperationId;
    }
    
    private function updateTargetList(dashboardItem:DashboardItem):void
    {
    
      for each (var t:TargetInfo in dashboardItem.targets.source) {
      
        SearchManager.instance.showItem(t._id, function(target:SearchItem):void {
          
          if (!target.stat) return; // TODO: Demo fix
          
          if (!dashboardItem.targetBaselines.hasOwnProperty(target._id))
            dashboardItem.targetBaselines[target._id] = target.stat;
          
          var totTot:Number = 0;
          var totSync:Number = 0;
          
          var evidenceHash:Object = ObjectUtils.toHash(target.stat.evidence);
          var dashboardHash:Object = ObjectUtils.toHash(target.stat.dashboard);

          //t.name = target.name;
          t.tot = 0;
          t.sync = 0;
          for (var type:String in evidenceHash)
          {
            if (evidenceHash[type] == 0)
              continue;
    
            t.tot += evidenceHash[type] - dashboardItem.targetBaselines[target._id].evidence[type];
            t.sync += dashboardHash[type];
          }
          dashboardItem.scout=t.scout;//????
          dashboardItem.totTot += t.tot;
          dashboardItem.totSync += t.sync;
          
          if (dashboardItem.targetBaselines[target._id].last_sync == target.stat.last_sync) {
            dashboardItem.totSync = 0;
            t.sync = 0;
          }

        }, function(fe:FaultEvent):void {}); // Do nothing when disconnected.
        
      }
    }
    
    private function manageAgentTarget(item:SearchItem):void
    {
      var dashboardItem:DashboardItem = getItem(item._id);
      if (dashboardItem == null) {
        dashboardItem = new DashboardItem();
        dashboardItem._id = item._id;
        dashboardItem._kind = item._kind;
        dashboardItem.status = item.status;
        dashboardItem.type = item.type;
        dashboardItem.platform = item.platform;
        dashboardItem.demo = item.demo;
        dashboardItem.baseline = item.stat;
        dashboardItem.scout=item.scout;
        addItem(dashboardItem);
      }
      
      if (!item.stat) return; // TODO: Demo fix
      
      dashboardItem.name = item.name;
      dashboardItem.desc = item.desc;
      dashboardItem.scout=item.scout;
      dashboardItem.lastSync = item.stat.last_sync;
      dashboardItem.lastSyncStatus = item.stat.last_sync_status;
      
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
        
        module = {tot: 0, sync: 0};
        module.type = type;
        module.tot = evidenceHash[type] - dashboardItem.baseline.evidence[type];
        totTot += module.tot;
        module.sync = dashboardHash[type];
        totSync += module.sync;
        modules.addItem(module);
      }
      
      if (dashboardItem.baseline.last_sync == item.stat.last_sync && !DB.instance.demo) {
        totSync = 0;
        for each (module in modules)
          module.sync = 0;
      }
      
      var sort:Sort = new Sort();
      sort.fields = [new SortField('type', true, false)];
      modules.sort = sort;
      modules.refresh();
      
      dashboardItem.modules = modules;
      dashboardItem.totTot  = totTot;
      dashboardItem.totSync = totSync;
      
    }
    
    private function updateAgentTarget(dashboardItem:DashboardItem, data:*):void
    {
   
      
      if (dashboardItem == null) {
        return;
      }
      
      if (!data.stats) return; // TODO: Demo fix
      
     
      dashboardItem.lastSync = data.stats.last_sync;
      dashboardItem.lastSyncStatus = data.stats.last_sync_status;
      
      var totTot:Number = 0;
      var totSync:Number = 0;
      var modules:ArrayCollection = new ArrayCollection();
      
      var evidenceHash:Object = (data.stats.evidence);
      var dashboardHash:Object =(data.stats.dashboard);
      
      var module:Object;
      for (var type:String in evidenceHash)
      {
        if (evidenceHash[type] == 0)
          continue;
        if(!dashboardItem.baseline.evidence.hasOwnProperty(type)) 
          continue; //temp
        
        module = {tot: 0, sync: 0};
        module.type = type;
        if(dashboardItem.baseline.evidence.hasOwnProperty(type)) 
          module.tot = evidenceHash[type] - dashboardItem.baseline.evidence[type];
        totTot += module.tot;
        if(dashboardHash[type]) module.sync = dashboardHash[type];
        totSync += module.sync;
        modules.addItem(module);
      }
      
      if (dashboardItem.baseline.last_sync == data.stats.last_sync && !DB.instance.demo) {
        totSync = 0;
        for each (module in modules)
        module.sync = 0;
      }
      
      var sort:Sort = new Sort();
      sort.fields = [new SortField('type', true, false)];
      modules.sort = sort;
      modules.refresh();
      
      dashboardItem.modules = modules;
      dashboardItem.totTot  = totTot;
      dashboardItem.totSync = totSync;
      
      if(dashboardItem._kind=="target")
      {
        var item:SearchItem=SearchManager.instance.getItem(dashboardItem._id)
        var o:SearchItem=SearchManager.instance.getItem(item.path[0])
        trace("Operation to update: "+o.name)
        updateOperation(o, data)
      }
    }
    
    private function updateOperation(item:SearchItem, data):void
    {
      trace("Manage Operation > "+item.name)
      var dashboardItem:DashboardItem = getItem(item._id);
        if(!dashboardItem)
        return;
      
      if (!item.stat) return; // TODO: Demo fix
      //trace(dashboardItem.name)
     
      dashboardItem.lastSync = data.stats.last_sync;
      dashboardItem.lastSyncStatus = data.stats.last_sync_status;
      dashboardItem.totSync = 0;
      dashboardItem.totTot = 0;
      
      //updateTargetList(dashboardItem);
      
      for each (var t:TargetInfo in dashboardItem.targets.source) {
        
        SearchManager.instance.showItem(t._id, function(target:SearchItem):void {
          
          if (!target.stat) return; // TODO: Demo fix
          
          if (!dashboardItem.targetBaselines.hasOwnProperty(target._id))
            dashboardItem.targetBaselines[target._id] = target.stat;
          
          var totTot:Number = 0;
          var totSync:Number = 0;
          
          var evidenceHash:Object = ObjectUtils.toHash(target.stat.evidence);
          var dashboardHash:Object = ObjectUtils.toHash(target.stat.dashboard);
          
          //t.name = target.name;
          t.tot = 0;
          t.sync = 0;
          for (var type:String in evidenceHash)
          {
            if (evidenceHash[type] == 0)
              continue;
            
            t.tot += evidenceHash[type] - dashboardItem.targetBaselines[target._id].evidence[type];
            t.sync += dashboardHash[type];
          }
          dashboardItem.scout=t.scout;//????
          dashboardItem.totTot += t.tot;
          dashboardItem.totSync += t.sync;
          
          if (dashboardItem.targetBaselines[target._id].last_sync == target.stat.last_sync) {
            dashboardItem.totSync = 0;
            t.sync = 0;
          }
          
        }, function(fe:FaultEvent):void {}); // Do nothing when disconnected.
        
      }
      
    
    
    }
    
    
    override protected function onLogin(e:SessionEvent):void
    {
      super.onLogin(e);
      if(Console.currentSession)
      user = Console.currentSession.user;
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
        
        var o:Object={id:item._id, section:"operations", type:item._kind}
        UserManager.instance.add_recent(_user, o);
        manageItem(item);
      }, function(fe:FaultEvent):void {}); // Do nothing when disconnected.
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
