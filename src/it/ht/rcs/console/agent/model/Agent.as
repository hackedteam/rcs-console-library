package it.ht.rcs.console.agent.model
{
  import com.adobe.fiber.core.model_internal;
  
  import it.ht.rcs.console.DB;
  
  public class Agent extends _Super_Agent
  {
    
    public static function defaultAgent():Object
    {
      return {
        _id: '',
        _kind: 'factory',
        name: DB.i18n.get('NEW_FACTORY'),
        desc: '',
        ident: '',
        status: 'open',
        path: [],
        upgradable: true,
        stat: null,
        configs: [],
        instance: ''
      };
    }
    
    public function Agent(data:Object=null)
    {
      fillData(data);
    }
    
    public function fillData(data:Object=null):void
    {
      if (data) {
        _id = data._id;
        _kind = data._kind;
        name = data.name;
        desc = data.desc;
        ident = data.ident;
        status = data.status;
        path = data.path;
        upgradable = data.upgradable;
        stat = data.stat;
        configs = data.configs;
        instance = data.instance;
        type = data.type;
        platform = data.platform;
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
      _Super_Agent.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.agent.model.Agent);
      _Super_Agent.model_internal::initRemoteClassAliasAllRelated();
    }
    
    model_internal static function initRemoteClassAliasSingleChild():void
    {
      _Super_Agent.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.agent.model.Agent);
    }
    {
      _Super_Agent.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.agent.model.Agent);
    }
    /**
     * END OF DO NOT MODIFY SECTION
     **/
  }

}