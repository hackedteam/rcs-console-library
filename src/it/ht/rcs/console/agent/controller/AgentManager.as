package it.ht.rcs.console.agent.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.agent.model.Agent;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.events.RefreshEvent;
  import it.ht.rcs.console.operation.model.Operation;
  import it.ht.rcs.console.target.model.Target;
  
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
      DB.instance.agent.destroy(o._id);
    }
    
    override protected function onItemUpdate(e:*):void
    {
      var o:Object = new Object;
      if (e.newValue is ArrayCollection)
        o[e.property] = e.newValue.source;
      else
        o[e.property] = e.newValue;
      DB.instance.agent.update(e.source, o);
    }
    
    public function addAgent(a:Object, operation:Operation, target:Target, callback:Function):void
    {
      DB.instance.agent.create(a, operation, target, function (e:ResultEvent):void {
        var agent:Agent = e.result as Agent;
        addItem(agent);
        if (callback != null)
          callback(agent);
      });
    }
    
  }
}