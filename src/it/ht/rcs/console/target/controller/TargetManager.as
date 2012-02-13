package it.ht.rcs.console.target.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.ObjectUtils;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.operation.model.Operation;
  import it.ht.rcs.console.search.controller.SearchManager;
  import it.ht.rcs.console.target.model.Target;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class TargetManager extends ItemManager
  {
    
    public function TargetManager()
    {
      super(Target);
    }
    
    private static var _instance:TargetManager = new TargetManager();
    public static function get instance():TargetManager { return _instance; }
    
    override public function refresh():void
    {
      super.refresh();
      DB.instance.target.all(onResult);
    }
    
    private function onResult(e:ResultEvent):void
    {
      clear();
      for each (var item:* in e.result.source)
        addItem(item);
      dispatchDataLoadedEvent();
    }
    
    override protected function onItemRemove(item:*):void
    {
      DB.instance.target.destroy(item._id);
    }
    
    override protected function onItemUpdate(event:*):void
    {
      var property:Object = new Object();
      property[event.property] = event.newValue is ArrayCollection ? event.newValue.source : event.newValue;
      DB.instance.target.update(event.source, property);
    }
    
    public function addTarget(t:Target, o:Operation, callback:Function):void
    {
      DB.instance.target.create(ObjectUtils.toHash(t), o, function(e:ResultEvent):void {
        var target:Target = e.result as Target;
        addItem(target);
        SearchManager.instance.showItem(target._id);
        callback(target);
      });
    }
    
  }
  
}