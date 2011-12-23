package it.ht.rcs.console.factory.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.factory.model.Factory;
  import it.ht.rcs.console.operation.model.Operation;
  import it.ht.rcs.console.target.model.Target;
  
  import mx.collections.ArrayCollection;
  import mx.events.PropertyChangeEvent;
  import mx.rpc.events.ResultEvent;
  
  public class FactoryManager extends ItemManager
  {
    
    private static var _instance:FactoryManager = new FactoryManager();
    public static function get instance():FactoryManager { return _instance; } 
    
    override public function refresh():void
    {
      super.refresh();
      DB.instance.factory.all(onResult);
    }
    
    private function onResult(e:ResultEvent):void
    {
      _items.removeAll();
      for each (var item:* in e.result.source)
        _items.addItem(item);
      dispatchDataLoadedEvent();
    }
    
    override protected function onItemRemove(item:*):void
    {
      DB.instance.factory.destroy(item._id);
    }
    
    override protected function onItemUpdate(event:*):void
    {
      var property:Object = new Object();
      property[event.property] = event.newValue is ArrayCollection ? event.newValue.source : event.newValue;
      DB.instance.factory.update(event.source, property);
    }
    
    public function addFactory(f:Factory, o:Operation, t:Target, callback:Function):void
    {
      DB.instance.factory.create(f, o, t, function (e:ResultEvent):void {
        var factory:Factory = e.result as Factory;
        _items.addItem(factory);
        if (callback != null)
          callback(factory);
      });
    }
    
  }
  
}