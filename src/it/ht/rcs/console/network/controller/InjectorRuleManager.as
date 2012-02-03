package it.ht.rcs.console.network.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.ObjectUtils;
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
    
    override protected function onItemUpdate(event:*):void
    {
      var property:Object = new Object();
      property[event.property] = event.newValue is ArrayCollection ? event.newValue.source : event.newValue;
      property._id = event.source._id;
      DB.instance.injector.update_rule(_owner._id, property);
    }
    
    public function addRule(injector_id:String, rule:InjectorRule, callback:Function):void
    {
      DB.instance.injector.add_rule(injector_id, ObjectUtils.toHash(rule), function (e:ResultEvent):void {
        rule._id = e.result._id;
        addItem(rule);
        callback(rule);
      });
    }
    
  }
  
}