/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Session.as.
 */

package it.ht.rcs.console.accounting.model
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import it.ht.rcs.console.accounting.model.User;
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
public class _Super_Session extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        it.ht.rcs.console.accounting.model.User.initRemoteClassAliasSingleChild();
        it.ht.rcs.console.accounting.model.Recent_ids.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _SessionEntityMetadata;
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
    private var _internal_user : it.ht.rcs.console.accounting.model.User;
    private var _internal_cookie : String;
    private var _internal_time : int;
    private var _internal_level : ArrayCollection;
    private var _internal__id : String;
    private var _internal_address : String;
    private var _internal_user_id : String;
    private var _internal_login_at : int;
    private var _internal_version : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Session()
    {
        _model = new _SessionEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "cookie", model_internal::setterListenerCookie));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "level", model_internal::setterListenerLevel));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "_id", model_internal::setterListener_id));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "address", model_internal::setterListenerAddress));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "user_id", model_internal::setterListenerUser_id));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "version", model_internal::setterListenerVersion));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get user() : it.ht.rcs.console.accounting.model.User
    {
        return _internal_user;
    }

    [Bindable(event="propertyChange")]
    public function get cookie() : String
    {
        return _internal_cookie;
    }

    [Bindable(event="propertyChange")]
    public function get time() : int
    {
        return _internal_time;
    }

    [Bindable(event="propertyChange")]
    public function get level() : ArrayCollection
    {
        return _internal_level;
    }

    [Bindable(event="propertyChange")]
    public function get _id() : String
    {
        return _internal__id;
    }

    [Bindable(event="propertyChange")]
    public function get address() : String
    {
        return _internal_address;
    }

    [Bindable(event="propertyChange")]
    public function get user_id() : String
    {
        return _internal_user_id;
    }

    [Bindable(event="propertyChange")]
    public function get login_at() : int
    {
        return _internal_login_at;
    }

    [Bindable(event="propertyChange")]
    public function get version() : String
    {
        return _internal_version;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set user(value:it.ht.rcs.console.accounting.model.User) : void
    {
        var oldValue:it.ht.rcs.console.accounting.model.User = _internal_user;
        if (oldValue !== value)
        {
            _internal_user = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "user", oldValue, _internal_user));
        }
    }

    public function set cookie(value:String) : void
    {
        var oldValue:String = _internal_cookie;
        if (oldValue !== value)
        {
            _internal_cookie = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cookie", oldValue, _internal_cookie));
        }
    }

    public function set time(value:int) : void
    {
        var oldValue:int = _internal_time;
        if (oldValue !== value)
        {
            _internal_time = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "time", oldValue, _internal_time));
        }
    }

    public function set level(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_level;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_level = value;
            }
            else if (value is Array)
            {
                _internal_level = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_level = null;
            }
            else
            {
                throw new Error("value of level must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "level", oldValue, _internal_level));
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

    public function set address(value:String) : void
    {
        var oldValue:String = _internal_address;
        if (oldValue !== value)
        {
            _internal_address = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "address", oldValue, _internal_address));
        }
    }

    public function set user_id(value:String) : void
    {
        var oldValue:String = _internal_user_id;
        if (oldValue !== value)
        {
            _internal_user_id = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "user_id", oldValue, _internal_user_id));
        }
    }

    public function set login_at(value:int) : void
    {
        var oldValue:int = _internal_login_at;
        if (oldValue !== value)
        {
            _internal_login_at = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "login_at", oldValue, _internal_login_at));
        }
    }

    public function set version(value:String) : void
    {
        var oldValue:String = _internal_version;
        if (oldValue !== value)
        {
            _internal_version = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "version", oldValue, _internal_version));
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

    model_internal function setterListenerCookie(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCookie();
    }

    model_internal function setterListenerLevel(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerLevel);
            }
        }
        _model.invalidateDependentOnLevel();
    }

    model_internal function setterListener_id(value:flash.events.Event):void
    {
        _model.invalidateDependentOn_id();
    }

    model_internal function setterListenerAddress(value:flash.events.Event):void
    {
        _model.invalidateDependentOnAddress();
    }

    model_internal function setterListenerUser_id(value:flash.events.Event):void
    {
        _model.invalidateDependentOnUser_id();
    }

    model_internal function setterListenerVersion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnVersion();
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
        if (!_model.cookieIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_cookieValidationFailureMessages);
        }
        if (!_model.levelIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_levelValidationFailureMessages);
        }
        if (!_model._idIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::__idValidationFailureMessages);
        }
        if (!_model.addressIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_addressValidationFailureMessages);
        }
        if (!_model.user_idIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_user_idValidationFailureMessages);
        }
        if (!_model.versionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_versionValidationFailureMessages);
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
    public function get _model() : _SessionEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _SessionEntityMetadata) : void
    {
        var oldValue : _SessionEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfCookie : Array = null;
    model_internal var _doValidationLastValOfCookie : String;

    model_internal function _doValidationForCookie(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCookie != null && model_internal::_doValidationLastValOfCookie == value)
           return model_internal::_doValidationCacheOfCookie ;

        _model.model_internal::_cookieIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCookieAvailable && _internal_cookie == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "cookie is required"));
        }

        model_internal::_doValidationCacheOfCookie = validationFailures;
        model_internal::_doValidationLastValOfCookie = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfLevel : Array = null;
    model_internal var _doValidationLastValOfLevel : ArrayCollection;

    model_internal function _doValidationForLevel(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfLevel != null && model_internal::_doValidationLastValOfLevel == value)
           return model_internal::_doValidationCacheOfLevel ;

        _model.model_internal::_levelIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isLevelAvailable && _internal_level == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "level is required"));
        }

        model_internal::_doValidationCacheOfLevel = validationFailures;
        model_internal::_doValidationLastValOfLevel = value;

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
    
    model_internal var _doValidationCacheOfAddress : Array = null;
    model_internal var _doValidationLastValOfAddress : String;

    model_internal function _doValidationForAddress(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfAddress != null && model_internal::_doValidationLastValOfAddress == value)
           return model_internal::_doValidationCacheOfAddress ;

        _model.model_internal::_addressIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isAddressAvailable && _internal_address == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "address is required"));
        }

        model_internal::_doValidationCacheOfAddress = validationFailures;
        model_internal::_doValidationLastValOfAddress = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfUser_id : Array = null;
    model_internal var _doValidationLastValOfUser_id : String;

    model_internal function _doValidationForUser_id(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfUser_id != null && model_internal::_doValidationLastValOfUser_id == value)
           return model_internal::_doValidationCacheOfUser_id ;

        _model.model_internal::_user_idIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isUser_idAvailable && _internal_user_id == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "user_id is required"));
        }

        model_internal::_doValidationCacheOfUser_id = validationFailures;
        model_internal::_doValidationLastValOfUser_id = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfVersion : Array = null;
    model_internal var _doValidationLastValOfVersion : String;

    model_internal function _doValidationForVersion(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfVersion != null && model_internal::_doValidationLastValOfVersion == value)
           return model_internal::_doValidationCacheOfVersion ;

        _model.model_internal::_versionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isVersionAvailable && _internal_version == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "version is required"));
        }

        model_internal::_doValidationCacheOfVersion = validationFailures;
        model_internal::_doValidationLastValOfVersion = value;

        return validationFailures;
    }
    

}

}
