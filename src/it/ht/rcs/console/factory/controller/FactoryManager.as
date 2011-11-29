package it.ht.rcs.console.factory.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.events.RefreshEvent;
  import it.ht.rcs.console.factory.model.Factory;
  import it.ht.rcs.console.operation.model.Operation;
  import it.ht.rcs.console.target.model.Target;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class FactoryManager extends ItemManager
  {
    private static var _instance:FactoryManager = new FactoryManager();
    public static function get instance():FactoryManager { return _instance; } 
    
    public function FactoryManager()
    {
      super();
    }
    
    override public function refresh():void
    {
      super.refresh();
      DB.instance.factory.all(onResult);
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
    
    override protected function onItemRemove(o:*):void
    {
      DB.instance.factory.destroy(o._id);
    }
    
    override protected function onItemUpdate(e:*):void
    {
      var o:Object = new Object;
      if (e.newValue is ArrayCollection)
        o[e.property] = e.newValue.source;
      else
        o[e.property] = e.newValue;
      DB.instance.factory.update(e.source, o);
    }
    
    public function addFactory(f:Factory, operation:Operation, target:Target, callback:Function):void
    {
      DB.instance.factory.create(f, operation, target, function (e:ResultEvent):void {
        var factory:Factory = e.result as Factory;
        addItem(factory);
        if (callback != null)
          callback(factory);
      });
    }
    
  }
}