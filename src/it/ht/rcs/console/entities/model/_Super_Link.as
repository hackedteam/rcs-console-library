/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Link.as.
 */

package it.ht.rcs.console.entities.model
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
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
public class _Super_Link extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _LinkEntityMetadata;
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
    private var _internal_info : ArrayCollection;
    private var _internal_first_seen : int;
    private var _internal_level : String;
    private var _internal_le : String;
    private var _internal__id : String;
    private var _internal_versus : String;
    private var _internal_rel : int;
    private var _internal_type : String;
    private var _internal_last_seen : int;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Link()
    {
        _model = new _LinkEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "info", model_internal::setterListenerInfo));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "level", model_internal::setterListenerLevel));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "le", model_internal::setterListenerLe));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "_id", model_internal::setterListener_id));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "versus", model_internal::setterListenerVersus));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "type", model_internal::setterListenerType));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get info() : ArrayCollection
    {
        return _internal_info;
    }

    [Bindable(event="propertyChange")]
    public function get first_seen() : int
    {
        return _internal_first_seen;
    }

    [Bindable(event="propertyChange")]
    public function get level() : String
    {
        return _internal_level;
    }

    [Bindable(event="propertyChange")]
    public function get le() : String
    {
        return _internal_le;
    }

    [Bindable(event="propertyChange")]
    public function get _id() : String
    {
        return _internal__id;
    }

    [Bindable(event="propertyChange")]
    public function get versus() : String
    {
        return _internal_versus;
    }

    [Bindable(event="propertyChange")]
    public function get rel() : int
    {
        return _internal_rel;
    }

    [Bindable(event="propertyChange")]
    public function get type() : String
    {
        return _internal_type;
    }

    [Bindable(event="propertyChange")]
    public function get last_seen() : int
    {
        return _internal_last_seen;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set info(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_info;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_info = value;
            }
            else if (value is Array)
            {
                _internal_info = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_info = null;
            }
            else
            {
                throw new Error("value of info must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "info", oldValue, _internal_info));
        }
    }

    public function set first_seen(value:int) : void
    {
        var oldValue:int = _internal_first_seen;
        if (oldValue !== value)
        {
            _internal_first_seen = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "first_seen", oldValue, _internal_first_seen));
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

    public function set le(value:String) : void
    {
        var oldValue:String = _internal_le;
        if (oldValue !== value)
        {
            _internal_le = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "le", oldValue, _internal_le));
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

    public function set versus(value:String) : void
    {
        var oldValue:String = _internal_versus;
        if (oldValue !== value)
        {
            _internal_versus = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "versus", oldValue, _internal_versus));
        }
    }

    public function set rel(value:int) : void
    {
        var oldValue:int = _internal_rel;
        if (oldValue !== value)
        {
            _internal_rel = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rel", oldValue, _internal_rel));
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

    public function set last_seen(value:int) : void
    {
        var oldValue:int = _internal_last_seen;
        if (oldValue !== value)
        {
            _internal_last_seen = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "last_seen", oldValue, _internal_last_seen));
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

    model_internal function setterListenerInfo(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerInfo);
            }
        }
        _model.invalidateDependentOnInfo();
    }

    model_internal function setterListenerLevel(value:flash.events.Event):void
    {
        _model.invalidateDependentOnLevel();
    }

    model_internal function setterListenerLe(value:flash.events.Event):void
    {
        _model.invalidateDependentOnLe();
    }

    model_internal function setterListener_id(value:flash.events.Event):void
    {
        _model.invalidateDependentOn_id();
    }

    model_internal function setterListenerVersus(value:flash.events.Event):void
    {
        _model.invalidateDependentOnVersus();
    }

    model_internal function setterListenerType(value:flash.events.Event):void
    {
        _model.invalidateDependentOnType();
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
        if (!_model.infoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_infoValidationFailureMessages);
        }
        if (!_model.levelIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_levelValidationFailureMessages);
        }
        if (!_model.leIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_leValidationFailureMessages);
        }
        if (!_model._idIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::__idValidationFailureMessages);
        }
        if (!_model.versusIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_versusValidationFailureMessages);
        }
        if (!_model.typeIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_typeValidationFailureMessages);
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
    public function get _model() : _LinkEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _LinkEntityMetadata) : void
    {
        var oldValue : _LinkEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfInfo : Array = null;
    model_internal var _doValidationLastValOfInfo : ArrayCollection;

    model_internal function _doValidationForInfo(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfInfo != null && model_internal::_doValidationLastValOfInfo == value)
           return model_internal::_doValidationCacheOfInfo ;

        _model.model_internal::_infoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isInfoAvailable && _internal_info == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "info is required"));
        }

        model_internal::_doValidationCacheOfInfo = validationFailures;
        model_internal::_doValidationLastValOfInfo = value;

        return validationFailures;
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
    
    model_internal var _doValidationCacheOfLe : Array = null;
    model_internal var _doValidationLastValOfLe : String;

    model_internal function _doValidationForLe(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfLe != null && model_internal::_doValidationLastValOfLe == value)
           return model_internal::_doValidationCacheOfLe ;

        _model.model_internal::_leIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isLeAvailable && _internal_le == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "le is required"));
        }

        model_internal::_doValidationCacheOfLe = validationFailures;
        model_internal::_doValidationLastValOfLe = value;

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
    
    model_internal var _doValidationCacheOfVersus : Array = null;
    model_internal var _doValidationLastValOfVersus : String;

    model_internal function _doValidationForVersus(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfVersus != null && model_internal::_doValidationLastValOfVersus == value)
           return model_internal::_doValidationCacheOfVersus ;

        _model.model_internal::_versusIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isVersusAvailable && _internal_versus == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "versus is required"));
        }

        model_internal::_doValidationCacheOfVersus = validationFailures;
        model_internal::_doValidationLastValOfVersus = value;

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
    

}

}
