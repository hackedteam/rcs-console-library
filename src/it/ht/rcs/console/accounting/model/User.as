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
        enabled: true,
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
    //ADMIN
    public function is_admin():Boolean
    {
      return privs.getItemIndex('ADMIN') != -1;
    }
    public function is_admin_users():Boolean
    {
      return privs.getItemIndex('ADMIN_USERS') != -1;
    }
    public function is_admin_operations():Boolean
    {
      return privs.getItemIndex('ADMIN_OPERATIONS') != -1;
    }
    public function is_admin_targets():Boolean
    {
      return privs.getItemIndex('ADMIN_TARGETS') != -1;
    }
    public function is_admin_audit():Boolean
    {
      return privs.getItemIndex('ADMIN_AUDIT') != -1;
    }
    public function is_admin_license():Boolean
    {
      return privs.getItemIndex('ADMIN_LICENSE') != -1;
    }
    public function is_admin_profiles():Boolean
    {
      return privs.getItemIndex('ADMIN_PROFILES') != -1;
    }
    
    //SYS
    public function is_sys():Boolean
    {
      return privs.getItemIndex('SYS') != -1;
    }
    public function is_sys_frontend():Boolean
    {
      return privs.getItemIndex('SYS_FRONTEND') != -1;
    }
    public function is_sys_backend():Boolean
    {
      return privs.getItemIndex('SYS_BACKEND') != -1;
    }
    public function is_sys_backup():Boolean
    {
      return privs.getItemIndex('SYS_BACKUP') != -1;
    }
    public function is_sys_injectors():Boolean
    {
      return privs.getItemIndex('SYS_INJECTORS') != -1;
    }
    public function is_sys_connectors():Boolean
    {
      return privs.getItemIndex('SYS_CONNECTORS') != -1;
    }

    //TECH
    public function is_tech():Boolean
    {
      return privs.getItemIndex('TECH') != -1;
    }
    public function is_tech_factories():Boolean
    {
      return privs.getItemIndex('TECH_FACTORIES') != -1;
    }
    public function is_tech_build():Boolean
    {
      return privs.getItemIndex('TECH_BUILD') != -1;
    }
    public function is_tech_config():Boolean
    {
      return privs.getItemIndex('TECH_CONFIG') != -1;
    }
    public function is_tech_exec():Boolean
    {
      return privs.getItemIndex('TECH_EXEC') != -1;
    }
    public function is_tech_upload():Boolean
    {
      return privs.getItemIndex('TECH_UPLOAD') != -1;
    }
    public function is_tech_import():Boolean
    {
      return privs.getItemIndex('TECH_IMPORT') != -1;
    }
    public function is_tech_ni_rules():Boolean
    {
      return privs.getItemIndex('TECH_NI_RULES') != -1;
    }
    
    //VIEW
    public function is_view():Boolean
    {
      return privs.getItemIndex('VIEW') != -1;
    }
    public function is_view_alerts():Boolean
    {
      return privs.getItemIndex('VIEW_ALERTS') != -1;
    }
    public function is_view_filesystem():Boolean
    {
      return privs.getItemIndex('VIEW_FILESYSTEM') != -1;
    }
    public function is_view_edit():Boolean
    {
      return privs.getItemIndex('VIEW_EDIT') != -1;
    }
    public function is_view_delete():Boolean
    {
      return privs.getItemIndex('VIEW_DELETE') != -1;
    }
    public function is_view_export():Boolean
    {
      return privs.getItemIndex('VIEW_EXPORT') != -1;
    }
    public function is_view_profiles():Boolean
    {
      return privs.getItemIndex('VIEW_PROFILES') != -1;
    }

    //ANY
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