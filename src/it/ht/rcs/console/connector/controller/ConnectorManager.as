package it.ht.rcs.console.connector.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.connector.model.Connector;
  import it.ht.rcs.console.controller.ItemManager;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class ConnectorManager extends ItemManager
  {
    
    public function ConnectorManager() { super(Connector); }
    
    private static var _instance:ConnectorManager = new ConnectorManager();
    public static function get instance():ConnectorManager { return _instance; }
    
    override public function refresh():void
    {
      super.refresh();
      DB.instance.connector.all(onResult);
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
      DB.instance.connector.destroy(o);
    }
    
    override protected function onItemUpdate(event:*):void
    {
      var property:Object = new Object();
      property[event.property] = event.newValue is ArrayCollection ? event.newValue.source : event.newValue;
      DB.instance.connector.update(event.source, property);
    }
    
    public function addConnector(f:Object, callback:Function):void
    {     
      DB.instance.connector.create(f, function (e:ResultEvent):void {
        var fo:Connector = e.result as Connector;
        addItem(fo);
        callback(fo);
      });
    }
  }
}