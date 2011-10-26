/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Stat.as.
 */

package it.ht.rcs.console.operation.model
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import mx.binding.utils.ChangeWatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;
import mx.validators.ValidationResult;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_Stat extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _StatEntityMetadata;
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
    private var _internal_last_sync : int;
    private var _internal_source : String;
    private var _internal__id : String;
    private var _internal_last_sync_status : String;
    private var _internal_grid_size : int;
    private var _internal_evidence : Object;
    private var _internal_device : String;
    private var _internal_user : String;
    private var _internal_size : int;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Stat()
    {
        _model = new _StatEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "last_sync_status", model_internal::setterListenerLast_sync_status));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get last_sync() : int
    {
        return _internal_last_sync;
    }

    [Bindable(event="propertyChange")]
    public function get source() : String
    {
        return _internal_source;
    }

    [Bindable(event="propertyChange")]
    public function get _id() : String
    {
        return _internal__id;
    }

    [Bindable(event="propertyChange")]
    public function get last_sync_status() : String
    {
        return _internal_last_sync_status;
    }

    [Bindable(event="propertyChange")]
    public function get grid_size() : int
    {
        return _internal_grid_size;
    }

    [Bindable(event="propertyChange")]
    public function get evidence() : Object
    {
        return _internal_evidence;
    }

    [Bindable(event="propertyChange")]
    public function get device() : String
    {
        return _internal_device;
    }

    [Bindable(event="propertyChange")]
    public function get user() : String
    {
        return _internal_user;
    }

    [Bindable(event="propertyChange")]
    public function get size() : int
    {
        return _internal_size;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set last_sync(value:int) : void
    {
        var oldValue:int = _internal_last_sync;
        if (oldValue !== value)
        {
            _internal_last_sync = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "last_sync", oldValue, _internal_last_sync));
        }
    }

    public function set source(value:String) : void
    {
        var oldValue:String = _internal_source;
        if (oldValue !== value)
        {
            _internal_source = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "source", oldValue, _internal_source));
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

    public function set last_sync_status(value:String) : void
    {
        var oldValue:String = _internal_last_sync_status;
        if (oldValue !== value)
        {
            _internal_last_sync_status = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "last_sync_status", oldValue, _internal_last_sync_status));
        }
    }

    public function set grid_size(value:int) : void
    {
        var oldValue:int = _internal_grid_size;
        if (oldValue !== value)
        {
            _internal_grid_size = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "grid_size", oldValue, _internal_grid_size));
        }
    }

    public function set evidence(value:Object) : void
    {
        var oldValue:Object = _internal_evidence;
        if (oldValue !== value)
        {
            _internal_evidence = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "evidence", oldValue, _internal_evidence));
        }
    }

    public function set device(value:String) : void
    {
        var oldValue:String = _internal_device;
        if (oldValue !== value)
        {
            _internal_device = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "device", oldValue, _internal_device));
        }
    }

    public function set user(value:String) : void
    {
        var oldValue:String = _internal_user;
        if (oldValue !== value)
        {
            _internal_user = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "user", oldValue, _internal_user));
        }
    }

    public function set size(value:int) : void
    {
        var oldValue:int = _internal_size;
        if (oldValue !== value)
        {
            _internal_size = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "size", oldValue, _internal_size));
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

    model_internal function setterListenerLast_sync_status(value:flash.events.Event):void
    {
        _model.invalidateDependentOnLast_sync_status();
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
        if (!_model.last_sync_statusIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_last_sync_statusValidationFailureMessages);
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
    public function get _model() : _StatEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _StatEntityMetadata) : void
    {
        var oldValue : _StatEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfLast_sync_status : Array = null;
    model_internal var _doValidationLastValOfLast_sync_status : String;

    model_internal function _doValidationForLast_sync_status(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfLast_sync_status != null && model_internal::_doValidationLastValOfLast_sync_status == value)
           return model_internal::_doValidationCacheOfLast_sync_status ;

        _model.model_internal::_last_sync_statusIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isLast_sync_statusAvailable && _internal_last_sync_status == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "last_sync_status is required"));
        }

        model_internal::_doValidationCacheOfLast_sync_status = validationFailures;
        model_internal::_doValidationLastValOfLast_sync_status = value;

        return validationFailures;
    }
    

}

}
