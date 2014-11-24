/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Flow.as.
 */

package it.ht.rcs.console.entities.model
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import it.ht.rcs.console.entities.model.Flows;
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
public class _Super_Flow extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        it.ht.rcs.console.entities.model.Flows.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _FlowEntityMetadata;
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
    private var _internal_date : String;
    private var _internal_flows : ArrayCollection;
    model_internal var _internal_flows_leaf:it.ht.rcs.console.entities.model.Flows;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Flow()
    {
        _model = new _FlowEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "date", model_internal::setterListenerDate));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "flows", model_internal::setterListenerFlows));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get date() : String
    {
        return _internal_date;
    }

    [Bindable(event="propertyChange")]
    public function get flows() : ArrayCollection
    {
        return _internal_flows;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set date(value:String) : void
    {
        var oldValue:String = _internal_date;
        if (oldValue !== value)
        {
            _internal_date = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "date", oldValue, _internal_date));
        }
    }

    public function set flows(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_flows;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_flows = value;
            }
            else if (value is Array)
            {
                _internal_flows = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_flows = null;
            }
            else
            {
                throw new Error("value of flows must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "flows", oldValue, _internal_flows));
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

    model_internal function setterListenerDate(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDate();
    }

    model_internal function setterListenerFlows(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerFlows);
            }
        }
        _model.invalidateDependentOnFlows();
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
        if (!_model.dateIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_dateValidationFailureMessages);
        }
        if (!_model.flowsIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_flowsValidationFailureMessages);
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
    public function get _model() : _FlowEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _FlowEntityMetadata) : void
    {
        var oldValue : _FlowEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfDate : Array = null;
    model_internal var _doValidationLastValOfDate : String;

    model_internal function _doValidationForDate(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfDate != null && model_internal::_doValidationLastValOfDate == value)
           return model_internal::_doValidationCacheOfDate ;

        _model.model_internal::_dateIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDateAvailable && _internal_date == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "date is required"));
        }

        model_internal::_doValidationCacheOfDate = validationFailures;
        model_internal::_doValidationLastValOfDate = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfFlows : Array = null;
    model_internal var _doValidationLastValOfFlows : ArrayCollection;

    model_internal function _doValidationForFlows(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfFlows != null && model_internal::_doValidationLastValOfFlows == value)
           return model_internal::_doValidationCacheOfFlows ;

        _model.model_internal::_flowsIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isFlowsAvailable && _internal_flows == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "flows is required"));
        }

        model_internal::_doValidationCacheOfFlows = validationFailures;
        model_internal::_doValidationLastValOfFlows = value;

        return validationFailures;
    }
    

}

}
