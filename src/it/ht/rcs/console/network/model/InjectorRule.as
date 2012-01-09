/**
 * This is a generated sub-class of _InjectorRule.as and is intended for behavior
 * customization.  This class is only generated when there is no file already present
 * at its target location.  Thus custom behavior that you add here will survive regeneration
 * of the super-class. 
 *
 * NOTE: Do not manually modify the RemoteClass mapping unless
 * your server representation of this class has changed and you've 
 * updated your ActionScriptGeneration,RemoteClass annotation on the
 * corresponding entity 
 **/ 
 
package it.ht.rcs.console.network.model
{

import com.adobe.fiber.core.model_internal;

public class InjectorRule extends _Super_InjectorRule
{
  
  public static function defaultInjectorRule():Object
  {
    return {
      _id: '',
      action: '',
      action_param: '',
      action_param_name: '',
      disable_sync: false,
      enabled: false,
      ident: '',
      ident_param: '',
      probability: 100,
      resource: '',
      target_id: []
    };
  }
  
  public function InjectorRule(data:Object = null)
  {
    if (data) {
      _id = data._id;
      action = data.action;
      action_param = data.action_param;
      action_param_name = data.action_param_name;
      disable_sync = data.disable_sync;
      enabled = data.enabled;
      ident = data.ident;
      ident_param = data.ident_param;
      probability = data.probability;
      resource = data.resource;
      target_id = data.target_id;
    }
  }
  
  public function toObject():Object
  {
    var o:Object = {};
    o.action = action;
    o.action_param = action_param;
    o.action_param_name = action_param_name;
    o.disable_sync = disable_sync;
    o.enabled = enabled;
    o.ident = ident;
    o.ident_param = ident_param;
    o.probability = probability;
    o.resource = resource;
    if (target_id)
      o.target_id = target_id.source;
    return o;
  }
  
    /** 
     * DO NOT MODIFY THIS STATIC INITIALIZER - IT IS NECESSARY
     * FOR PROPERLY SETTING UP THE REMOTE CLASS ALIAS FOR THIS CLASS
     *
     **/
     
    /**
     * Calling this static function will initialize RemoteClass aliases
     * for this value object as well as all of the value objects corresponding
     * to entities associated to this value object's entity.  
     */     
    public static function _initRemoteClassAlias() : void
    {
        _Super_InjectorRule.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.network.model.InjectorRule);
        _Super_InjectorRule.model_internal::initRemoteClassAliasAllRelated();
    }
     
    model_internal static function initRemoteClassAliasSingleChild() : void
    {
        _Super_InjectorRule.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.network.model.InjectorRule);
    }
    
    {
        _Super_InjectorRule.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.network.model.InjectorRule);
    }
    /** 
     * END OF DO NOT MODIFY SECTION
     *
     **/    
}

}