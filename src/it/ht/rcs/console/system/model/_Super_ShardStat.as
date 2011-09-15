/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - ShardStat.as.
 */

package it.ht.rcs.console.system.model
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
public class _Super_ShardStat extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _ShardStatEntityMetadata;
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
    private var _internal_fileSize : int;
    private var _internal_numExtents : int;
    private var _internal_db : String;
    private var _internal_dataSize : int;
    private var _internal_indexes : int;
    private var _internal_storageSize : int;
    private var _internal_ok : Number;
    private var _internal_indexSize : int;
    private var _internal_errmsg : String;
    private var _internal_avgObjSize : Number;
    private var _internal_objects : int;
    private var _internal_collections : int;

    private static var emptyArray:Array = new Array();

    // Change this value according to your application's floating-point precision
    private static var epsilon:Number = 0.0001;

    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_ShardStat()
    {
        _model = new _ShardStatEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "errmsg", model_internal::setterListenerErrmsg));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get fileSize() : int
    {
        return _internal_fileSize;
    }

    [Bindable(event="propertyChange")]
    public function get numExtents() : int
    {
        return _internal_numExtents;
    }

    [Bindable(event="propertyChange")]
    public function get db() : String
    {
        return _internal_db;
    }

    [Bindable(event="propertyChange")]
    public function get dataSize() : int
    {
        return _internal_dataSize;
    }

    [Bindable(event="propertyChange")]
    public function get indexes() : int
    {
        return _internal_indexes;
    }

    [Bindable(event="propertyChange")]
    public function get storageSize() : int
    {
        return _internal_storageSize;
    }

    [Bindable(event="propertyChange")]
    public function get ok() : Number
    {
        return _internal_ok;
    }

    [Bindable(event="propertyChange")]
    public function get indexSize() : int
    {
        return _internal_indexSize;
    }

    [Bindable(event="propertyChange")]
    public function get errmsg() : String
    {
        return _internal_errmsg;
    }

    [Bindable(event="propertyChange")]
    public function get avgObjSize() : Number
    {
        return _internal_avgObjSize;
    }

    [Bindable(event="propertyChange")]
    public function get objects() : int
    {
        return _internal_objects;
    }

    [Bindable(event="propertyChange")]
    public function get collections() : int
    {
        return _internal_collections;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set fileSize(value:int) : void
    {
        var oldValue:int = _internal_fileSize;
        if (oldValue !== value)
        {
            _internal_fileSize = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fileSize", oldValue, _internal_fileSize));
        }
    }

    public function set numExtents(value:int) : void
    {
        var oldValue:int = _internal_numExtents;
        if (oldValue !== value)
        {
            _internal_numExtents = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "numExtents", oldValue, _internal_numExtents));
        }
    }

    public function set db(value:String) : void
    {
        var oldValue:String = _internal_db;
        if (oldValue !== value)
        {
            _internal_db = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "db", oldValue, _internal_db));
        }
    }

    public function set dataSize(value:int) : void
    {
        var oldValue:int = _internal_dataSize;
        if (oldValue !== value)
        {
            _internal_dataSize = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dataSize", oldValue, _internal_dataSize));
        }
    }

    public function set indexes(value:int) : void
    {
        var oldValue:int = _internal_indexes;
        if (oldValue !== value)
        {
            _internal_indexes = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "indexes", oldValue, _internal_indexes));
        }
    }

    public function set storageSize(value:int) : void
    {
        var oldValue:int = _internal_storageSize;
        if (oldValue !== value)
        {
            _internal_storageSize = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "storageSize", oldValue, _internal_storageSize));
        }
    }

    public function set ok(value:Number) : void
    {
        var oldValue:Number = _internal_ok;
        if (isNaN(_internal_ok) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_ok = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ok", oldValue, _internal_ok));
        }
    }

    public function set indexSize(value:int) : void
    {
        var oldValue:int = _internal_indexSize;
        if (oldValue !== value)
        {
            _internal_indexSize = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "indexSize", oldValue, _internal_indexSize));
        }
    }

    public function set errmsg(value:String) : void
    {
        var oldValue:String = _internal_errmsg;
        if (oldValue !== value)
        {
            _internal_errmsg = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "errmsg", oldValue, _internal_errmsg));
        }
    }

    public function set avgObjSize(value:Number) : void
    {
        var oldValue:Number = _internal_avgObjSize;
        if (isNaN(_internal_avgObjSize) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_avgObjSize = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "avgObjSize", oldValue, _internal_avgObjSize));
        }
    }

    public function set objects(value:int) : void
    {
        var oldValue:int = _internal_objects;
        if (oldValue !== value)
        {
            _internal_objects = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "objects", oldValue, _internal_objects));
        }
    }

    public function set collections(value:int) : void
    {
        var oldValue:int = _internal_collections;
        if (oldValue !== value)
        {
            _internal_collections = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "collections", oldValue, _internal_collections));
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

    model_internal function setterListenerErrmsg(value:flash.events.Event):void
    {
        _model.invalidateDependentOnErrmsg();
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
        if (!_model.errmsgIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_errmsgValidationFailureMessages);
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
    public function get _model() : _ShardStatEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _ShardStatEntityMetadata) : void
    {
        var oldValue : _ShardStatEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfErrmsg : Array = null;
    model_internal var _doValidationLastValOfErrmsg : String;

    model_internal function _doValidationForErrmsg(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfErrmsg != null && model_internal::_doValidationLastValOfErrmsg == value)
           return model_internal::_doValidationCacheOfErrmsg ;

        _model.model_internal::_errmsgIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isErrmsgAvailable && _internal_errmsg == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "errmsg is required"));
        }

        model_internal::_doValidationCacheOfErrmsg = validationFailures;
        model_internal::_doValidationLastValOfErrmsg = value;

        return validationFailures;
    }
    

}

}
