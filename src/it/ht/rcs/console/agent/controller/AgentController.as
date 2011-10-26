package it.ht.rcs.console.agent.controller
{
  
  import flash.events.Event;
  
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.events.DataLoadedEvent;
  import it.ht.rcs.console.factory.controller.FactoryManager;
  
  import mx.collections.IList;
  import mx.collections.ListCollectionView;
  import mx.events.CollectionEvent;
  
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
      FactoryManager.instance.addEventListener(DataLoadedEvent.DATA_LOADED, onDataLoadedMerge);
      FactoryManager.instance.start();
      AgentManager.instance.addEventListener(DataLoadedEvent.DATA_LOADED, onDataLoadedMerge);
      AgentManager.instance.start();
    }
    
    override public function stop():void
    {
      super.stop();
      FactoryManager.instance.removeEventListener(DataLoadedEvent.DATA_LOADED, onDataLoadedMerge);
      FactoryManager.instance.stop();
      AgentManager.instance.removeEventListener(DataLoadedEvent.DATA_LOADED, onDataLoadedMerge);
      AgentManager.instance.stop();
    }
    
    private var factories:ListCollectionView;
    private var agents:ListCollectionView;
    
    private var count:int = 0;
    private function onDataLoadedMerge(event:DataLoadedEvent):void
    {
      if (count == 0)
        _items.removeAll();
      
      var currentList:IList;
      if (event.manager is FactoryManager) {
        factories = (event.manager as FactoryManager).getView();
        factories.addEventListener(CollectionEvent.COLLECTION_CHANGE, mergeLists);
        currentList = factories.list;
      } else if (event.manager is AgentManager) {
        agents = (event.manager as AgentManager).getView();
        agents.addEventListener(CollectionEvent.COLLECTION_CHANGE, mergeLists);
        currentList = agents.list;
      }
      
      count++;
      if (count == 2) {
        mergeLists();
        dispatchDataLoadedEvent();
        count = 0;
      }
    }
    
    private function mergeLists(event:CollectionEvent=null):void
    {
      _items.removeAll();
      factories.toArray().forEach(function(element:*, index:int, arr:Array):void {
        _items.addItem(element);
      });
      agents.toArray().forEach(function(element:*, index:int, arr:Array):void {
        _items.addItem(element);
      });
    }
    
  }
  
}