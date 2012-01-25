package it.ht.rcs.console.accounting.model
{
  import com.adobe.fiber.core.model_internal;
  
  import it.ht.rcs.console.DB;
  
  import mx.events.PropertyChangeEvent;

  public class User extends _Super_User
  {
    
    public var _session:Session;
    
    [Bindable(event="propertyChange")]
    public function get session():Session
    {
      return _session;
    }
    
    public function set session(value:Session):void
    {
      var oldValue:Session = _session;
      if (oldValue !== value)
      {
        _session = value;
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "session", oldValue, _session));
      }
    }
    
    public static function defaultUser():Object
    {
      return {
        _id: '',
        enabled: false,
        name: DB.i18n.get('NEW_USER'),
        pass: '',
        desc: '',
        contact: '',
        privs: new Array(),
        locale: 'en_US',
        timezone: 0,
        group_ids: new Array(),
        dashboard_ids: new Array(),
        recent_ids: new Array()
      };
    }
    
    public function User(data:Object=null)
    {
      if (data) {
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
        dashboard_ids = data.dashboard_ids;
        recent_ids = data.recent_ids;
      }
    }

    public function is_admin():Boolean
    {
      return privs.getItemIndex('ADMIN') != -1;
    }

    public function is_sys():Boolean
    {
      return privs.getItemIndex('SYS') != -1;
    }
    
    public function is_tech():Boolean
    {
      return privs.getItemIndex('TECH') != -1;
    }

    public function is_view():Boolean
    {
      return privs.getItemIndex('VIEW') != -1;
    }

    public function is_any():Boolean
    {
      return privs.length != 0;
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
     **/
  }

}