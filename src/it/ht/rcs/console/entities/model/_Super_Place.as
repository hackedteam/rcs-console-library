/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Place.as.
 */

package it.ht.rcs.console.entities.model
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import it.ht.rcs.console.entities.model.Entity;
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
public class _Super_Place extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        it.ht.rcs.console.entities.model.Entity.initRemoteClassAliasSingleChild();
        it.ht.rcs.console.entities.model.Link.initRemoteClassAliasSingleChild();
        it.ht.rcs.console.entities.model.Position.initRemoteClassAliasSingleChild();
        it.ht.rcs.console.entities.model.Position_attr.initRemoteClassAliasSingleChild();
        it.ht.rcs.console.entities.model.Analyzed.initRemoteClassAliasSingleChild();
        it.ht.rcs.console.entities.model.Handle.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _PlaceEntityMetadata;
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
    private var _internal_position : ArrayCollection;
    private var _internal_count : int;
    private var _internal_entity : it.ht.rcs.console.entities.model.Entity;
    private var _internal_radius : int;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Place()
    {
        _model = new _PlaceEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "position", model_internal::setterListenerPosition));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "entity", model_internal::setterListenerEntity));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get position() : ArrayCollection
    {
        return _internal_position;
    }

    [Bindable(event="propertyChange")]
    public function get count() : int
    {
        return _internal_count;
    }

    [Bindable(event="propertyChange")]
    public function get entity() : it.ht.rcs.console.entities.model.Entity
    {
        return _internal_entity;
    }

    [Bindable(event="propertyChange")]
    public function get radius() : int
    {
        return _internal_radius;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set position(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_position;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_position = value;
            }
            else if (value is Array)
            {
                _internal_position = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_position = null;
            }
            else
            {
                throw new Error("value of position must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "position", oldValue, _internal_position));
        }
    }

    public function set count(value:int) : void
    {
        var oldValue:int = _internal_count;
        if (oldValue !== value)
        {
            _internal_count = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "count", oldValue, _internal_count));
        }
    }

    public function set entity(value:it.ht.rcs.console.entities.model.Entity) : void
    {
        var oldValue:it.ht.rcs.console.entities.model.Entity = _internal_entity;
        if (oldValue !== value)
        {
            _internal_entity = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "entity", oldValue, _internal_entity));
        }
    }

    public function set radius(value:int) : void
    {
        var oldValue:int = _internal_radius;
        if (oldValue !== value)
        {
            _internal_radius = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "radius", oldValue, _internal_radius));
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

    model_internal function setterListenerPosition(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerPosition);
            }
        }
        _model.invalidateDependentOnPosition();
    }

    model_internal function setterListenerEntity(value:flash.events.Event):void
    {
        _model.invalidateDependentOnEntity();
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
        if (!_model.positionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_positionValidationFailureMessages);
        }
        if (!_model.entityIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_entityValidationFailureMessages);
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
    public function get _model() : _PlaceEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _PlaceEntityMetadata) : void
    {
        var oldValue : _PlaceEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfPosition : Array = null;
    model_internal var _doValidationLastValOfPosition : ArrayCollection;

    model_internal function _doValidationForPosition(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfPosition != null && model_internal::_doValidationLastValOfPosition == value)
           return model_internal::_doValidationCacheOfPosition ;

        _model.model_internal::_positionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPositionAvailable && _internal_position == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "position is required"));
        }

        model_internal::_doValidationCacheOfPosition = validationFailures;
        model_internal::_doValidationLastValOfPosition = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfEntity : Array = null;
    model_internal var _doValidationLastValOfEntity : it.ht.rcs.console.entities.model.Entity;

    model_internal function _doValidationForEntity(valueIn:Object):Array
    {
        var value : it.ht.rcs.console.entities.model.Entity = valueIn as it.ht.rcs.console.entities.model.Entity;

        if (model_internal::_doValidationCacheOfEntity != null && model_internal::_doValidationLastValOfEntity == value)
           return model_internal::_doValidationCacheOfEntity ;

        _model.model_internal::_entityIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isEntityAvailable && _internal_entity == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "entity is required"));
        }

        model_internal::_doValidationCacheOfEntity = validationFailures;
        model_internal::_doValidationLastValOfEntity = value;

        return validationFailures;
    }
    

}

}
