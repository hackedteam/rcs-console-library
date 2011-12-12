package it.ht.rcs.console.factory.model
{  
  import com.adobe.fiber.core.model_internal;
  
  public class Config extends _Super_Config
  {
    
    public function Config(data:Object=null)
    {
      if (data) {
        _id = data._id;
        desc = data.desc;
        sent = data.sent;
        activated = data.activated;
        saved = data.saved;
        user = data.user;
        config = data.config;
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
      _Super_Config.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.factory.model.Config);
      _Super_Config.model_internal::initRemoteClassAliasAllRelated();
    }
    
    model_internal static function initRemoteClassAliasSingleChild():void
    {
      _Super_Config.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.factory.model.Config);
    }
    
    {
      _Super_Config.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.factory.model.Config);
    }
    /** 
     * END OF DO NOT MODIFY SECTION
     **/
  
  }

}