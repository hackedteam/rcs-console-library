package it.ht.rcs.console.alert.controller
{
  import flash.events.Event;
  import flash.events.TimerEvent;
  import flash.utils.Timer;
  
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.alert.model.Alert;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.events.RefreshEvent;
  import it.ht.rcs.console.utils.CounterBaloon;
  
  import mx.collections.ArrayCollection;
  import mx.collections.ISort;
  import mx.collections.ListCollectionView;
  import mx.collections.Sort;
  import mx.collections.SortField;
  import mx.core.FlexGlobals;
  import mx.rpc.events.ResultEvent;
  
  public class AlertManager extends ItemManager
  {
    
    private var _counterBaloon:CounterBaloon = new CounterBaloon();
    
    /* for the auto refresh every 15 seconds */
    private var _autorefresh:Timer = new Timer(15000);
    
    /* singleton */
    private static var _instance:AlertManager = new AlertManager();
    public static function get instance():AlertManager { return _instance; } 
    
    public function AlertManager()
    {
      super();
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
    }
    
    override public function getView(sortCriteria:ISort=null, filterFunction:Function=null):ListCollectionView
    {
      /* sorting by time */
      var sort:Sort = new Sort();
      sort.fields = [new SortField('_id', true, false, true)];
      return super.getView(sort);
    }
    
    public function newAlert(callback:Function):void
    {     
      DB.instance.alert.create(Alert.defaultAlert(), function (e:ResultEvent):void {
        var a:Alert = e.result as Alert;
        addItem(a);
        callback(a);
      });
    }
    
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
      
      DB.instance.alert.counters(onAlertCounters);
    }
    
    // TODO: refactor the baloon outa side the manager !!!!
    
    private function onAlertCounters(e:ResultEvent):void
    {
      /* get the position of the Monitor button */
      var buttons:ArrayCollection = FlexGlobals.topLevelApplication.mainPanel.sectionsButtonBar.dataProvider;
      var len:int = buttons.length;
      var index:int = buttons.toArray().indexOf("Alerting") + 1;
      
      /* find the correct displacement (starting from right) */
      _counterBaloon.right = 3 + ((len - index) * 90);
      _counterBaloon.top = 43;
      
      _counterBaloon.value = e.result as int;
      _counterBaloon.style = 'info';

      /* display it or not */
      if (_counterBaloon.value > 0)
        _counterBaloon.visible = true;
      else
        _counterBaloon.visible = false;
    }
  }
}