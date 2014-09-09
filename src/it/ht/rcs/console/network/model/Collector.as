package it.ht.rcs.console.network.model
{
  import com.adobe.fiber.core.model_internal;
  
  import it.ht.rcs.console.DB;
  
  public class Collector extends _Super_Collector
  {
    
    
    [Bindable]
    public function get isUpdatable():Boolean
    {
        return version>=2014093001
    }
    
    public static function defaultCollector():Object
    {
      return {
        _id: '',
        good:true,
        address: '',
        internal_address: '',
        desc: '',
        name: DB.i18n.get('NEW_ANONYMIZER'),
        enabled: true,
        port: 80,
        type: 'remote',
        version: '',
        next: [null],
        prev: [null]
      };
    }
    
    public function Collector(data:Object=null)
    {
      if (data) {
        _id = data._id;
        address = data.address;
        internal_address = data.internal_address;
        desc = data.desc;
        name = data.name;
        enabled = data.enabled;
        port = data.port;
        type = data.type;
        version = data.version;
        next = data.next;
        prev = data.prev;
        good = data.good;
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
      _Super_Collector.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.network.model.Collector);
      _Super_Collector.model_internal::initRemoteClassAliasAllRelated();
    }
    
    model_internal static function initRemoteClassAliasSingleChild():void
    {
      _Super_Collector.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.network.model.Collector);
    }
    
    {
      _Super_Collector.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.network.model.Collector);
    }
    /**
     * END OF DO NOT MODIFY SECTION
     **/
  
  }

}