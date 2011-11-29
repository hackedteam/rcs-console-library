package it.ht.rcs.console.network.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.events.RefreshEvent;
  import it.ht.rcs.console.network.model.Collector;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class CollectorManager extends ItemManager
  {
    
    /* singleton */
    private static var _instance:CollectorManager = new CollectorManager();
    public static function get instance():CollectorManager { return _instance; } 
    
    public function CollectorManager()
    {
      super();
    }
    
    override protected function onItemRemove(o:*):void
    {
      DB.instance.collector.destroy(o._id);
    }
    
    override protected function onItemUpdate(e:*):void
    {
      var o:Object = new Object;
      if (e.newValue is ArrayCollection)
        o[e.property] = e.newValue.source;
      else
        o[e.property] = e.newValue;
      DB.instance.collector.update(e.source, o);
    }
    
    override public function refresh():void
    {
      super.refresh();
      DB.instance.collector.all(onResult);
    }
    
    private function onResult(e:ResultEvent):void
    {
      var items:ArrayCollection = e.result as ArrayCollection;
      _items.removeAll();
      items.source.forEach(function(element:*, index:int, arr:Array):void {
        addItem(element);
      });
      dispatchDataLoadedEvent();
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
    
  }
  
}