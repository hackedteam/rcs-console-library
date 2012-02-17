package it.ht.rcs.console.forwarder.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.forwarder.model.Forwarder;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class ForwarderManager extends ItemManager
  {
    
    public function ForwarderManager() { super(Forwarder); }
    
    private static var _instance:ForwarderManager = new ForwarderManager();
    public static function get instance():ForwarderManager { return _instance; }
    
    override public function refresh():void
    {
      super.refresh();
      DB.instance.forwarder.all(onResult);
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
      DB.instance.forwarder.destroy(o);
    }
    
    override protected function onItemUpdate(event:*):void
    {
      var property:Object = new Object();
      property[event.property] = event.newValue is ArrayCollection ? event.newValue.source : event.newValue;
      DB.instance.forwarder.update(event.source, property);
    }
    
    public function addForwarder(f:Object, callback:Function):void
    {     
      DB.instance.forwarder.create(f, function (e:ResultEvent):void {
        var j:Forwarder = e.result as Forwarder;
        _items.addItem(j);
        callback(j);
      });
    }
  }
}