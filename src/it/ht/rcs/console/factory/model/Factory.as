package it.ht.rcs.console.factory.model
{

  import com.adobe.fiber.core.model_internal;
  
  import it.ht.rcs.console.DB;
  
  public class Factory extends _Super_Factory
  {
    
    public static function defaultFactory():Object 
    {
      return {
        _id: '',
        _kind: 'factory',
        desc: '',
        ident: '',
        name: DB.i18n.get('NEW_FACTORY'),
        status: 'OPEN',
        path: [],
        configs: [],
        counter: 0,
        type: ''
      };
    }
    
    public function Factory(data:Object = null) 
    {
      if (data) {
        _id = data._id;
        _kind = data._kind;
        desc = data.desc;
        ident = data.ident;
        name = data.name;
        status = data.status;
        path = data.path;
        configs = data.configs;
        counter = data.counter;
        type = data.type;
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
      _Super_Factory.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.factory.model.Factory);
      _Super_Factory.model_internal::initRemoteClassAliasAllRelated();
    }
     
    model_internal static function initRemoteClassAliasSingleChild() : void
    {
      _Super_Factory.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.factory.model.Factory);
    }
    
    {
      _Super_Factory.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.factory.model.Factory);
    }
    /**
     * END OF DO NOT MODIFY SECTION
     **/
    
  }

}