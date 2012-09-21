package it.ht.rcs.console.network.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.network.model.Injector;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.FaultEvent;
  import mx.rpc.events.ResultEvent;
  
  public class InjectorManager extends ItemManager
  {
    
    public function InjectorManager() { super(Injector); }
    
    private static var _instance:InjectorManager = new InjectorManager();
    public static function get instance():InjectorManager { return _instance; }
    
    override public function refresh():void
    {
      super.refresh();
      DB.instance.injector.all(onResult);
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
      DB.instance.injector.destroy(o._id);
    }
    
    override protected function onItemUpdate(event:*):void
    {
      var property:Object = new Object();
      property[event.property] = event.newValue is ArrayCollection ? event.newValue.source : event.newValue;
      DB.instance.injector.update(event.source, property);
    }
    
    public function addProxy(i:Object, callback:Function):void
    {
      DB.instance.injector.create(i, function (e:ResultEvent):void {
        var injector:Injector = e.result as Injector;
        addItem(injector);
        callback(injector);
      });
    }
    
    public function getLogs(_id:String, resultCallback:Function, faultCallback:Function=null):void
    {
      DB.instance.injector.logs(_id, function(e:ResultEvent):void {
        resultCallback(e.result);
      },function(e:FaultEvent):void {
        faultCallback(e.fault);
      })
    }
    
    public function clearLogs(_id:String, callback:Function):void
    {
      DB.instance.injector.del_logs(_id, function(e:ResultEvent):void {
        callback();
      });
    }
    
  }
  
}