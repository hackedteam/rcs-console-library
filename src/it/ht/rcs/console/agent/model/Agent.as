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
        _kind: 'agent',
        name: DB.i18n.getString('NEW_AGENT'),
        desc: '',
        ident: '',
        status: 'OPEN',
        path: [],
        group_ids: [],
        upgradable: true,
        stat: null
      };
    }
    
    public function Agent(data:Object = null)
    {
      if (data) {
        _id = data._id;
        _kind = data._kind;
        name = data.name;
        desc = data.desc;
        ident = data.ident;
        status = data.status;
        path = data.path;
        group_ids = data.group_ids;
        upgradable = data.upgradable;
        stat = data.stat;
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
      _Super_Agent.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.agent.model.Agent);
      _Super_Agent.model_internal::initRemoteClassAliasAllRelated();
    }
     
    model_internal static function initRemoteClassAliasSingleChild() : void
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