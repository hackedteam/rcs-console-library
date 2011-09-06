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
      o[e.property] = e.newValue;
      o._id = e.source._id;
      DB.instance.proxy.update_rule(_owner._id, o);
    }
    
    public function addRule(proxy_id:String, rule:ProxyRule, callback:Function):void
    {
      var ruleObject:Object = rule.toObject();
      //ruleObject.target_id = ruleObject.target_id ? ruleObject.target_id.source : ruleObject.target_id;
      DB.instance.proxy.add_rule(proxy_id, ruleObject, function (e:ResultEvent):void {
        //var rule:ProxyRule = e.result as ProxyRule;
        addItem(rule);
        callback(rule);
      });
    }
    
  }
  
}