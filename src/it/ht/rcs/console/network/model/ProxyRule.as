package it.ht.rcs.console.network.model
{

import com.adobe.fiber.core.model_internal;

public class ProxyRule extends _Super_ProxyRule
{
  
  public static function defaultProxyRule():Object
  {
    return {
      _id: '',
      action: '',
      action_param: '',
      disable_sync: false,
      enabled: false,
      ident: '',
      ident_param: '',
      probability: 100,
      resource: '',
      target_id: []
    };
  }
  
  public function ProxyRule(data:Object = null)
  {
    if (data) {
      _id = data._id;
      action = data.action;
      action_param = data.action_param;
      disable_sync = data.disable_sync;
      enabled = data.enabled;
      ident = data.ident;
      ident_param = data.ident_param;
      probability = data.probability;
      resource = data.resource;
      target_id = data.target_id;
    }
  }
  
    /** 
     * DO NOT MODIFY THIS STATIC INITIALIZER - IT IS NECESSARY
     * FOR PROPERLY SETTING UP THE REMOTE CLASS ALIAS FOR THIS CLASS
     **/
     
    /**
     * Calling this static function will initialize RemoteClass aliases
     * for this value object as well as all of the value objects corresponding
     * to entities associated to this value object's entity.  
     */     
    public static function _initRemoteClassAlias() : void
    {
      _Super_ProxyRule.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.network.model.ProxyRule);
      _Super_ProxyRule.model_internal::initRemoteClassAliasAllRelated();
    }
     
    model_internal static function initRemoteClassAliasSingleChild() : void
    {
      _Super_ProxyRule.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.network.model.ProxyRule);
    }
    
    {
      _Super_ProxyRule.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.network.model.ProxyRule);
    }
    /** 
     * END OF DO NOT MODIFY SECTION
     **/
    
}

}