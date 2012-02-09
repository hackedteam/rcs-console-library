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
    
    public function getStatusByAddress(address:String):Status
    {
      for each (var o:* in _items.source)
      if (o.address == address)
        return o;
      return null;
    }
    
    private var _monitorCounter:Object = {value: NaN, style: 'info'};
    
    public function startCounters():void
    {
      autoRefresh.addEventListener(TimerEvent.TIMER, onAutoRefresh);
      autoRefresh.start();
      
      /* the first refresh */
      onAutoRefresh(null);
    }

    public function stopCounters():void
    {
      autoRefresh.removeEventListener(TimerEvent.TIMER, onAutoRefresh);
      autoRefresh.stop();
    }

    public var refreshView:Boolean = false;
    private function onAutoRefresh(e:Event):void
    {
      DB.instance.monitor.counters(onMonitorCounters);
      
      if (refreshView)
        refresh();
    }
    
    private function onMonitorCounters(e:ResultEvent):void
    {
      var error:int = e.result.error as int;
      var warn:int = e.result.warn as int;
      
      if (error > 0) {
        _monitorCounter.value = error 
        _monitorCounter.style = 'alert';
      }
      if (warn > 0) {
        _monitorCounter.value = warn 
        _monitorCounter.style = 'warn';
      }

      dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, 'monitorCounter', null, _monitorCounter));
    }
    
    [Bindable(event='propertyChange')]
    public function get monitorCounter():Object
    {
      return _monitorCounter;
    }
        
  }
  
}