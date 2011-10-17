package it.ht.rcs.console.agent.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.agent.model.Agent;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.events.RefreshEvent;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class AgentManager extends ItemManager
  {
    private static var _instance:AgentManager = new AgentManager();
    public static function get instance():AgentManager { return _instance; } 
    
    public function AgentManager()
    {
      super();
    }
    
    override protected function onRefresh(e:RefreshEvent):void
    {
      super.onRefresh(e);
      DB.instance.agent.all(onResult);
    }
    
//    override public function addItem(o:Object):void
//    {
//      if (o is Agent)
//        _items.addItem(o);
//    }
    
    private function onResult(e:ResultEvent):void
    {
      var items:ArrayCollection = e.result as ArrayCollection;
      _items.removeAll();
      items.source.forEach(function(element:*, index:int, arr:Array):void {
        addItem(element);
      });
      dispatchDataLoadedEvent();
    }
  }
}
