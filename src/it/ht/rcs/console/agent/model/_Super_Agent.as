/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Agent.as.
 */

package it.ht.rcs.console.agent.model
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import it.ht.rcs.console.agent.model.Config;
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
public class _Super_Agent extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        it.ht.rcs.console.search.model.Stat.initRemoteClassAliasSingleChild();
        it.ht.rcs.console.search.model.StatEvidence.initRemoteClassAliasSingleChild();
        it.ht.rcs.console.agent.model.Config.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _AgentEntityMetadata;
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
    private var _internal_level : String;
    private var _internal__kind : String;
    private var _internal_platform : String;
    private var _internal_desc : String;
    private var _internal_status : String;
    private var _internal_uninstalled : Boolean;
    private var _internal_type : String;
    private var _internal_deleted : Boolean;
    private var _internal_stat : it.ht.rcs.console.search.model.Stat;
    private var _internal_version : int;
    private var _internal_configs : ArrayCollection;
    model_internal var _internal_configs_leaf:it.ht.rcs.console.agent.model.Config;
    private var _internal_updated_at : Object;
    private var _internal__id : String;
    private var _internal_ident : String;
    private var _internal_name : String;
    private var _internal_path : ArrayCollection;
    private var _internal_upgradable : Boolean;
    private var _internal_instance : String;
    private var _internal_counter : int;
    private var _internal_good : Boolean;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Agent()
    {
        _model = new _AgentEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "level", model_internal::setterListenerLevel));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "platform", model_internal::setterListenerPlatform));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "type", model_internal::setterListenerType));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "configs", model_internal::setterListenerConfigs));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "updated_at", model_internal::setterListenerUpdated_at));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "instance", model_internal::setterListenerInstance));

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
    public function get level() : String
    {
        return _internal_level;
    }

    [Bindable(event="propertyChange")]
    public function get _kind() : String
    {
        return _internal__kind;
    }

    [Bindable(event="propertyChange")]
    public function get platform() : String
    {
        return _internal_platform;
    }

    [Bindable(event="propertyChange")]
    public function get desc() : String
    {
        return _internal_desc;
    }

    [Bindable(event="propertyChange")]
    public function get status() : String
    {
        return _internal_status;
    }

    [Bindable(event="propertyChange")]
    public function get uninstalled() : Boolean
    {
        return _internal_uninstalled;
    }

    [Bindable(event="propertyChange")]
    public function get type() : String
    {
        return _internal_type;
    }

    [Bindable(event="propertyChange")]
    public function get deleted() : Boolean
    {
        return _internal_deleted;
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

    [Bindable(event="propertyChange")]
    public function get configs() : ArrayCollection
    {
        return _internal_configs;
    }

    [Bindable(event="propertyChange")]
    public function get updated_at() : Object
    {
        return _internal_updated_at;
    }

    [Bindable(event="propertyChange")]
    public function get _id() : String
    {
        return _internal__id;
    }

    [Bindable(event="propertyChange")]
    public function get ident() : String
    {
        return _internal_ident;
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
    public function get upgradable() : Boolean
    {
        return _internal_upgradable;
    }

    [Bindable(event="propertyChange")]
    public function get instance() : String
    {
        return _internal_instance;
    }

    [Bindable(event="propertyChange")]
    public function get counter() : int
    {
        return _internal_counter;
    }

    [Bindable(event="propertyChange")]
    public function get good() : Boolean
    {
        return _internal_good;
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

    public function set level(value:String) : void
    {
        var oldValue:String = _internal_level;
        if (oldValue !== value)
        {
            _internal_level = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "level", oldValue, _internal_level));
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

    public function set platform(value:String) : void
    {
        var oldValue:String = _internal_platform;
        if (oldValue !== value)
        {
            _internal_platform = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "platform", oldValue, _internal_platform));
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

    public function set status(value:String) : void
    {
        var oldValue:String = _internal_status;
        if (oldValue !== value)
        {
            _internal_status = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "status", oldValue, _internal_status));
        }
    }

    public function set uninstalled(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_uninstalled;
        if (oldValue !== value)
        {
            _internal_uninstalled = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "uninstalled", oldValue, _internal_uninstalled));
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

    public function set deleted(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_deleted;
        if (oldValue !== value)
        {
            _internal_deleted = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "deleted", oldValue, _internal_deleted));
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

    public function set configs(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_configs;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_configs = value;
            }
            else if (value is Array)
            {
                _internal_configs = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_configs = null;
            }
            else
            {
                throw new Error("value of configs must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "configs", oldValue, _internal_configs));
        }
    }

    public function set updated_at(value:Object) : void
    {
        var oldValue:Object = _internal_updated_at;
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

    public function set ident(value:String) : void
    {
        var oldValue:String = _internal_ident;
        if (oldValue !== value)
        {
            _internal_ident = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ident", oldValue, _internal_ident));
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

    public function set upgradable(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_upgradable;
        if (oldValue !== value)
        {
            _internal_upgradable = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "upgradable", oldValue, _internal_upgradable));
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

    public function set counter(value:int) : void
    {
        var oldValue:int = _internal_counter;
        if (oldValue !== value)
        {
            _internal_counter = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "counter", oldValue, _internal_counter));
        }
    }

    public function set good(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_good;
        if (oldValue !== value)
        {
            _internal_good = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "good", oldValue, _internal_good));
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

    model_internal function setterListenerLevel(value:flash.events.Event):void
    {
        _model.invalidateDependentOnLevel();
    }

    model_internal function setterListenerPlatform(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPlatform();
    }

    model_internal function setterListenerType(value:flash.events.Event):void
    {
        _model.invalidateDependentOnType();
    }

    model_internal function setterListenerConfigs(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerConfigs);
            }
        }
        _model.invalidateDependentOnConfigs();
    }

    model_internal function setterListenerUpdated_at(value:flash.events.Event):void
    {
        _model.invalidateDependentOnUpdated_at();
    }

    model_internal function setterListenerInstance(value:flash.events.Event):void
    {
        _model.invalidateDependentOnInstance();
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
        if (!_model.levelIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_levelValidationFailureMessages);
        }
        if (!_model.platformIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_platformValidationFailureMessages);
        }
        if (!_model.typeIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_typeValidationFailureMessages);
        }
        if (!_model.configsIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_configsValidationFailureMessages);
        }
        if (!_model.updated_atIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_updated_atValidationFailureMessages);
        }
        if (!_model.instanceIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_instanceValidationFailureMessages);
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
    public function get _model() : _AgentEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _AgentEntityMetadata) : void
    {
        var oldValue : _AgentEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfLevel : Array = null;
    model_internal var _doValidationLastValOfLevel : String;

    model_internal function _doValidationForLevel(valueIn:Object):Array
    {
        var value : String = valueIn as String;

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
    
    model_internal var _doValidationCacheOfConfigs : Array = null;
    model_internal var _doValidationLastValOfConfigs : ArrayCollection;

    model_internal function _doValidationForConfigs(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfConfigs != null && model_internal::_doValidationLastValOfConfigs == value)
           return model_internal::_doValidationCacheOfConfigs ;

        _model.model_internal::_configsIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isConfigsAvailable && _internal_configs == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "configs is required"));
        }

        model_internal::_doValidationCacheOfConfigs = validationFailures;
        model_internal::_doValidationLastValOfConfigs = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfUpdated_at : Array = null;
    model_internal var _doValidationLastValOfUpdated_at : Object;

    model_internal function _doValidationForUpdated_at(valueIn:Object):Array
    {
        var value : Object = valueIn as Object;

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
    

}

}
