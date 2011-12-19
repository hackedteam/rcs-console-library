package it.ht.rcs.console.audit.model
{
  import com.adobe.fiber.core.model_internal;
  
  public class AuditFilter extends _Super_AuditFilter
  {
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
      _Super_AuditFilter.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.audit.model.AuditFilter);
      _Super_AuditFilter.model_internal::initRemoteClassAliasAllRelated();
    }
    
    model_internal static function initRemoteClassAliasSingleChild():void
    {
      _Super_AuditFilter.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.audit.model.AuditFilter);
    }
    {
      _Super_AuditFilter.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.audit.model.AuditFilter);
    }
    /**
     * END OF DO NOT MODIFY SECTION
     **/
  }

}