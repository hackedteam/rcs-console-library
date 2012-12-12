package  it.ht.rcs.console.entities.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.ObjectUtils;
  import it.ht.rcs.console.agent.controller.AgentManager;
  import it.ht.rcs.console.agent.model.Agent;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.dashboard.controller.DashboardController;
  import it.ht.rcs.console.operation.model.Operation;
  import it.ht.rcs.console.push.PushController;
  import it.ht.rcs.console.push.PushEvent;
  import it.ht.rcs.console.search.controller.SearchManager;
  import it.ht.rcs.console.entities.model.Entity;
  
  import mx.collections.ArrayCollection;
  import mx.collections.ListCollectionView;
  import mx.rpc.events.FaultEvent;
  import mx.rpc.events.ResultEvent;
  
  public class EntityManager extends ItemManager
  {
    
    public function EntityManager()
    {
      super(Entity);
     
    }
    
    private static var _instance:EntityManager = new EntityManager();
    public static function get instance():EntityManager { return _instance; }
    
    override public function refresh():void
    {
      super.refresh();
      DB.instance.entity.all(onResult);
    }
    
    private function onResult(e:ResultEvent):void
    {
      clear();
      for each (var item:* in e.result.source)
        addItem(item);
      dispatchDataLoadedEvent();
    }
    
  }
  
}