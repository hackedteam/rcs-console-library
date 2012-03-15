package it.ht.rcs.console.audit.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.events.FilterEvent;
  
  import mx.collections.ArrayCollection;
  import mx.collections.AsyncListView;
  import mx.collections.ListCollectionView;
  import mx.core.FlexGlobals;
  import mx.rpc.events.ResultEvent;
  
  public class AuditManager extends ItemManager
  {
    
    /* singleton */
    private static var _instance:AuditManager = new AuditManager();
    public static function get instance():AuditManager { return _instance; }
    
    [Bindable]
    public var filter:Object = {};
    
    override public function refresh():void
    {
      super.refresh();
      DB.instance.audit.filters(onFiltersResult);
      DB.instance.audit.all(filter, onResult);
    }
    
    private function onFiltersResult(event:ResultEvent):void
    {
      var e:FilterEvent = new FilterEvent(FilterEvent.FILTER_VALUES_CHANGED);
      e.filterValues = event.result;
      FlexGlobals.topLevelApplication.dispatchEvent(e);
    }
    
    [Bindable]
    public var _view:ListCollectionView;
    
    private function onResult(e:ResultEvent):void
    {
      var alv:AsyncListView = new AsyncListView(e.result as ArrayCollection)
      _view = new ListCollectionView(alv);
      dispatchDataLoadedEvent();
    }
    
//    private function printFilterObject():void
//    {
//      trace('--- START');
//      for (var key:String in filter) {
//        trace(key + ": " + filter[key]);
//        if(key == 'from' || key == 'to') {
//          var d:Date = new Date(filter[key] * 1000);
//          trace(key + " date: " + d.fullYearUTC +"-"+ TimeUtils.zeroPad(d.monthUTC+1, 2) + "-"+d.dateUTC + " "+ d.hoursUTC + ':'+d.minutesUTC + ':'+ d.secondsUTC);
//        }
//      }
//      trace('--- END');
//    }

  }

}