/**
 * This is a generated sub-class of _User.as and is intended for behavior
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

  import it.ht.rcs.console.accounting.rest.IDBUser;

  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;

  public class User extends _Super_User
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
      _Super_User.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.accounting.model.User);
      _Super_User.model_internal::initRemoteClassAliasAllRelated();
    }

    model_internal static function initRemoteClassAliasSingleChild():void
    {
      _Super_User.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.accounting.model.User);
    }

    {
      _Super_User.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.accounting.model.User);
    }

    /**
     * END OF DO NOT MODIFY SECTION
     *
     **/

    public function User(data:Object = null)
    {
      /* default user (when creating new user) */
      if (data == null) {
        _id = '';
        enabled = false;
        name = ResourceManager.getInstance().getString('localized_main', 'NEW_USER');
        pass = '';
        desc = '';
        contact = '';
        privs = new ArrayCollection();
        locale = 'en_US';
        timezone = 0;
        group_ids = new ArrayCollection();
      } else {
        /* existing user */
        _id = data._id;
        enabled = data.enabled;
        name = data.name;
        pass = data.pass;
        desc = data.desc;
        contact = data.contact;
        privs = data.privs;
        locale = data.locale;
        timezone = data.timezone;
        group_ids = data.group_ids;
      }
    }

    public function toHash():Object
    {
      return {enabled: enabled, name: name, contact: contact, desc: desc, privs: privs.source, locale: locale, group_ids: group_ids.source, timezone: timezone};
    }

    public function is_admin():Boolean
    {
      return privs.getItemIndex('ADMIN') != -1;
    }

    public function is_tech():Boolean
    {
      return privs.getItemIndex('TECH') != -1;
    }

    public function is_viewer():Boolean
    {
      return privs.getItemIndex('VIEW') != -1;
    }

    public function is_any():Boolean
    {
      return privs.length != 0;
    }

  }

}