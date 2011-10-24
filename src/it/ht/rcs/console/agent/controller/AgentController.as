package it.ht.rcs.console.agent.controller
{
  
  import flash.events.Event;
  
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.events.DataLoadedEvent;
  import it.ht.rcs.console.factory.controller.FactoryManager;
  
  import mx.collections.IList;
  
  public class AgentController extends ItemManager
  {
    
    /* singleton */
    private static var _instance:AgentController = new AgentController();
    public static function get instance():AgentController { return _instance; }
    
    public function AgentController()
    {
      super();
    }
    
    override public function start():void
    {
      super.start();
      AgentManager.instance.addEventListener(DataLoadedEvent.DATA_LOADED, onDataLoadedMerge);
      AgentManager.instance.start();
      FactoryManager.instance.addEventListener(DataLoadedEvent.DATA_LOADED, onDataLoadedMerge);
      FactoryManager.instance.start();
    }
    
    override public function stop():void
    {
      super.stop();
      AgentManager.instance.removeEventListener(DataLoadedEvent.DATA_LOADED, onDataLoadedMerge);
      AgentManager.instance.stop();
      FactoryManager.instance.removeEventListener(DataLoadedEvent.DATA_LOADED, onDataLoadedMerge);
      FactoryManager.instance.stop();
    }
    
    private var count:int = 0;
    private function onDataLoadedMerge(event:DataLoadedEvent):void
    {
      if (count == 0)
        _items.removeAll();
      
      var list:IList = (event.manager as ItemManager).getView().list;
      list.toArray().forEach(function(element:*, index:int, arr:Array):void {
        _items.addItem(element);
      });
      
      count++;
      if (count == 2) {
        dispatchDataLoadedEvent();
        count = 0;
      }
    }
    
  }
  
}