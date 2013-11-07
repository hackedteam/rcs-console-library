package it.ht.rcs.console.alert.model
{
  import com.adobe.fiber.core.model_internal;
  
  public class AlertLog extends _Super_AlertLog
  {
    
    public function AlertLog(data:Object=null)
    {
      if (data) {
        _id = data._id;
        time = data.time;
        path = data.path;
        evidence = data.evidence;
        entities = data.entities;
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
      _Super_AlertLog.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.alert.model.AlertLog);
      _Super_AlertLog.model_internal::initRemoteClassAliasAllRelated();
    }
    
    model_internal static function initRemoteClassAliasSingleChild():void
    {
      _Super_AlertLog.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.alert.model.AlertLog);
    }
    {
      _Super_AlertLog.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.alert.model.AlertLog);
    }
    /**
     * END OF DO NOT MODIFY SECTION
     **/
  }

}