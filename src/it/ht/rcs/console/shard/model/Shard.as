package it.ht.rcs.console.shard.model
{
  import com.adobe.fiber.core.model_internal;
  
  public class Shard extends _Super_Shard
  {
    
    public function Shard(data:Object=null)
    {
      if (data) {
        host = data.host;
        _id = data._id;
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
      _Super_Shard.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.shard.model.Shard);
      _Super_Shard.model_internal::initRemoteClassAliasAllRelated();
    }
    
    model_internal static function initRemoteClassAliasSingleChild():void
    {
      _Super_Shard.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.shard.model.Shard);
    }
    {
      _Super_Shard.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.shard.model.Shard);
    }
    /**
     * END OF DO NOT MODIFY SECTION
     **/
  }

}