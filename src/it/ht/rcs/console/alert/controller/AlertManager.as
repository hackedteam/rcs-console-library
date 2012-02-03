package it.ht.rcs.console.alert.controller
{
  import flash.events.Event;
  import flash.events.TimerEvent;
  import flash.utils.Timer;
  
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.alert.model.Alert;
  import it.ht.rcs.console.controller.ItemManager;
  
  import mx.collections.ArrayCollection;
  import mx.events.PropertyChangeEvent;
  import mx.rpc.events.ResultEvent;
  
  public class AlertManager extends ItemManager
  {
    
    private var _alertCount:Number = Number.NaN;

    [Bindable(event="propertyChange")]
    public function get alertCount():Number
    {
      return _alertCount;
    }
    
    /* for the auto refresh every 15 seconds */
    private var _autorefresh:Timer = new Timer(15000);
    
    /* singleton */
    private static var _instance:AlertManager = new AlertManager();
    public static function get instance():AlertManager { return _instance; } 
    
    public function AlertManager()
    {
      super(Alert);
    }
    
    override protected function onItemRemove(o:*):void
    { 
      DB.instance.alert.destroy(o);
    }
    
    override protected function onItemUpdate(e:*):void
    { 
      var o:Object = new Object;
      if (e.newValue is ArrayCollection)
        o[e.property] = e.newValue.source;
      else
        o[e.property] = e.newValue;
      DB.instance.alert.update(e.source, o);
    }
    
    override public function refresh():void
    {
      super.refresh();
      DB.instance.alert.all(onAlertIndexResult);
    }
    
    private function onAlertIndexResult(e:ResultEvent):void
    {
      var items:ArrayCollection = e.result as ArrayCollection;
      _items.removeAll();
      items.source.forEach(function _(element:*, index:int, arr:Array):void {
        addItem(element as Alert);
      });
      dispatchDataLoadedEvent();
    }
    
    public function addAlert(alert:Object, callback:Function):void
    {     
      DB.instance.alert.create(alert, function (e:ResultEvent):void {
        var a:Alert = e.result as Alert;
        addItem(a);
        callback(a);
      });
    }
    
    public function start_counters():void
    {
      /* start the auto refresh when the section is open */
      _autorefresh.addEventListener(TimerEvent.TIMER, onRefreshCounter);
      _autorefresh.start();
      
      /* the first refresh */
      onRefreshCounter(null);
    }
    
    public function stop_counters():void
    {
      /* stop the auto refresh when going away */
      _autorefresh.removeEventListener(TimerEvent.TIMER, onRefreshCounter);
      _autorefresh.stop();
    }
    
    private function onRefreshCounter(e:Event):void
    {
      trace(_classname + ' -- Refresh Counters');
      
      DB.instance.alert.counters(onAlertCounters);
    }
    
    private function onAlertCounters(e:ResultEvent):void
    {
      _alertCount = e.result as int;
      dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, alertCount, null, _alertCount));
    }
  }
}