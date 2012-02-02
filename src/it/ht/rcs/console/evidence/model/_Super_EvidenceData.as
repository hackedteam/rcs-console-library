/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - EvidenceData.as.
 */

package it.ht.rcs.console.evidence.model
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
public class _Super_EvidenceData extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _EvidenceDataEntityMetadata;
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
    private var _internal_window : String;
    private var _internal__grid_size : int;
    private var _internal_program : String;
    private var _internal_resolution : String;
    private var _internal__grid : String;
    private var _internal_y : int;
    private var _internal_x : int;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_EvidenceData()
    {
        _model = new _EvidenceDataEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "window", model_internal::setterListenerWindow));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "program", model_internal::setterListenerProgram));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "resolution", model_internal::setterListenerResolution));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "_grid", model_internal::setterListener_grid));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get window() : String
    {
        return _internal_window;
    }

    [Bindable(event="propertyChange")]
    public function get _grid_size() : int
    {
        return _internal__grid_size;
    }

    [Bindable(event="propertyChange")]
    public function get program() : String
    {
        return _internal_program;
    }

    [Bindable(event="propertyChange")]
    public function get resolution() : String
    {
        return _internal_resolution;
    }

    [Bindable(event="propertyChange")]
    public function get _grid() : String
    {
        return _internal__grid;
    }

    [Bindable(event="propertyChange")]
    public function get y() : int
    {
        return _internal_y;
    }

    [Bindable(event="propertyChange")]
    public function get x() : int
    {
        return _internal_x;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set window(value:String) : void
    {
        var oldValue:String = _internal_window;
        if (oldValue !== value)
        {
            _internal_window = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "window", oldValue, _internal_window));
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

    public function set program(value:String) : void
    {
        var oldValue:String = _internal_program;
        if (oldValue !== value)
        {
            _internal_program = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "program", oldValue, _internal_program));
        }
    }

    public function set resolution(value:String) : void
    {
        var oldValue:String = _internal_resolution;
        if (oldValue !== value)
        {
            _internal_resolution = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "resolution", oldValue, _internal_resolution));
        }
    }

    public function set _grid(value:String) : void
    {
        var oldValue:String = _internal__grid;
        if (oldValue !== value)
        {
            _internal__grid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_grid", oldValue, _internal__grid));
        }
    }

    public function set y(value:int) : void
    {
        var oldValue:int = _internal_y;
        if (oldValue !== value)
        {
            _internal_y = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "y", oldValue, _internal_y));
        }
    }

    public function set x(value:int) : void
    {
        var oldValue:int = _internal_x;
        if (oldValue !== value)
        {
            _internal_x = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "x", oldValue, _internal_x));
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

    model_internal function setterListenerWindow(value:flash.events.Event):void
    {
        _model.invalidateDependentOnWindow();
    }

    model_internal function setterListenerProgram(value:flash.events.Event):void
    {
        _model.invalidateDependentOnProgram();
    }

    model_internal function setterListenerResolution(value:flash.events.Event):void
    {
        _model.invalidateDependentOnResolution();
    }

    model_internal function setterListener_grid(value:flash.events.Event):void
    {
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
        if (!_model.windowIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_windowValidationFailureMessages);
        }
        if (!_model.programIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_programValidationFailureMessages);
        }
        if (!_model.resolutionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_resolutionValidationFailureMessages);
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
    public function get _model() : _EvidenceDataEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _EvidenceDataEntityMetadata) : void
    {
        var oldValue : _EvidenceDataEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfWindow : Array = null;
    model_internal var _doValidationLastValOfWindow : String;

    model_internal function _doValidationForWindow(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfWindow != null && model_internal::_doValidationLastValOfWindow == value)
           return model_internal::_doValidationCacheOfWindow ;

        _model.model_internal::_windowIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isWindowAvailable && _internal_window == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "window is required"));
        }

        model_internal::_doValidationCacheOfWindow = validationFailures;
        model_internal::_doValidationLastValOfWindow = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfProgram : Array = null;
    model_internal var _doValidationLastValOfProgram : String;

    model_internal function _doValidationForProgram(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfProgram != null && model_internal::_doValidationLastValOfProgram == value)
           return model_internal::_doValidationCacheOfProgram ;

        _model.model_internal::_programIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isProgramAvailable && _internal_program == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "program is required"));
        }

        model_internal::_doValidationCacheOfProgram = validationFailures;
        model_internal::_doValidationLastValOfProgram = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfResolution : Array = null;
    model_internal var _doValidationLastValOfResolution : String;

    model_internal function _doValidationForResolution(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfResolution != null && model_internal::_doValidationLastValOfResolution == value)
           return model_internal::_doValidationCacheOfResolution ;

        _model.model_internal::_resolutionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isResolutionAvailable && _internal_resolution == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "resolution is required"));
        }

        model_internal::_doValidationCacheOfResolution = validationFailures;
        model_internal::_doValidationLastValOfResolution = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOf_grid : Array = null;
    model_internal var _doValidationLastValOf_grid : String;

    model_internal function _doValidationFor_grid(valueIn:Object):Array
    {
        var value : String = valueIn as String;

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
