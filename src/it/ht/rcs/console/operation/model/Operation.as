package it.ht.rcs.console.operation.model
{
  import com.adobe.fiber.core.model_internal;
  
  import it.ht.rcs.console.DB;
  
  public class Operation extends _Super_Operation
  {
    
    public static function defaultOperation():Object
    {
      return {
        _id: '',
        _kind: 'operation',
        contact: '',
        created_at: '',
        desc: '',
        group_ids: [],
        name: DB.i18n.get('NEW_OPERATION'),
        path: [],
        stat: null,
        status: 'open',
        updated_at: ''
      };
    }
    
    public function Operation(data:Object = null)
    {
      if (data) {
        _id = data._id;
        _kind = data._kind;
        contact = data.contact;
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
    public static function _initRemoteClassAlias():void
    {
      _Super_Operation.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.operation.model.Operation);
      _Super_Operation.model_internal::initRemoteClassAliasAllRelated();
    }
    
    model_internal static function initRemoteClassAliasSingleChild():void
    {
      _Super_Operation.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.operation.model.Operation);
    }
    {
      _Super_Operation.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.operation.model.Operation);
    }
    /**
     * END OF DO NOT MODIFY SECTION
     **/
  }

}