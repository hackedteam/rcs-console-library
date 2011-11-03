package it.ht.rcs.console.target.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.events.RefreshEvent;
  import it.ht.rcs.console.operation.model.Operation;
  import it.ht.rcs.console.target.model.Target;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class TargetManager extends ItemManager
  {
    private static var _instance:TargetManager = new TargetManager();
    public static function get instance():TargetManager { return _instance; } 
    
    public function TargetManager()
    {
      super();
    }
    
    override protected function onRefresh(e:RefreshEvent):void
    {
      super.onRefresh(e);
      DB.instance.target.all(onResult);
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
      DB.instance.target.destroy(o._id);
    }
    
    override protected function onItemUpdate(e:*):void
    {
      var o:Object = new Object;
      if (e.newValue is ArrayCollection)
        o[e.property] = e.newValue.source;
      else
        o[e.property] = e.newValue;
      DB.instance.target.update(e.source, o);
    }
    
    public function addTarget(t:Target, operation:Operation, callback:Function):void
    {
      DB.instance.target.create(t, operation, function (e:ResultEvent):void {
        var target:Target = e.result as Target;
        addItem(target);
        if (callback != null)
          callback(target);
      });
    }
    
  }
}