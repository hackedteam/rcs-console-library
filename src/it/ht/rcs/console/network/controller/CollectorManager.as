package it.ht.rcs.console.network.controller
{
  import flash.globalization.Collator;
  
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.network.model.Collector;
  
  import mx.collections.ArrayCollection;
  import mx.collections.ISort;
  import mx.collections.ListCollectionView;
  import mx.rpc.events.FaultEvent;
  import mx.rpc.events.ResultEvent;
  
  public class CollectorManager extends ItemManager
  {
    
    public function CollectorManager() { super(Collector); }
    
    private static var _instance:CollectorManager = new CollectorManager();
    public static function get instance():CollectorManager { return _instance; }
    
    override public function refresh():void
    {
      super.refresh();
      DB.instance.collector.all(onResult);
    }
    
    private function onResult(e:ResultEvent):void
    {
      clear();
      for each (var item:* in e.result.source)
        addItem(item);
      dispatchDataLoadedEvent();
    }
    
    override public function removeItem(item:Object):void
    {
      if (item is Collector)
      {
        var current:Collector = item as Collector;
        var next:Collector;
        var prev:Collector = current.prev[0] == null ? null : getItem(current.prev[0]) as Collector;
        if (prev)
          prev.next = [null];
        
        do {
          current.prev = [null];
          next = current.next[0] == null ? null : getItem(current.next[0]) as Collector;
          current.next = [null];
          current = next;
        } while (next != null);
      }
      
      super.removeItem(item);
    }
    
    override protected function onItemRemove(o:*):void
    {
      DB.instance.collector.destroy(o._id);
    }
    
    override protected function onItemUpdate(event:*):void
    {
      var property:Object = new Object();
      property[event.property] = event.newValue is ArrayCollection ? event.newValue.source : event.newValue;
      DB.instance.collector.update(event.source, property);
    }
    
    public function addCollector(c:Object, callback:Function):void
    {
      DB.instance.collector.create(c, function (e:ResultEvent):void {
        var collector:Collector = e.result as Collector;
        addItem(collector);
        callback(collector);
      });
    }
    
    public function getLogs(_id:String, callback:Function):void
    {
      DB.instance.collector.logs(_id, function(e:ResultEvent):void {
        callback(e.result as ArrayCollection);
      });
    }
    
    public function clearLogs(_id:String, callback:Function):void
    {
      DB.instance.collector.del_logs(_id, function(e:ResultEvent):void {
        callback();
      });
    }
    
    private function entryFilter(item:Object):Boolean
    {
      if (item['address'] == null || item['address'] == '')
        return false;
      
      if (item['type'] == 'local' && item['next'][0] == null)
        return true;
      
      if (item['type'] == 'remote' && item['next'][0] == null && item['prev'][0] != null)
        return true;
      
      return false;
    }
    
    public function getEntryPointsView(sortCriteria:ISort=null, filterFunction:Function=null):ListCollectionView
    {
      
      return super.getView(null, entryFilter);
      
    } 
    
    public function upgradeAnon(_id:String, callback:Function=null, errback:Function=null):void
    {
      DB.instance.collector.upgrade(_id, function(e:ResultEvent):void {
        callback();
      }, 
      function(e:ResultEvent):void {
        errback();
      });
    }
    
    public function get_public(callback:Function=null, errback:Function=null):void
    {
      DB.instance.collector.get_public(function(e:ResultEvent):void {
        callback(e);
      }, 
        function(e:FaultEvent):void {
          errback(e);
        });
    }
    
    public function public_destroy(_id:String, callback:Function=null, errback:Function=null):void
    {
      DB.instance.collector.public_destroy(_id, function(e:ResultEvent):void {
        callback(e);
      }, 
        function(e:FaultEvent):void {
          errback(e);
        });
    }
    
  }
  
}