package it.ht.rcs.console.audit.model
{
  import com.adobe.fiber.core.model_internal;
  
  public class Audit extends _Super_Audit
  {
    
    public function Audit(data:Object=null)
    {
      if (data) {
        _id = data._id;
        action = data.action;
        actor = data.actor;
        agent = data.agent;
        desc = data.desc;
        group = data.group;
        operation = data.operation;
        target = data.target;
        time = data.target;
        user = data.user;
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
      _Super_Audit.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.audit.model.Audit);
      _Super_Audit.model_internal::initRemoteClassAliasAllRelated();
    }
    
    model_internal static function initRemoteClassAliasSingleChild():void
    {
      _Super_Audit.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.audit.model.Audit);
    }
    {
      _Super_Audit.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.audit.model.Audit);
    }
    /**
     * END OF DO NOT MODIFY SECTION
     **/
  }

}