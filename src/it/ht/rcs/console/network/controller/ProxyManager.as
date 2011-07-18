package it.ht.rcs.console.network.controller
{
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
      console.currentDB.proxy.destroy(o._id);
    }
    
    override protected function onItemUpdate(e:*):void
    {
      var o:Object = new Object;
      o[e.property] = e.newValue;
      console.currentDB.proxy.update(e.source, o);
    }
    
    override protected function onRefresh(e:RefreshEvent):void
    {
      super.onRefresh(e);
      console.currentDB.proxy.all(onUserIndexResult);
    }
    
    public function onUserIndexResult(e:ResultEvent):void
    {
      var items:ArrayCollection = e.result as ArrayCollection;
      _items.removeAll();
      items.source.forEach(function toUserArray(element:*, index:int, arr:Array):void {
        addItem(element);
      });
    }
    
    public function addProxy(callback:Function):void
    {
      console.currentDB.proxy.create(Proxy.defaultProxy(), function (e:ResultEvent):void {
        var proxy:Proxy = e.result as Proxy;
        addItem(proxy);
        callback(proxy);
      });
    }
    
  }
  
}