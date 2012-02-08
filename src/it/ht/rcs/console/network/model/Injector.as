package it.ht.rcs.console.network.model
{
  import com.adobe.fiber.core.model_internal;
  
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.network.controller.InjectorRuleManager;
  
  public class Injector extends _Super_Injector
  {
    public var rulesManager:InjectorRuleManager;
    
    public static function defaultInjector():Object
    {
      return {
        _id: '',
        address: '',
        desc: '',
        name: DB.i18n.get('NEW_INJECTOR'),
        poll: false,
        port: 443,
        redirect: 'auto',
        redirection_tag: '',
        rules: [],
        version: ''
      };
    }
    
    public function Injector(data:Object = null)
    {
      // We always create an empty rulesManager to prevent NPE if the proxy has no rules.
      rulesManager = new InjectorRuleManager(this, null);
      if (data) {
        _id = data._id;
        address = data.address;
        desc = data.desc;
        name = data.name;
        poll = data.poll;
        port = data.port;
        redirect = data.redirect;
        redirection_tag = data.redirection_tag;
        rules = data.rules;
        version = data.version;
        created_at = data.created_at;
        updated_at = data.updated_at;
      }
    }
    
    override public function set rules(value:*):void
    {
      super.rules = value;
      
      /* attach the submanager for the rules list */
      if (rules != null)
        rulesManager = new InjectorRuleManager(this, rules);
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
        _Super_Injector.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.network.model.Injector);
        _Super_Injector.model_internal::initRemoteClassAliasAllRelated();
    }
    
    model_internal static function initRemoteClassAliasSingleChild():void
    {
      _Super_Injector.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.network.model.Injector);
    }
    {
      _Super_Injector.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.network.model.Injector);
    }
    /**
     * END OF DO NOT MODIFY SECTION
     **/
  }

}