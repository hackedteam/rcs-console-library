package it.ht.rcs.console.network.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.controller.SubManager;
  import it.ht.rcs.console.network.model.Proxy;
  import it.ht.rcs.console.network.model.ProxyRule;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class ProxyRuleManager extends SubManager
  {
    
    public function ProxyRuleManager(proxy:Proxy, data:ArrayCollection)
    {
      super(proxy, data);
    }
    
    override protected function onItemRemove(o:*):void
    { 
      DB.instance.proxy.del_rule(_owner._id, o._id);
    }
    
    override protected function onItemUpdate(e:*):void
    {
      var o:Object = new Object;
      if (e.newValue is ArrayCollection)
        o[e.property] = e.newValue.source;
      else
        o[e.property] = e.newValue;
      o._id = e.source._id;
      DB.instance.proxy.update_rule(_owner._id, o);
    }
    
    public function addRule(proxy_id:String, rule:ProxyRule, callback:Function):void
    {
      var ruleObject:Object = rule.toObject();
      DB.instance.proxy.add_rule(proxy_id, ruleObject, function (e:ResultEvent):void {
        rule._id = e.result._id;
        addItem(rule);
        callback(rule);
      });
    }
    
  }
  
}