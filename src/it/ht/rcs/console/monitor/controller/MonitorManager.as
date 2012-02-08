package it.ht.rcs.console.monitor.controller
{
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	import it.ht.rcs.console.DB;
	import it.ht.rcs.console.controller.ItemManager;
	import it.ht.rcs.console.events.SessionEvent;
	import it.ht.rcs.console.monitor.model.Status;
	
	import mx.events.PropertyChangeEvent;
	import mx.rpc.events.ResultEvent;

  public class MonitorManager extends ItemManager
  {
    
    public function MonitorManager() { super(Status); }
    
    private static var _instance:MonitorManager = new MonitorManager();
    public static function get instance():MonitorManager { return _instance; }
    
    /* for the auto refresh every 15 seconds */
    private var autoRefresh:Timer = new Timer(15000);
    
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
      // update baloon?
    }
    
    override protected function onLogout(e:SessionEvent):void
    {
      super.onLogout(e);
      stopCounters();
    }
    
    private var _monitorCounter:Object = {value: NaN, style: 'info'};
    
    public function startCounters():void
    {
      autoRefresh.addEventListener(TimerEvent.TIMER, onRefreshCounter);
      autoRefresh.start();
      
      /* the first refresh */
      onRefreshCounter(null);
    }

    public function stopCounters():void
    {
      autoRefresh.removeEventListener(TimerEvent.TIMER, onRefreshCounter);
      autoRefresh.stop();
    }

    private function onRefreshCounter(e:Event):void
    {
      DB.instance.monitor.counters(onMonitorCounters);
    }
    
    private function onMonitorCounters(e:ResultEvent):void
    {
      _monitorCounter.value = e.result.error as int;
      _monitorCounter.style = 'alert';
      dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, 'monitorCounter', null, _monitorCounter));
    }
    
    [Bindable(event='propertyChange')]
    public function get monitorCounter():Object
    {
      return _monitorCounter;
    }
        
  }
  
}