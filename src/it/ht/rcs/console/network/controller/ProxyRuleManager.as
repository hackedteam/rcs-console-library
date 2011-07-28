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
      DB.instance.proxy.del_rule(_owner, o);
    }
    
    public function addRule(proxy_id:String, callback:Function):void
    {
      DB.instance.proxy.add_rule(ProxyRule.defaultProxyRule(), proxy_id, function (e:ResultEvent):void {
        var rule:ProxyRule = e.result as ProxyRule;
        addItem(rule);
        callback(rule);
      });
    }
    
  }
  
}