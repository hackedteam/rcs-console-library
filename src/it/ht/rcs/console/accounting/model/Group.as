package it.ht.rcs.console.accounting.model
{
  
  import com.adobe.fiber.core.model_internal;
  
  import it.ht.rcs.console.DB;
  
  public class Group extends _Super_Group
  {
    
    public static function defaultGroup():Object
    {
      return {
        _id: "",
        name: DB.i18n.getString('NEW_GROUP'),
        alert: false,
        user_ids: [],
        item_ids: []
      }
    }
    
    public function Group(data:Object = null)
    {
      if (data) {
        _id = data._id;
        name = data.name;
        alert = data.alert;
        user_ids = data.user_ids;
        item_ids = data.item_ids;
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
      _Super_Group.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.accounting.model.Group);
      _Super_Group.model_internal::initRemoteClassAliasAllRelated();
    }
    
    model_internal static function initRemoteClassAliasSingleChild():void
    {
      _Super_Group.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.accounting.model.Group);
    }
    
    {
      _Super_Group.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.accounting.model.Group);
    }
    
    /**
     * END OF DO NOT MODIFY SECTION
     **/
  
  }

}