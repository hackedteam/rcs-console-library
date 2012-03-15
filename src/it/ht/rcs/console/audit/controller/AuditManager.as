package it.ht.rcs.console.audit.controller
{
  import flash.events.Event;
  import flash.net.URLLoader;
  import flash.net.URLLoaderDataFormat;
  import flash.net.URLRequest;
  import flash.utils.ByteArray;
  
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.events.FilterEvent;
  import it.ht.rcs.console.events.SessionEvent;
  
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
    private var urlLoader:URLLoader = new URLLoader();
    
    [Bindable]
    public var filter:Object = {};
    
    override public function refresh():void
    {
      super.refresh();
      DB.instance.audit.filters(onFiltersResult);
      
      urlLoader.dataFormat = URLLoaderDataFormat.BINARY;
      urlLoader.load(new URLRequest(DB.hostAutocomplete(Console.currentSession.server) + "audit/index_amf?filter=" + JSON.stringify(filter)));
      
      urlLoader.addEventListener(Event.COMPLETE, completeHandler);
    }
    
    private function completeHandler(event:Event):void {
      var data:ByteArray = ByteArray( urlLoader.data );
      var collection:ArrayCollection = data.readObject() as ArrayCollection;
      //trace("decoding " + collection.length + " object(s) [ " + urlLoader.bytesLoaded + " bytes]");
      var alv:AsyncListView = new AsyncListView(collection);
      _view = new ListCollectionView(alv);
      dispatchDataLoadedEvent();
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
    
    override protected function onLogout(e:SessionEvent):void
    {
      super.onLogout(e);
      filter = {};
      _view = null;
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