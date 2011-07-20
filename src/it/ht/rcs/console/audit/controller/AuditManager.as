package it.ht.rcs.console.audit.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.events.FilterEvent;
  import it.ht.rcs.console.events.RefreshEvent;
  import it.ht.rcs.console.utils.DateUtils;
  import it.ht.rcs.console.utils.TimeUtils;
  
  import mx.collections.ArrayCollection;
  import mx.collections.AsyncListView;
  import mx.collections.ISort;
  import mx.collections.ListCollectionView;
  import mx.core.FlexGlobals;
  import mx.events.CollectionEvent;
  import mx.rpc.events.ResultEvent;
  
  public class AuditManager extends ItemManager
  {
    
    /* singleton */
    private static var _instance:AuditManager = new AuditManager();
    public static function get instance():AuditManager { return _instance; }
    
    [Bindable]
    public var filter:Object = {};
    
    override public function start():void
    {
      super.start();
      FlexGlobals.topLevelApplication.addEventListener(FilterEvent.FILTER_CHANGED, refresh);
    }
    
    override public function stop():void
    {
      super.stop();
      FlexGlobals.topLevelApplication.removeEventListener(FilterEvent.FILTER_CHANGED, refresh);
    }
    
    override protected function onRefresh(e:RefreshEvent):void
    {
      super.onRefresh(e);
      DB.instance.audit.filters(onFiltersResult);
      if(!filter.hasOwnProperty('from'))
        setDefaultDate();
      DB.instance.audit.all(filter, onResult);
    }
    
    private function onFiltersResult(event:ResultEvent):void
    {
      var e:FilterEvent = new FilterEvent(FilterEvent.FILTER_VALUES_CHANGED);
      e.filterValues = event.result;
      FlexGlobals.topLevelApplication.dispatchEvent(e);
    }
    
    private function onResult(e:ResultEvent):void
    {
      var alv:AsyncListView = new AsyncListView(e.result as ArrayCollection)
      alv.addEventListener(CollectionEvent.COLLECTION_CHANGE, onDataProviderChange);
      _view = new ListCollectionView(alv);
    }
    
    private function onDataProviderChange(event:CollectionEvent):void
    {
      _view.list.removeEventListener(CollectionEvent.COLLECTION_CHANGE, onDataProviderChange);
    }
    
    [Bindable]
    public var _view:ListCollectionView;
    
    override public function getView(sortCriteria:ISort=null, filterFunction:Function=null):ListCollectionView
    {
      super.getView(sortCriteria, filterFunction);
      return _view;
    }
    
    private function setDefaultDate():void
    {
      var today:Date = new Date();
      today.hours = today.minutes = today.seconds = today.milliseconds = 0;
      
      var from:Date = DateUtils.addDays(today, -5);
      filter.from = from.time / 1000;
      
      var to:Date = today;
      to.hours = 23; to.minutes = 59;
      filter.to = to.time / 1000;
    }
    
    private function printFilterObject():void
    {
      trace('--- START');
      for (var key:String in filter) {
        trace(key + ": " + filter[key]);
        if(key == 'from' || key == 'to') {
          var d:Date = new Date(filter[key] * 1000);
          trace(key + " date: " + d.fullYearUTC +"-"+ TimeUtils.zeroPad(d.monthUTC+1, 2) + "-"+d.dateUTC + " "+ d.hoursUTC + ':'+d.minutesUTC + ':'+ d.secondsUTC);
        }
      }
      trace('--- END');
    }

  }

}