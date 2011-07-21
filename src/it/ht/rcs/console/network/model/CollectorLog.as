package it.ht.rcs.console.network.model
{

  import com.adobe.fiber.core.model_internal;
  
  public class CollectorLog extends _Super_CollectorLog
  {
    
    public static function defaultCollectorLog():Object
    {
      return {
        time: '',
        type: '',
        info: ''
      };
    }
    
    public function CollectorLog(data:Object = null)
    {
      if (data) {
        time = data.time;
        type = data.type;
        info = data.info;
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
        _Super_CollectorLog.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.network.model.CollectorLog);
        _Super_CollectorLog.model_internal::initRemoteClassAliasAllRelated();
    }
     
    model_internal static function initRemoteClassAliasSingleChild() : void
    {
        _Super_CollectorLog.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.network.model.CollectorLog);
    }
    
    {
        _Super_CollectorLog.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.network.model.CollectorLog);
    }
    /**
     * END OF DO NOT MODIFY SECTION
     **/
      
  }

}