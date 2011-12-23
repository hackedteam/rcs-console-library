package it.ht.rcs.console.network.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.network.model.Proxy;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class ProxyManager extends ItemManager
  {
    
    private static var _instance:ProxyManager = new ProxyManager();
    public static function get instance():ProxyManager { return _instance; }
    
    override public function refresh():void
    {
      super.refresh();
      DB.instance.proxy.all(onResult);
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
      DB.instance.proxy.destroy(o._id);
    }
    
    override protected function onItemUpdate(event:*):void
    {
      var property:Object = new Object();
      property[event.property] = event.newValue is ArrayCollection ? event.newValue.source : event.newValue;
      DB.instance.proxy.update(event.source, property);
    }
    
    public function addProxy(callback:Function):void
    {
      DB.instance.proxy.create(Proxy.defaultProxy(), function (e:ResultEvent):void {
        var proxy:Proxy = e.result as Proxy;
        addItem(proxy);
        callback(proxy);
      });
    }
    
    public function getLogs(_id:String, callback:Function):void
    {
      DB.instance.proxy.logs(_id, function(e:ResultEvent):void {
        callback(e.result as ArrayCollection);
      });
    }
    
    public function clearLogs(_id:String, callback:Function):void
    {
      DB.instance.proxy.del_logs(_id, function(e:ResultEvent):void {
        callback();
      });
    }
    
  }
  
}