package it.ht.rcs.console.search.model
{
  import com.adobe.fiber.core.model_internal;
  
  public class Stat extends _Super_Stat
  {
    
    public function Stat(data:Object=null) 
    {
      if (data) {
        last_sync = data.last_sync;
        last_sync_status = data.last_sync_status;
        last_child = data.last_child;
        user = data.user;
        device = data.device;
        source = data.source;
        evidence = data.evidence;
        dashboard = data.dashboard;
        size = data.size;
        grid_size = data.grid_size;
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
      _Super_Stat.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.search.model.Stat);
      _Super_Stat.model_internal::initRemoteClassAliasAllRelated();
    }
    
    model_internal static function initRemoteClassAliasSingleChild():void
    {
      _Super_Stat.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.search.model.Stat);
    }
    {
      _Super_Stat.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.search.model.Stat);
    }
    /**
     * END OF DO NOT MODIFY SECTION
     **/
  }

}