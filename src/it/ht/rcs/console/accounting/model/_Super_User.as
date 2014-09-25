/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - User.as.
 */

package it.ht.rcs.console.accounting.model
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import it.ht.rcs.console.accounting.model.Recent_ids;
import mx.binding.utils.ChangeWatcher;
import mx.collections.ArrayCollection;
import mx.events.CollectionEvent;
import mx.events.PropertyChangeEvent;
import mx.validators.ValidationResult;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_User extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        it.ht.rcs.console.accounting.model.Recent_ids.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _UserEntityMetadata;
    model_internal var _changedObjects:mx.collections.ArrayCollection = new ArrayCollection();

    public function getChangedObjects() : Array
    {
        _changedObjects.addItemAt(this,0);
        return _changedObjects.source;
    }

    public function clearChangedObjects() : void
    {
        _changedObjects.removeAll();
    }

    /**
     * properties
     */
    private var _internal_not_exist : String;
    private var _internal__mid : int;
    private var _internal_enabled : Boolean;
    private var _internal_password_expired : Boolean;
    private var _internal_desc : String;
    private var _internal_group_ids : ArrayCollection;
    private var _internal_locale : String;
    private var _internal_contact : String;
    private var _internal_pass : String;
    private var _internal_timezone : int;
    private var _internal_updated_at : String;
    private var _internal__id : String;
    private var _internal_recent_ids : ArrayCollection;
    model_internal var _internal_recent_ids_leaf:it.ht.rcs.console.accounting.model.Recent_ids;
    private var _internal_privs : ArrayCollection;
    private var _internal_dashboard_ids : ArrayCollection;
    private var _internal_name : String;
    private var _internal_created_at : String;
    private var _internal_ext_privs : Boolean;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_User()
    {
        _model = new _UserEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "desc", model_internal::setterListenerDesc));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "group_ids", model_internal::setterListenerGroup_ids));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "locale", model_internal::setterListenerLocale));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "contact", model_internal::setterListenerContact));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "pass", model_internal::setterListenerPass));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "updated_at", model_internal::setterListenerUpdated_at));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "_id", model_internal::setterListener_id));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "recent_ids", model_internal::setterListenerRecent_ids));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "privs", model_internal::setterListenerPrivs));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "dashboard_ids", model_internal::setterListenerDashboard_ids));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "name", model_internal::setterListenerName));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "created_at", model_internal::setterListenerCreated_at));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get not_exist() : String
    {
        return _internal_not_exist;
    }

    [Bindable(event="propertyChange")]
    public function get _mid() : int
    {
        return _internal__mid;
    }

    [Bindable(event="propertyChange")]
    public function get enabled() : Boolean
    {
        return _internal_enabled;
    }

    [Bindable(event="propertyChange")]
    public function get password_expired() : Boolean
    {
        return _internal_password_expired;
    }

    [Bindable(event="propertyChange")]
    public function get desc() : String
    {
        return _internal_desc;
    }

    [Bindable(event="propertyChange")]
    public function get group_ids() : ArrayCollection
    {
        return _internal_group_ids;
    }

    [Bindable(event="propertyChange")]
    public function get locale() : String
    {
        return _internal_locale;
    }

    [Bindable(event="propertyChange")]
    public function get contact() : String
    {
        return _internal_contact;
    }

    [Bindable(event="propertyChange")]
    public function get pass() : String
    {
        return _internal_pass;
    }

    [Bindable(event="propertyChange")]
    public function get timezone() : int
    {
        return _internal_timezone;
    }

    [Bindable(event="propertyChange")]
    public function get updated_at() : String
    {
        return _internal_updated_at;
    }

    [Bindable(event="propertyChange")]
    public function get _id() : String
    {
        return _internal__id;
    }

    [Bindable(event="propertyChange")]
    public function get recent_ids() : ArrayCollection
    {
        return _internal_recent_ids;
    }

    [Bindable(event="propertyChange")]
    public function get privs() : ArrayCollection
    {
        return _internal_privs;
    }

    [Bindable(event="propertyChange")]
    public function get dashboard_ids() : ArrayCollection
    {
        return _internal_dashboard_ids;
    }

    [Bindable(event="propertyChange")]
    public function get name() : String
    {
        return _internal_name;
    }

    [Bindable(event="propertyChange")]
    public function get created_at() : String
    {
        return _internal_created_at;
    }

    [Bindable(event="propertyChange")]
    public function get ext_privs() : Boolean
    {
        return _internal_ext_privs;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set not_exist(value:String) : void
    {
        var oldValue:String = _internal_not_exist;
        if (oldValue !== value)
        {
            _internal_not_exist = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "not_exist", oldValue, _internal_not_exist));
        }
    }

    public function set _mid(value:int) : void
    {
        var oldValue:int = _internal__mid;
        if (oldValue !== value)
        {
            _internal__mid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_mid", oldValue, _internal__mid));
        }
    }

    public function set enabled(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_enabled;
        if (oldValue !== value)
        {
            _internal_enabled = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "enabled", oldValue, _internal_enabled));
        }
    }

    public function set password_expired(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_password_expired;
        if (oldValue !== value)
        {
            _internal_password_expired = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "password_expired", oldValue, _internal_password_expired));
        }
    }

    public function set desc(value:String) : void
    {
        var oldValue:String = _internal_desc;
        if (oldValue !== value)
        {
            _internal_desc = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "desc", oldValue, _internal_desc));
        }
    }

    public function set group_ids(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_group_ids;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_group_ids = value;
            }
            else if (value is Array)
            {
                _internal_group_ids = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_group_ids = null;
            }
            else
            {
                throw new Error("value of group_ids must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "group_ids", oldValue, _internal_group_ids));
        }
    }

    public function set locale(value:String) : void
    {
        var oldValue:String = _internal_locale;
        if (oldValue !== value)
        {
            _internal_locale = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "locale", oldValue, _internal_locale));
        }
    }

    public function set contact(value:String) : void
    {
        var oldValue:String = _internal_contact;
        if (oldValue !== value)
        {
            _internal_contact = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "contact", oldValue, _internal_contact));
        }
    }

    public function set pass(value:String) : void
    {
        var oldValue:String = _internal_pass;
        if (oldValue !== value)
        {
            _internal_pass = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "pass", oldValue, _internal_pass));
        }
    }

    public function set timezone(value:int) : void
    {
        var oldValue:int = _internal_timezone;
        if (oldValue !== value)
        {
            _internal_timezone = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "timezone", oldValue, _internal_timezone));
        }
    }

    public function set updated_at(value:String) : void
    {
        var oldValue:String = _internal_updated_at;
        if (oldValue !== value)
        {
            _internal_updated_at = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "updated_at", oldValue, _internal_updated_at));
        }
    }

    public function set _id(value:String) : void
    {
        var oldValue:String = _internal__id;
        if (oldValue !== value)
        {
            _internal__id = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_id", oldValue, _internal__id));
        }
    }

    public function set recent_ids(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_recent_ids;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_recent_ids = value;
            }
            else if (value is Array)
            {
                _internal_recent_ids = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_recent_ids = null;
            }
            else
            {
                throw new Error("value of recent_ids must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "recent_ids", oldValue, _internal_recent_ids));
        }
    }

    public function set privs(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_privs;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_privs = value;
            }
            else if (value is Array)
            {
                _internal_privs = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_privs = null;
            }
            else
            {
                throw new Error("value of privs must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "privs", oldValue, _internal_privs));
        }
    }

    public function set dashboard_ids(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_dashboard_ids;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_dashboard_ids = value;
            }
            else if (value is Array)
            {
                _internal_dashboard_ids = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_dashboard_ids = null;
            }
            else
            {
                throw new Error("value of dashboard_ids must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dashboard_ids", oldValue, _internal_dashboard_ids));
        }
    }

    public function set name(value:String) : void
    {
        var oldValue:String = _internal_name;
        if (oldValue !== value)
        {
            _internal_name = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "name", oldValue, _internal_name));
        }
    }

    public function set created_at(value:String) : void
    {
        var oldValue:String = _internal_created_at;
        if (oldValue !== value)
        {
            _internal_created_at = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "created_at", oldValue, _internal_created_at));
        }
    }

    public function set ext_privs(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_ext_privs;
        if (oldValue !== value)
        {
            _internal_ext_privs = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ext_privs", oldValue, _internal_ext_privs));
        }
    }

    /**
     * Data/source property setter listeners
     *
     * Each data property whose value affects other properties or the validity of the entity
     * needs to invalidate all previously calculated artifacts. These include:
     *  - any derived properties or constraints that reference the given data property.
     *  - any availability guards (variant expressions) that reference the given data property.
     *  - any style validations, message tokens or guards that reference the given data property.
     *  - the validity of the property (and the containing entity) if the given data property has a length restriction.
     *  - the validity of the property (and the containing entity) if the given data property is required.
     */

    model_internal function setterListenerDesc(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDesc();
    }

    model_internal function setterListenerGroup_ids(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerGroup_ids);
            }
        }
        _model.invalidateDependentOnGroup_ids();
    }

    model_internal function setterListenerLocale(value:flash.events.Event):void
    {
        _model.invalidateDependentOnLocale();
    }

    model_internal function setterListenerContact(value:flash.events.Event):void
    {
        _model.invalidateDependentOnContact();
    }

    model_internal function setterListenerPass(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPass();
    }

    model_internal function setterListenerUpdated_at(value:flash.events.Event):void
    {
        _model.invalidateDependentOnUpdated_at();
    }

    model_internal function setterListener_id(value:flash.events.Event):void
    {
        _model.invalidateDependentOn_id();
    }

    model_internal function setterListenerRecent_ids(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerRecent_ids);
            }
        }
        _model.invalidateDependentOnRecent_ids();
    }

    model_internal function setterListenerPrivs(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerPrivs);
            }
        }
        _model.invalidateDependentOnPrivs();
    }

    model_internal function setterListenerDashboard_ids(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerDashboard_ids);
            }
        }
        _model.invalidateDependentOnDashboard_ids();
    }

    model_internal function setterListenerName(value:flash.events.Event):void
    {
        _model.invalidateDependentOnName();
    }

    model_internal function setterListenerCreated_at(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCreated_at();
    }


    /**
     * valid related derived properties
     */
    model_internal var _isValid : Boolean;
    model_internal var _invalidConstraints:Array = new Array();
    model_internal var _validationFailureMessages:Array = new Array();

    /**
     * derived property calculators
     */

    /**
     * isValid calculator
     */
    model_internal function calculateIsValid():Boolean
    {
        var violatedConsts:Array = new Array();
        var validationFailureMessages:Array = new Array();

        var propertyValidity:Boolean = true;
        if (!_model.descIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_descValidationFailureMessages);
        }
        if (!_model.group_idsIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_group_idsValidationFailureMessages);
        }
        if (!_model.localeIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_localeValidationFailureMessages);
        }
        if (!_model.contactIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_contactValidationFailureMessages);
        }
        if (!_model.passIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_passValidationFailureMessages);
        }
        if (!_model.updated_atIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_updated_atValidationFailureMessages);
        }
        if (!_model._idIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::__idValidationFailureMessages);
        }
        if (!_model.recent_idsIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_recent_idsValidationFailureMessages);
        }
        if (!_model.privsIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_privsValidationFailureMessages);
        }
        if (!_model.dashboard_idsIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_dashboard_idsValidationFailureMessages);
        }
        if (!_model.nameIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_nameValidationFailureMessages);
        }
        if (!_model.created_atIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_created_atValidationFailureMessages);
        }

        model_internal::_cacheInitialized_isValid = true;
        model_internal::invalidConstraints_der = violatedConsts;
        model_internal::validationFailureMessages_der = validationFailureMessages;
        return violatedConsts.length == 0 && propertyValidity;
    }

    /**
     * derived property setters
     */

    model_internal function set isValid_der(value:Boolean) : void
    {
        var oldValue:Boolean = model_internal::_isValid;
        if (oldValue !== value)
        {
            model_internal::_isValid = value;
            _model.model_internal::fireChangeEvent("isValid", oldValue, model_internal::_isValid);
        }
    }

    /**
     * derived property getters
     */

    [Transient]
    [Bindable(event="propertyChange")]
    public function get _model() : _UserEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _UserEntityMetadata) : void
    {
        var oldValue : _UserEntityMetadata = model_internal::_dminternal_model;
        if (oldValue !== value)
        {
            model_internal::_dminternal_model = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_model", oldValue, model_internal::_dminternal_model));
        }
    }

    /**
     * methods
     */


    /**
     *  services
     */
    private var _managingService:com.adobe.fiber.services.IFiberManagingService;

    public function set managingService(managingService:com.adobe.fiber.services.IFiberManagingService):void
    {
        _managingService = managingService;
    }

    model_internal function set invalidConstraints_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_invalidConstraints;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_invalidConstraints = value;
            _model.model_internal::fireChangeEvent("invalidConstraints", oldValue, model_internal::_invalidConstraints);
        }
    }

    model_internal function set validationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_validationFailureMessages;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_validationFailureMessages = value;
            _model.model_internal::fireChangeEvent("validationFailureMessages", oldValue, model_internal::_validationFailureMessages);
        }
    }

    model_internal var _doValidationCacheOfDesc : Array = null;
    model_internal var _doValidationLastValOfDesc : String;

    model_internal function _doValidationForDesc(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfDesc != null && model_internal::_doValidationLastValOfDesc == value)
           return model_internal::_doValidationCacheOfDesc ;

        _model.model_internal::_descIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDescAvailable && _internal_desc == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "desc is required"));
        }

        model_internal::_doValidationCacheOfDesc = validationFailures;
        model_internal::_doValidationLastValOfDesc = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfGroup_ids : Array = null;
    model_internal var _doValidationLastValOfGroup_ids : ArrayCollection;

    model_internal function _doValidationForGroup_ids(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfGroup_ids != null && model_internal::_doValidationLastValOfGroup_ids == value)
           return model_internal::_doValidationCacheOfGroup_ids ;

        _model.model_internal::_group_idsIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isGroup_idsAvailable && _internal_group_ids == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "group_ids is required"));
        }

        model_internal::_doValidationCacheOfGroup_ids = validationFailures;
        model_internal::_doValidationLastValOfGroup_ids = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfLocale : Array = null;
    model_internal var _doValidationLastValOfLocale : String;

    model_internal function _doValidationForLocale(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfLocale != null && model_internal::_doValidationLastValOfLocale == value)
           return model_internal::_doValidationCacheOfLocale ;

        _model.model_internal::_localeIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isLocaleAvailable && _internal_locale == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "locale is required"));
        }

        model_internal::_doValidationCacheOfLocale = validationFailures;
        model_internal::_doValidationLastValOfLocale = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfContact : Array = null;
    model_internal var _doValidationLastValOfContact : String;

    model_internal function _doValidationForContact(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfContact != null && model_internal::_doValidationLastValOfContact == value)
           return model_internal::_doValidationCacheOfContact ;

        _model.model_internal::_contactIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isContactAvailable && _internal_contact == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "contact is required"));
        }

        model_internal::_doValidationCacheOfContact = validationFailures;
        model_internal::_doValidationLastValOfContact = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfPass : Array = null;
    model_internal var _doValidationLastValOfPass : String;

    model_internal function _doValidationForPass(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfPass != null && model_internal::_doValidationLastValOfPass == value)
           return model_internal::_doValidationCacheOfPass ;

        _model.model_internal::_passIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPassAvailable && _internal_pass == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "pass is required"));
        }

        model_internal::_doValidationCacheOfPass = validationFailures;
        model_internal::_doValidationLastValOfPass = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfUpdated_at : Array = null;
    model_internal var _doValidationLastValOfUpdated_at : String;

    model_internal function _doValidationForUpdated_at(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfUpdated_at != null && model_internal::_doValidationLastValOfUpdated_at == value)
           return model_internal::_doValidationCacheOfUpdated_at ;

        _model.model_internal::_updated_atIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isUpdated_atAvailable && _internal_updated_at == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "updated_at is required"));
        }

        model_internal::_doValidationCacheOfUpdated_at = validationFailures;
        model_internal::_doValidationLastValOfUpdated_at = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOf_id : Array = null;
    model_internal var _doValidationLastValOf_id : String;

    model_internal function _doValidationFor_id(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOf_id != null && model_internal::_doValidationLastValOf_id == value)
           return model_internal::_doValidationCacheOf_id ;

        _model.model_internal::__idIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.is_idAvailable && _internal__id == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "_id is required"));
        }

        model_internal::_doValidationCacheOf_id = validationFailures;
        model_internal::_doValidationLastValOf_id = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfRecent_ids : Array = null;
    model_internal var _doValidationLastValOfRecent_ids : ArrayCollection;

    model_internal function _doValidationForRecent_ids(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfRecent_ids != null && model_internal::_doValidationLastValOfRecent_ids == value)
           return model_internal::_doValidationCacheOfRecent_ids ;

        _model.model_internal::_recent_idsIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isRecent_idsAvailable && _internal_recent_ids == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "recent_ids is required"));
        }

        model_internal::_doValidationCacheOfRecent_ids = validationFailures;
        model_internal::_doValidationLastValOfRecent_ids = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfPrivs : Array = null;
    model_internal var _doValidationLastValOfPrivs : ArrayCollection;

    model_internal function _doValidationForPrivs(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfPrivs != null && model_internal::_doValidationLastValOfPrivs == value)
           return model_internal::_doValidationCacheOfPrivs ;

        _model.model_internal::_privsIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPrivsAvailable && _internal_privs == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "privs is required"));
        }

        model_internal::_doValidationCacheOfPrivs = validationFailures;
        model_internal::_doValidationLastValOfPrivs = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfDashboard_ids : Array = null;
    model_internal var _doValidationLastValOfDashboard_ids : ArrayCollection;

    model_internal function _doValidationForDashboard_ids(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfDashboard_ids != null && model_internal::_doValidationLastValOfDashboard_ids == value)
           return model_internal::_doValidationCacheOfDashboard_ids ;

        _model.model_internal::_dashboard_idsIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDashboard_idsAvailable && _internal_dashboard_ids == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "dashboard_ids is required"));
        }

        model_internal::_doValidationCacheOfDashboard_ids = validationFailures;
        model_internal::_doValidationLastValOfDashboard_ids = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfName : Array = null;
    model_internal var _doValidationLastValOfName : String;

    model_internal function _doValidationForName(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfName != null && model_internal::_doValidationLastValOfName == value)
           return model_internal::_doValidationCacheOfName ;

        _model.model_internal::_nameIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNameAvailable && _internal_name == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "name is required"));
        }

        model_internal::_doValidationCacheOfName = validationFailures;
        model_internal::_doValidationLastValOfName = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCreated_at : Array = null;
    model_internal var _doValidationLastValOfCreated_at : String;

    model_internal function _doValidationForCreated_at(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCreated_at != null && model_internal::_doValidationLastValOfCreated_at == value)
           return model_internal::_doValidationCacheOfCreated_at ;

        _model.model_internal::_created_atIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCreated_atAvailable && _internal_created_at == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "created_at is required"));
        }

        model_internal::_doValidationCacheOfCreated_at = validationFailures;
        model_internal::_doValidationLastValOfCreated_at = value;

        return validationFailures;
    }
    

}

}
