package it.ht.rcs.console.network.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.events.RefreshEvent;
  import it.ht.rcs.console.network.model.Proxy;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class ProxyManager extends ItemManager
  {
    
    /* singleton */
    private static var _instance:ProxyManager = new ProxyManager();
    public static function get instance():ProxyManager { return _instance; } 
    
    public function ProxyManager()
    {
      super();
    }
    
    override protected function onItemRemove(o:*):void
    {
      DB.instance.proxy.destroy(o._id);
    }
    
    override protected function onItemUpdate(e:*):void
    {
      var o:Object = new Object;
      o[e.property] = e.newValue;
      DB.instance.proxy.update(e.source, o);
    }
    
    override protected function onRefresh(e:RefreshEvent):void
    {
      super.onRefresh(e);
      DB.instance.proxy.all(onResult);
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