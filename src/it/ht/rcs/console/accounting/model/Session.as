package it.ht.rcs.console.accounting.model
{
  import com.adobe.fiber.core.model_internal;
  
  public class Session extends _Super_Session
  {
    
    [Bindable]
    public var server:String;
    
    public function Session(data:Object=null)
    {
      if (data) {
        cookie = data.cookie;
        user = data.user;
        time = data.time;
        address = data.address;
        level = data.level;
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
      _Super_Session.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.accounting.model.Session);
      _Super_Session.model_internal::initRemoteClassAliasAllRelated();
    }
    
    model_internal static function initRemoteClassAliasSingleChild():void
    {
      _Super_Session.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.accounting.model.Session);
    }
    
    {
      _Super_Session.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.accounting.model.Session);
    }
    /**
     * END OF DO NOT MODIFY SECTION
     **/
  
  }

}