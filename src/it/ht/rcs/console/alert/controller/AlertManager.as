package it.ht.rcs.console.alert.controller
{
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
    public function AlertManager() { super(Alert); }
    
    private static var _instance:AlertManager = new AlertManager();
    public static function get instance():AlertManager { return _instance; } 
    
    /* for the auto refresh every 15 seconds */
    private var autoRefresh:Timer = new Timer(15000);
    
    override public function refresh():void
    {
      super.refresh();
      DB.instance.alert.all(onResult);
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
      DB.instance.alert.destroy(o);
    }
    
    override protected function onItemUpdate(event:*):void
    {
      var property:Object = new Object();
      property[event.property] = event.newValue is ArrayCollection ? event.newValue.source : event.newValue;
      DB.instance.alert.update(event.source, property);
    }
    
    public function addAlert(alert:Object, callback:Function):void
    {     
      DB.instance.alert.create(alert, function (e:ResultEvent):void {
        var a:Alert = e.result as Alert;
        addItem(a);
        callback(a);
      });
    }
    
    private var _alertCounter:Object = {value: NaN, style: 'info'};
    
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
    
    private function onRefreshCounter(e:TimerEvent):void
    {
      DB.instance.alert.counters(onAlertCounters);
    }
    
    private function onAlertCounters(e:ResultEvent):void
    {
      _alertCounter.value = e.result as int;
      _alertCounter.style = 'info';
      dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, 'alertCounter', null, _alertCounter));
    }
    
    [Bindable(event='propertyChange')]
    public function get alertCounter():Object
    {
      return _alertCounter;
    }

  }
  
}