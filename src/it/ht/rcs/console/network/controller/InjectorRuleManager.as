package it.ht.rcs.console.network.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.controller.SubManager;
  import it.ht.rcs.console.network.model.Injector;
  import it.ht.rcs.console.network.model.InjectorRule;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class InjectorRuleManager extends SubManager
  {
    
    public function InjectorRuleManager(injector:Injector, data:ArrayCollection)
    {
      super(injector, data);
    }
    
    override protected function onItemRemove(o:*):void
    { 
      DB.instance.injector.del_rule(_owner._id, o._id);
    }
    
    override protected function onItemUpdate(e:*):void
    {
      var o:Object = new Object;
      if (e.newValue is ArrayCollection)
        o[e.property] = e.newValue.source;
      else
        o[e.property] = e.newValue;
      o._id = e.source._id;
      DB.instance.injector.update_rule(_owner._id, o);
    }
    
    public function addRule(injector_id:String, rule:InjectorRule, callback:Function):void
    {
      var ruleObject:Object = rule.toObject();
      DB.instance.injector.add_rule(injector_id, ruleObject, function (e:ResultEvent):void {
        rule._id = e.result._id;
        addItem(rule);
        callback(rule);
      });
    }
    
  }
  
}