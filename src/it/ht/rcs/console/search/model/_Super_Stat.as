/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Stat.as.
 */

package it.ht.rcs.console.search.model
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import it.ht.rcs.console.search.model.StatEvidence;
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
        it.ht.rcs.console.search.model.StatEvidence.initRemoteClassAliasSingleChild();
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
    private var _internal_last_child : ArrayCollection;
    private var _internal_last_sync : Number = Number(0);
    private var _internal_source : String;
    private var _internal__id : String;
    private var _internal_last_sync_status : int;
    private var _internal_grid_size : Number;
    private var _internal_evidence : it.ht.rcs.console.search.model.StatEvidence;
    private var _internal_device : String;
    private var _internal_dashboard : it.ht.rcs.console.search.model.StatEvidence;
    private var _internal_user : String;
    private var _internal_size : Number;
    private var _internal_ghost : Boolean;

    private static var emptyArray:Array = new Array();

    // Change this value according to your application's floating-point precision
    private static var epsilon:Number = 0.0001;

    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Stat()
    {
        _model = new _StatEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "source", model_internal::setterListenerSource));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "_id", model_internal::setterListener_id));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "evidence", model_internal::setterListenerEvidence));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "device", model_internal::setterListenerDevice));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "dashboard", model_internal::setterListenerDashboard));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "user", model_internal::setterListenerUser));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get last_child() : ArrayCollection
    {
        return _internal_last_child;
    }

    [Bindable(event="propertyChange")]
    public function get last_sync() : Number
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
    public function get last_sync_status() : int
    {
        return _internal_last_sync_status;
    }

    [Bindable(event="propertyChange")]
    public function get grid_size() : Number
    {
        return _internal_grid_size;
    }

    [Bindable(event="propertyChange")]
    public function get evidence() : it.ht.rcs.console.search.model.StatEvidence
    {
        return _internal_evidence;
    }

    [Bindable(event="propertyChange")]
    public function get device() : String
    {
        return _internal_device;
    }

    [Bindable(event="propertyChange")]
    public function get dashboard() : it.ht.rcs.console.search.model.StatEvidence
    {
        return _internal_dashboard;
    }

    [Bindable(event="propertyChange")]
    public function get user() : String
    {
        return _internal_user;
    }

    [Bindable(event="propertyChange")]
    public function get size() : Number
    {
        return _internal_size;
    }

    [Bindable(event="propertyChange")]
    public function get ghost() : Boolean
    {
        return _internal_ghost;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set last_child(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_last_child;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_last_child = value;
            }
            else if (value is Array)
            {
                _internal_last_child = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_last_child = null;
            }
            else
            {
                throw new Error("value of last_child must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "last_child", oldValue, _internal_last_child));
        }
    }

    public function set last_sync(value:Number) : void
    {
        var oldValue:Number = _internal_last_sync;
        if (isNaN(_internal_last_sync) == true || Math.abs(oldValue - value) > epsilon)
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

    public function set last_sync_status(value:int) : void
    {
        var oldValue:int = _internal_last_sync_status;
        if (oldValue !== value)
        {
            _internal_last_sync_status = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "last_sync_status", oldValue, _internal_last_sync_status));
        }
    }

    public function set grid_size(value:Number) : void
    {
        var oldValue:Number = _internal_grid_size;
        if (isNaN(_internal_grid_size) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_grid_size = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "grid_size", oldValue, _internal_grid_size));
        }
    }

    public function set evidence(value:it.ht.rcs.console.search.model.StatEvidence) : void
    {
        var oldValue:it.ht.rcs.console.search.model.StatEvidence = _internal_evidence;
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

    public function set dashboard(value:it.ht.rcs.console.search.model.StatEvidence) : void
    {
        var oldValue:it.ht.rcs.console.search.model.StatEvidence = _internal_dashboard;
        if (oldValue !== value)
        {
            _internal_dashboard = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dashboard", oldValue, _internal_dashboard));
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

    public function set size(value:Number) : void
    {
      //trace("size: "+value)
        var oldValue:Number = _internal_size;
        if (isNaN(_internal_size) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_size = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "size", oldValue, _internal_size));
        }
    }

    public function set ghost(value:Boolean) : void
    {
      //trace("ghost: "+value)
        var oldValue:Boolean = _internal_ghost;
        if (oldValue !== value)
        {
            _internal_ghost = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ghost", oldValue, _internal_ghost));
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

    model_internal function setterListenerSource(value:flash.events.Event):void
    {
        _model.invalidateDependentOnSource();
    }

    model_internal function setterListener_id(value:flash.events.Event):void
    {
        _model.invalidateDependentOn_id();
    }

    model_internal function setterListenerEvidence(value:flash.events.Event):void
    {
        _model.invalidateDependentOnEvidence();
    }

    model_internal function setterListenerDevice(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDevice();
    }

    model_internal function setterListenerDashboard(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDashboard();
    }

    model_internal function setterListenerUser(value:flash.events.Event):void
    {
        _model.invalidateDependentOnUser();
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
        if (!_model.sourceIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_sourceValidationFailureMessages);
        }
        if (!_model._idIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::__idValidationFailureMessages);
        }
        if (!_model.evidenceIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_evidenceValidationFailureMessages);
        }
        if (!_model.deviceIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_deviceValidationFailureMessages);
        }
        if (!_model.dashboardIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_dashboardValidationFailureMessages);
        }
        if (!_model.userIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_userValidationFailureMessages);
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

    model_internal var _doValidationCacheOfSource : Array = null;
    model_internal var _doValidationLastValOfSource : String;

    model_internal function _doValidationForSource(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfSource != null && model_internal::_doValidationLastValOfSource == value)
           return model_internal::_doValidationCacheOfSource ;

        _model.model_internal::_sourceIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isSourceAvailable && _internal_source == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "source is required"));
        }

        model_internal::_doValidationCacheOfSource = validationFailures;
        model_internal::_doValidationLastValOfSource = value;

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
    
    model_internal var _doValidationCacheOfEvidence : Array = null;
    model_internal var _doValidationLastValOfEvidence : it.ht.rcs.console.search.model.StatEvidence;

    model_internal function _doValidationForEvidence(valueIn:Object):Array
    {
        var value : it.ht.rcs.console.search.model.StatEvidence = valueIn as it.ht.rcs.console.search.model.StatEvidence;

        if (model_internal::_doValidationCacheOfEvidence != null && model_internal::_doValidationLastValOfEvidence == value)
           return model_internal::_doValidationCacheOfEvidence ;

        _model.model_internal::_evidenceIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isEvidenceAvailable && _internal_evidence == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "evidence is required"));
        }

        model_internal::_doValidationCacheOfEvidence = validationFailures;
        model_internal::_doValidationLastValOfEvidence = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfDevice : Array = null;
    model_internal var _doValidationLastValOfDevice : String;

    model_internal function _doValidationForDevice(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfDevice != null && model_internal::_doValidationLastValOfDevice == value)
           return model_internal::_doValidationCacheOfDevice ;

        _model.model_internal::_deviceIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDeviceAvailable && _internal_device == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "device is required"));
        }

        model_internal::_doValidationCacheOfDevice = validationFailures;
        model_internal::_doValidationLastValOfDevice = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfDashboard : Array = null;
    model_internal var _doValidationLastValOfDashboard : it.ht.rcs.console.search.model.StatEvidence;

    model_internal function _doValidationForDashboard(valueIn:Object):Array
    {
        var value : it.ht.rcs.console.search.model.StatEvidence = valueIn as it.ht.rcs.console.search.model.StatEvidence;

        if (model_internal::_doValidationCacheOfDashboard != null && model_internal::_doValidationLastValOfDashboard == value)
           return model_internal::_doValidationCacheOfDashboard ;

        _model.model_internal::_dashboardIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDashboardAvailable && _internal_dashboard == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "dashboard is required"));
        }

        model_internal::_doValidationCacheOfDashboard = validationFailures;
        model_internal::_doValidationLastValOfDashboard = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfUser : Array = null;
    model_internal var _doValidationLastValOfUser : String;

    model_internal function _doValidationForUser(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfUser != null && model_internal::_doValidationLastValOfUser == value)
           return model_internal::_doValidationCacheOfUser ;

        _model.model_internal::_userIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isUserAvailable && _internal_user == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "user is required"));
        }

        model_internal::_doValidationCacheOfUser = validationFailures;
        model_internal::_doValidationLastValOfUser = value;

        return validationFailures;
    }
    

}

}
