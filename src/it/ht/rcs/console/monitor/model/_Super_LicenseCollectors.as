/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - LicenseCollectors.as.
 */

package it.ht.rcs.console.monitor.model
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
public class _Super_LicenseCollectors extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _LicenseCollectorsEntityMetadata;
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
    private var _internal_collectors : Object;
    private var _internal_anonymizers : Object;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_LicenseCollectors()
    {
        _model = new _LicenseCollectorsEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "collectors", model_internal::setterListenerCollectors));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "anonymizers", model_internal::setterListenerAnonymizers));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get collectors() : Object
    {
        return _internal_collectors;
    }

    [Bindable(event="propertyChange")]
    public function get anonymizers() : Object
    {
        return _internal_anonymizers;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set collectors(value:Object) : void
    {
        var oldValue:Object = _internal_collectors;
        if (oldValue !== value)
        {
            _internal_collectors = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "collectors", oldValue, _internal_collectors));
        }
    }

    public function set anonymizers(value:Object) : void
    {
        var oldValue:Object = _internal_anonymizers;
        if (oldValue !== value)
        {
            _internal_anonymizers = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "anonymizers", oldValue, _internal_anonymizers));
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

    model_internal function setterListenerCollectors(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCollectors();
    }

    model_internal function setterListenerAnonymizers(value:flash.events.Event):void
    {
        _model.invalidateDependentOnAnonymizers();
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
        if (!_model.collectorsIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_collectorsValidationFailureMessages);
        }
        if (!_model.anonymizersIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_anonymizersValidationFailureMessages);
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
    public function get _model() : _LicenseCollectorsEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _LicenseCollectorsEntityMetadata) : void
    {
        var oldValue : _LicenseCollectorsEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfCollectors : Array = null;
    model_internal var _doValidationLastValOfCollectors : Object;

    model_internal function _doValidationForCollectors(valueIn:Object):Array
    {
        var value : Object = valueIn as Object;

        if (model_internal::_doValidationCacheOfCollectors != null && model_internal::_doValidationLastValOfCollectors == value)
           return model_internal::_doValidationCacheOfCollectors ;

        _model.model_internal::_collectorsIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCollectorsAvailable && _internal_collectors == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "collectors is required"));
        }

        model_internal::_doValidationCacheOfCollectors = validationFailures;
        model_internal::_doValidationLastValOfCollectors = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfAnonymizers : Array = null;
    model_internal var _doValidationLastValOfAnonymizers : Object;

    model_internal function _doValidationForAnonymizers(valueIn:Object):Array
    {
        var value : Object = valueIn as Object;

        if (model_internal::_doValidationCacheOfAnonymizers != null && model_internal::_doValidationLastValOfAnonymizers == value)
           return model_internal::_doValidationCacheOfAnonymizers ;

        _model.model_internal::_anonymizersIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isAnonymizersAvailable && _internal_anonymizers == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "anonymizers is required"));
        }

        model_internal::_doValidationCacheOfAnonymizers = validationFailures;
        model_internal::_doValidationLastValOfAnonymizers = value;

        return validationFailures;
    }
    

}

}
