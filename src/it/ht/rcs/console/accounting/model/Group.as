/**
 * This is a generated sub-class of _Group.as and is intended for behavior
 * customization.  This class is only generated when there is no file already present
 * at its target location.  Thus custom behavior that you add here will survive regeneration
 * of the super-class.
 *
 * NOTE: Do not manually modify the RemoteClass mapping unless
 * your server representation of this class has changed and you've
 * updated your ActionScriptGeneration,RemoteClass annotation on the
 * corresponding entity
 **/

package it.ht.rcs.console.accounting.model
{

  import com.adobe.fiber.core.model_internal;
  
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.accounting.rest.IDBGroup;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;


  public class Group extends _Super_Group
  {
    /**
     * DO NOT MODIFY THIS STATIC INITIALIZER - IT IS NECESSARY
     * FOR PROPERLY SETTING UP THE REMOTE CLASS ALIAS FOR THIS CLASS
     *
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
     *
     **/
    
    public static function defaultGroup():Object
    {
      var name:String = DB.i18n.getString('NEW_GROUP');
      return {
        _id: "",
        name: name,
        alert: false,
        user_ids: new ArrayCollection()
      }
    }
    
    public function Group(data:Object=null)
    {
      if (data) {
        _id = data._id;
        name = data.name;
        alert = data.alert;
        user_ids = data.user_ids;
      }
    }
    
    /*
    public function toHash():Object
    {
      return {name: name, user_ids: user_ids.source}
    }
    */

  }

}