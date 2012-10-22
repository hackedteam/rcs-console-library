/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - SearchItem.as.
 */

package it.ht.rcs.console.search.model
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import it.ht.rcs.console.search.model.Stat;
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
public class _Super_SearchItem extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        it.ht.rcs.console.search.model.Stat.initRemoteClassAliasSingleChild();
        it.ht.rcs.console.search.model.StatEvidence.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _SearchItemEntityMetadata;
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
    private var _internal_group_ids : ArrayCollection;
    private var _internal_demo : Boolean;
    private var _internal_scout : Boolean;
    private var _internal_platform : String;
    private var _internal__kind : String;
    private var _internal_desc : String;
    private var _internal__id : String;
    private var _internal_status : String;
    private var _internal_name : String;
    private var _internal_path : ArrayCollection;
    private var _internal_type : String;
    private var _internal_ident : String;
    private var _internal_instance : String;
    private var _internal_stat : it.ht.rcs.console.search.model.Stat;
    private var _internal_version : int;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_SearchItem()
    {
        _model = new _SearchItemEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "platform", model_internal::setterListenerPlatform));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "_kind", model_internal::setterListener_kind));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "desc", model_internal::setterListenerDesc));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "_id", model_internal::setterListener_id));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "status", model_internal::setterListenerStatus));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "name", model_internal::setterListenerName));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "path", model_internal::setterListenerPath));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "type", model_internal::setterListenerType));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "instance", model_internal::setterListenerInstance));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "stat", model_internal::setterListenerStat));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get group_ids() : ArrayCollection
    {
        return _internal_group_ids;
    }

    [Bindable(event="propertyChange")]
    public function get demo() : Boolean
    {
        return _internal_demo;
    }

    [Bindable(event="propertyChange")]
    public function get scout() : Boolean
    {
        return _internal_scout;
    }

    [Bindable(event="propertyChange")]
    public function get platform() : String
    {
        return _internal_platform;
    }

    [Bindable(event="propertyChange")]
    public function get _kind() : String
    {
        return _internal__kind;
    }

    [Bindable(event="propertyChange")]
    public function get desc() : String
    {
        return _internal_desc;
    }

    [Bindable(event="propertyChange")]
    public function get _id() : String
    {
        return _internal__id;
    }

    [Bindable(event="propertyChange")]
    public function get status() : String
    {
        return _internal_status;
    }

    [Bindable(event="propertyChange")]
    public function get name() : String
    {
        return _internal_name;
    }

    [Bindable(event="propertyChange")]
    public function get path() : ArrayCollection
    {
        return _internal_path;
    }

    [Bindable(event="propertyChange")]
    public function get type() : String
    {
        return _internal_type;
    }

    [Bindable(event="propertyChange")]
    public function get ident() : String
    {
        return _internal_ident;
    }

    [Bindable(event="propertyChange")]
    public function get instance() : String
    {
        return _internal_instance;
    }

    [Bindable(event="propertyChange")]
    public function get stat() : it.ht.rcs.console.search.model.Stat
    {
        return _internal_stat;
    }

    [Bindable(event="propertyChange")]
    public function get version() : int
    {
        return _internal_version;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

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

    public function set demo(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_demo;
        if (oldValue !== value)
        {
            _internal_demo = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "demo", oldValue, _internal_demo));
        }
    }

    public function set scout(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_scout;
        if (oldValue !== value)
        {
            _internal_scout = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "scout", oldValue, _internal_scout));
        }
    }

    public function set platform(value:String) : void
    {
        var oldValue:String = _internal_platform;
        if (oldValue !== value)
        {
            _internal_platform = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "platform", oldValue, _internal_platform));
        }
    }

    public function set _kind(value:String) : void
    {
        var oldValue:String = _internal__kind;
        if (oldValue !== value)
        {
            _internal__kind = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_kind", oldValue, _internal__kind));
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

    public function set _id(value:String) : void
    {
        var oldValue:String = _internal__id;
        if (oldValue !== value)
        {
            _internal__id = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_id", oldValue, _internal__id));
        }
    }

    public function set status(value:String) : void
    {
        var oldValue:String = _internal_status;
        if (oldValue !== value)
        {
            _internal_status = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "status", oldValue, _internal_status));
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

    public function set path(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_path;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_path = value;
            }
            else if (value is Array)
            {
                _internal_path = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_path = null;
            }
            else
            {
                throw new Error("value of path must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "path", oldValue, _internal_path));
        }
    }

    public function set type(value:String) : void
    {
        var oldValue:String = _internal_type;
        if (oldValue !== value)
        {
            _internal_type = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "type", oldValue, _internal_type));
        }
    }

    public function set ident(value:String) : void
    {
        var oldValue:String = _internal_ident;
        if (oldValue !== value)
        {
            _internal_ident = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ident", oldValue, _internal_ident));
        }
    }

    public function set instance(value:String) : void
    {
        var oldValue:String = _internal_instance;
        if (oldValue !== value)
        {
            _internal_instance = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "instance", oldValue, _internal_instance));
        }
    }

    public function set stat(value:it.ht.rcs.console.search.model.Stat) : void
    {
        var oldValue:it.ht.rcs.console.search.model.Stat = _internal_stat;
        if (oldValue !== value)
        {
            _internal_stat = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "stat", oldValue, _internal_stat));
        }
    }

    public function set version(value:int) : void
    {
        var oldValue:int = _internal_version;
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

    model_internal function setterListenerPlatform(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPlatform();
    }

    model_internal function setterListener_kind(value:flash.events.Event):void
    {
        _model.invalidateDependentOn_kind();
    }

    model_internal function setterListenerDesc(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDesc();
    }

    model_internal function setterListener_id(value:flash.events.Event):void
    {
        _model.invalidateDependentOn_id();
    }

    model_internal function setterListenerStatus(value:flash.events.Event):void
    {
        _model.invalidateDependentOnStatus();
    }

    model_internal function setterListenerName(value:flash.events.Event):void
    {
        _model.invalidateDependentOnName();
    }

    model_internal function setterListenerPath(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerPath);
            }
        }
        _model.invalidateDependentOnPath();
    }

    model_internal function setterListenerType(value:flash.events.Event):void
    {
        _model.invalidateDependentOnType();
    }

    model_internal function setterListenerInstance(value:flash.events.Event):void
    {
        _model.invalidateDependentOnInstance();
    }

    model_internal function setterListenerStat(value:flash.events.Event):void
    {
        _model.invalidateDependentOnStat();
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
        if (!_model.platformIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_platformValidationFailureMessages);
        }
        if (!_model._kindIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::__kindValidationFailureMessages);
        }
        if (!_model.descIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_descValidationFailureMessages);
        }
        if (!_model._idIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::__idValidationFailureMessages);
        }
        if (!_model.statusIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_statusValidationFailureMessages);
        }
        if (!_model.nameIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_nameValidationFailureMessages);
        }
        if (!_model.pathIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_pathValidationFailureMessages);
        }
        if (!_model.typeIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_typeValidationFailureMessages);
        }
        if (!_model.instanceIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_instanceValidationFailureMessages);
        }
        if (!_model.statIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_statValidationFailureMessages);
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
    public function get _model() : _SearchItemEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _SearchItemEntityMetadata) : void
    {
        var oldValue : _SearchItemEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfPlatform : Array = null;
    model_internal var _doValidationLastValOfPlatform : String;

    model_internal function _doValidationForPlatform(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfPlatform != null && model_internal::_doValidationLastValOfPlatform == value)
           return model_internal::_doValidationCacheOfPlatform ;

        _model.model_internal::_platformIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPlatformAvailable && _internal_platform == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "platform is required"));
        }

        model_internal::_doValidationCacheOfPlatform = validationFailures;
        model_internal::_doValidationLastValOfPlatform = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOf_kind : Array = null;
    model_internal var _doValidationLastValOf_kind : String;

    model_internal function _doValidationFor_kind(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOf_kind != null && model_internal::_doValidationLastValOf_kind == value)
           return model_internal::_doValidationCacheOf_kind ;

        _model.model_internal::__kindIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.is_kindAvailable && _internal__kind == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "_kind is required"));
        }

        model_internal::_doValidationCacheOf_kind = validationFailures;
        model_internal::_doValidationLastValOf_kind = value;

        return validationFailures;
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
    
    model_internal var _doValidationCacheOfStatus : Array = null;
    model_internal var _doValidationLastValOfStatus : String;

    model_internal function _doValidationForStatus(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfStatus != null && model_internal::_doValidationLastValOfStatus == value)
           return model_internal::_doValidationCacheOfStatus ;

        _model.model_internal::_statusIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isStatusAvailable && _internal_status == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "status is required"));
        }

        model_internal::_doValidationCacheOfStatus = validationFailures;
        model_internal::_doValidationLastValOfStatus = value;

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
    
    model_internal var _doValidationCacheOfPath : Array = null;
    model_internal var _doValidationLastValOfPath : ArrayCollection;

    model_internal function _doValidationForPath(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfPath != null && model_internal::_doValidationLastValOfPath == value)
           return model_internal::_doValidationCacheOfPath ;

        _model.model_internal::_pathIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPathAvailable && _internal_path == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "path is required"));
        }

        model_internal::_doValidationCacheOfPath = validationFailures;
        model_internal::_doValidationLastValOfPath = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfType : Array = null;
    model_internal var _doValidationLastValOfType : String;

    model_internal function _doValidationForType(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfType != null && model_internal::_doValidationLastValOfType == value)
           return model_internal::_doValidationCacheOfType ;

        _model.model_internal::_typeIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTypeAvailable && _internal_type == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "type is required"));
        }

        model_internal::_doValidationCacheOfType = validationFailures;
        model_internal::_doValidationLastValOfType = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfInstance : Array = null;
    model_internal var _doValidationLastValOfInstance : String;

    model_internal function _doValidationForInstance(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfInstance != null && model_internal::_doValidationLastValOfInstance == value)
           return model_internal::_doValidationCacheOfInstance ;

        _model.model_internal::_instanceIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isInstanceAvailable && _internal_instance == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "instance is required"));
        }

        model_internal::_doValidationCacheOfInstance = validationFailures;
        model_internal::_doValidationLastValOfInstance = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfStat : Array = null;
    model_internal var _doValidationLastValOfStat : it.ht.rcs.console.search.model.Stat;

    model_internal function _doValidationForStat(valueIn:Object):Array
    {
        var value : it.ht.rcs.console.search.model.Stat = valueIn as it.ht.rcs.console.search.model.Stat;

        if (model_internal::_doValidationCacheOfStat != null && model_internal::_doValidationLastValOfStat == value)
           return model_internal::_doValidationCacheOfStat ;

        _model.model_internal::_statIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isStatAvailable && _internal_stat == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "stat is required"));
        }

        model_internal::_doValidationCacheOfStat = validationFailures;
        model_internal::_doValidationLastValOfStat = value;

        return validationFailures;
    }
    

}

}
