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
        scout:false,
        enabled: true,
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
        scout = data.scout;
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
    public static function _initRemoteClassAlias():void
    {
      _Super_InjectorRule.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.network.model.InjectorRule);
      _Super_InjectorRule.model_internal::initRemoteClassAliasAllRelated();
    }
    
    model_internal static function initRemoteClassAliasSingleChild():void
    {
      _Super_InjectorRule.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.network.model.InjectorRule);
    }
    {
      _Super_InjectorRule.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.network.model.InjectorRule);
    }
    /**
     * END OF DO NOT MODIFY SECTION
     **/
  }

}