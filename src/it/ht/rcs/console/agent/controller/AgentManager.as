package it.ht.rcs.console.agent.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.agent.model.Agent;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.operation.model.Operation;
  import it.ht.rcs.console.target.model.Target;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class AgentManager extends ItemManager
  {
    
    public function AgentManager()
    {
      super(Agent);
    }
    
    private static var _instance:AgentManager = new AgentManager();
    public static function get instance():AgentManager { return _instance; }
    
    override public function refresh():void
    {
      super.refresh();
      DB.instance.agent.all(onResult);
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
      DB.instance.agent.destroy(item._id);
    }
    
    override protected function onItemUpdate(event:*):void
    {
      var property:Object = new Object();
      property[event.property] = event.newValue is ArrayCollection ? event.newValue.source : event.newValue;
      DB.instance.agent.update(event.source, property);
    }
    
    public function addAgent(a:Object, o:Operation, t:Target, callback:Function):void
    {
      DB.instance.agent.create(a, o, t, function(e:ResultEvent):void {
        var agent:Agent = e.result as Agent;
        addItem(agent);
        callback(agent);
      });
    }
    
  }
  
}