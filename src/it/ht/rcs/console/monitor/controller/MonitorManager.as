package it.ht.rcs.console.monitor.controller
{
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	import it.ht.rcs.console.DB;
	import it.ht.rcs.console.controller.ItemManager;
	import it.ht.rcs.console.monitor.model.StatusCounters;
	import it.ht.rcs.console.utils.CounterBaloon;
	
	import mx.collections.ArrayCollection;
	import mx.core.FlexGlobals;
	import mx.rpc.events.ResultEvent;

  public class MonitorManager extends ItemManager
  {
    
    /* singleton */
    private static var _instance:MonitorManager = new MonitorManager();
    public static function get instance():MonitorManager { return _instance; }
    
    private var _counterBaloon:CounterBaloon = new CounterBaloon();
    
    /* for the auto refresh every 15 seconds */
    private var _autorefresh:Timer = new Timer(15000);
    
    override public function refresh():void
    {
      super.refresh();
      DB.instance.monitor.all(onResult);
    }
    
    private function onResult(e:ResultEvent):void
    {
      clear();
      for each (var item:* in e.result.source)
        addItem(item);
      dispatchDataLoadedEvent();
    }
    
    override protected function onItemRemove(o:*):void 
    { 
      DB.instance.monitor.destroy(o._id);
      onRefreshCounter(null);
    }
    
    private function onAutoRefresh(e:Event):void
    {
      refresh();
    }
    
//    override public function start():void
//    {
//      super.start();
//      _autorefresh.addEventListener(TimerEvent.TIMER, onAutoRefresh);
//      FlexGlobals.topLevelApplication.addEventListener(RefreshEvent.REFRESH, onRefreshCounter);
//    }
	
//    override public function stop():void
//    {
//      super.stop();
//      _autorefresh.removeEventListener(TimerEvent.TIMER, onAutoRefresh);
//      FlexGlobals.topLevelApplication.removeEventListener(RefreshEvent.REFRESH, onRefreshCounter);
//    }

    
//    public function removeItem(o:Object):void
//    {
//      _items.removeItem(o);
//      /* update the couters without waiting for next auto-refresh */
//    }
    
    public function start_counters():void
    {
      /* add the baloon to the screen */
      FlexGlobals.topLevelApplication.addElement(_counterBaloon);
      
      /* start the auto refresh when the section is open */
      _autorefresh.addEventListener(TimerEvent.TIMER, onRefreshCounter);
      _autorefresh.start();
      
      /* the first refresh */
      onRefreshCounter(null);
    }

    public function stop_counters():void
    {
      // TODO: rifattorizzare con skin
      try {
        FlexGlobals.topLevelApplication.getElementIndex(_counterBaloon);
        FlexGlobals.topLevelApplication.removeElement(_counterBaloon);
      } catch (e:Error) {
      }
      
      /* stop the auto refresh when going away */
      _autorefresh.removeEventListener(TimerEvent.TIMER, onRefreshCounter);
      _autorefresh.stop();
    }

    private function onRefreshCounter(e:Event):void
    {
      trace(_classname + ' -- Refresh Counters');
      
      DB.instance.monitor.counters(onMonitorCounters);
    }
    
    // TODO: refactor the baloon outside the manager !!!!
    
    private function onMonitorCounters(e:ResultEvent):void
    {
      /* get the position of the Monitor button */
      var buttons:ArrayCollection = FlexGlobals.topLevelApplication.mainPanel.sectionsButtonBar.dataProvider;
      var len:int = buttons.length;
      var index:int = buttons.toArray().indexOf("Monitor") + 1;
      
      /* find the correct displacement (starting from right) */
      _counterBaloon.right = 3 + ((len - index) * 90);
      _counterBaloon.top = 43;

      /* default, reset all values */
      _counterBaloon.value = 0;
      
      var counters:StatusCounters = e.result as StatusCounters;
      
      if (counters['error'] != 0) {
        _counterBaloon.value = counters['error'];
        _counterBaloon.style = 'alert';
      } else if (counters['warn'] != 0) {
        _counterBaloon.value = counters['warn'];
        _counterBaloon.style = 'warn';        
      }
      
      /* display it or not */
      if (_counterBaloon.value > 0)
        _counterBaloon.visible = true;
      else
        _counterBaloon.visible = false;
    }
        
  }
  
}