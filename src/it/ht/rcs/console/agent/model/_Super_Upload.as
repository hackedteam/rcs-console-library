/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Upload.as.
 */

package it.ht.rcs.console.agent.model
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
public class _Super_Upload extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _UploadEntityMetadata;
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
    private var _internal_sent : Number = Number(0);
    private var _internal__id : String;
    private var _internal__grid_size : int;
    private var _internal_filename : String;
    private var _internal__grid : ArrayCollection;

    private static var emptyArray:Array = new Array();

    // Change this value according to your application's floating-point precision
    private static var epsilon:Number = 0.0001;

    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Upload()
    {
        _model = new _UploadEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "_id", model_internal::setterListener_id));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "filename", model_internal::setterListenerFilename));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "_grid", model_internal::setterListener_grid));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get sent() : Number
    {
        return _internal_sent;
    }

    [Bindable(event="propertyChange")]
    public function get _id() : String
    {
        return _internal__id;
    }

    [Bindable(event="propertyChange")]
    public function get _grid_size() : int
    {
        return _internal__grid_size;
    }

    [Bindable(event="propertyChange")]
    public function get filename() : String
    {
        return _internal_filename;
    }

    [Bindable(event="propertyChange")]
    public function get _grid() : ArrayCollection
    {
        return _internal__grid;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set sent(value:Number) : void
    {
        var oldValue:Number = _internal_sent;
        if (isNaN(_internal_sent) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_sent = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sent", oldValue, _internal_sent));
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

    public function set _grid_size(value:int) : void
    {
        var oldValue:int = _internal__grid_size;
        if (oldValue !== value)
        {
            _internal__grid_size = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_grid_size", oldValue, _internal__grid_size));
        }
    }

    public function set filename(value:String) : void
    {
        var oldValue:String = _internal_filename;
        if (oldValue !== value)
        {
            _internal_filename = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "filename", oldValue, _internal_filename));
        }
    }

    public function set _grid(value:*) : void
    {
        var oldValue:ArrayCollection = _internal__grid;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal__grid = value;
            }
            else if (value is Array)
            {
                _internal__grid = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal__grid = null;
            }
            else
            {
                throw new Error("value of _grid must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_grid", oldValue, _internal__grid));
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

    model_internal function setterListener_id(value:flash.events.Event):void
    {
        _model.invalidateDependentOn_id();
    }

    model_internal function setterListenerFilename(value:flash.events.Event):void
    {
        _model.invalidateDependentOnFilename();
    }

    model_internal function setterListener_grid(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListener_grid);
            }
        }
        _model.invalidateDependentOn_grid();
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
        if (!_model._idIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::__idValidationFailureMessages);
        }
        if (!_model.filenameIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_filenameValidationFailureMessages);
        }
        if (!_model._gridIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::__gridValidationFailureMessages);
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
    public function get _model() : _UploadEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _UploadEntityMetadata) : void
    {
        var oldValue : _UploadEntityMetadata = model_internal::_dminternal_model;
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
    
    model_internal var _doValidationCacheOfFilename : Array = null;
    model_internal var _doValidationLastValOfFilename : String;

    model_internal function _doValidationForFilename(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfFilename != null && model_internal::_doValidationLastValOfFilename == value)
           return model_internal::_doValidationCacheOfFilename ;

        _model.model_internal::_filenameIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isFilenameAvailable && _internal_filename == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "filename is required"));
        }

        model_internal::_doValidationCacheOfFilename = validationFailures;
        model_internal::_doValidationLastValOfFilename = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOf_grid : Array = null;
    model_internal var _doValidationLastValOf_grid : ArrayCollection;

    model_internal function _doValidationFor_grid(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOf_grid != null && model_internal::_doValidationLastValOf_grid == value)
           return model_internal::_doValidationCacheOf_grid ;

        _model.model_internal::__gridIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.is_gridAvailable && _internal__grid == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "_grid is required"));
        }

        model_internal::_doValidationCacheOf_grid = validationFailures;
        model_internal::_doValidationLastValOf_grid = value;

        return validationFailures;
    }
    

}

}
