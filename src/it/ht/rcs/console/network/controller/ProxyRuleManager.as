package it.ht.rcs.console.network.controller
{
  import it.ht.rcs.console.controller.SubManager;
  import it.ht.rcs.console.network.model.Proxy;
  
  import mx.collections.ArrayCollection;
  
  public class ProxyRuleManager extends SubManager
  {
    
    public function ProxyRuleManager(proxy:Proxy, data:ArrayCollection)
    {
      super(proxy, data);
    }
    
    override protected function onItemRemove(o:*):void
    { 
      console.currentDB.proxy.del_rule(_owner, o);
    }
    
  }
  
}