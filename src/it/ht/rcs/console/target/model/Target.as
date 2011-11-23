package it.ht.rcs.console.target.model
{

  import com.adobe.fiber.core.model_internal;
  
  import it.ht.rcs.console.DB;

  public class Target extends _Super_Target
  {
    
    public static function defaultTarget():Object
    {
      return {
        _id: '',
        _kind: 'target',
        created_at: '',
        desc: '',
        group_ids: [],
        name: DB.i18n.get('NEW_TARGET'),
        status: 'OPEN',
        path: [],
        stat: null,
        updated_at: ''
      };
    }
    
    public function Target(data:Object = null)
    {
      if (data) {
        _id = data._id;
        _kind = data._kind;
        created_at = data.created_at;
        desc = data.desc;
        group_ids = data.group_ids;
        name = data.name;
        path = data.path;
        stat = data.stat;
        status = data.status;
        updated_at = data.updated_at;
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
      _Super_Target.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.target.model.Target);
      _Super_Target.model_internal::initRemoteClassAliasAllRelated();
    }
     
    model_internal static function initRemoteClassAliasSingleChild() : void
    {
      _Super_Target.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.target.model.Target);
    }
    
    {
      _Super_Target.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.target.model.Target);
    }
    /**
     * END OF DO NOT MODIFY SECTION
     **/
    
  }

}