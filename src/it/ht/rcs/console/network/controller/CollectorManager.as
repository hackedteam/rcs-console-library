package it.ht.rcs.console.network.controller
{
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
      console.currentDB.collector.destroy(o._id);
    }
    
    override protected function onItemUpdate(e:*):void
    {
      var o:Object = new Object;
      o[e.property] = e.newValue;
      console.currentDB.collector.update(e.source, o);
    }
    
    override protected function onRefresh(e:RefreshEvent):void
    {
      super.onRefresh(e);
      console.currentDB.collector.all(onResult);
    }
    
    private function onResult(e:ResultEvent):void
    {
      var items:ArrayCollection = e.result as ArrayCollection;
      _items.removeAll();
      items.source.forEach(function(element:*, index:int, arr:Array):void {
        addItem(element);
      });
    }
    
    public function addProxy(callback:Function):void
    {
      console.currentDB.collector.create(Collector.defaultCollector(), function (e:ResultEvent):void {
        var collector:Collector = e.result as Collector;
        addItem(collector);
        callback(collector);
      });
    }
    
    
  }
}