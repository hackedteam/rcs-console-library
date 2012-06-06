/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - SymbianConf.as.
 */

package it.ht.rcs.console.build.model
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
public class _Super_SymbianConf extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _SymbianConfEntityMetadata;
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
    private var _internal_uids : ArrayCollection;
    private var _internal_key : Boolean;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_SymbianConf()
    {
        _model = new _SymbianConfEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "uids", model_internal::setterListenerUids));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get uids() : ArrayCollection
    {
        return _internal_uids;
    }

    [Bindable(event="propertyChange")]
    public function get key() : Boolean
    {
        return _internal_key;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set uids(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_uids;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_uids = value;
            }
            else if (value is Array)
            {
                _internal_uids = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_uids = null;
            }
            else
            {
                throw new Error("value of uids must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "uids", oldValue, _internal_uids));
        }
    }

    public function set key(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_key;
        if (oldValue !== value)
        {
            _internal_key = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "key", oldValue, _internal_key));
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

    model_internal function setterListenerUids(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerUids);
            }
        }
        _model.invalidateDependentOnUids();
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
        if (!_model.uidsIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_uidsValidationFailureMessages);
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
    public function get _model() : _SymbianConfEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _SymbianConfEntityMetadata) : void
    {
        var oldValue : _SymbianConfEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfUids : Array = null;
    model_internal var _doValidationLastValOfUids : ArrayCollection;

    model_internal function _doValidationForUids(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfUids != null && model_internal::_doValidationLastValOfUids == value)
           return model_internal::_doValidationCacheOfUids ;

        _model.model_internal::_uidsIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isUidsAvailable && _internal_uids == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "uids is required"));
        }

        model_internal::_doValidationCacheOfUids = validationFailures;
        model_internal::_doValidationLastValOfUids = value;

        return validationFailures;
    }
    

}

}
