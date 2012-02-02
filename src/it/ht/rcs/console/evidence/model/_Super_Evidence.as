/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Evidence.as.
 */

package it.ht.rcs.console.evidence.model
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import it.ht.rcs.console.evidence.model.EvidenceData;
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

[Managed]
[ExcludeClass]
public class _Super_Evidence extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        it.ht.rcs.console.evidence.model.EvidenceData.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _EvidenceEntityMetadata;
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
    private var _internal_blotter : Boolean;
    private var _internal__id : String;
    private var _internal_relevance : int;
    private var _internal_data : it.ht.rcs.console.evidence.model.EvidenceData;
    private var _internal_acquired : int;
    private var _internal_received : int;
    private var _internal_agent_id : String;
    private var _internal_type : String;
    private var _internal_note : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Evidence()
    {
        _model = new _EvidenceEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "data", model_internal::setterListenerData));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "agent_id", model_internal::setterListenerAgent_id));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "type", model_internal::setterListenerType));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "note", model_internal::setterListenerNote));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get blotter() : Boolean
    {
        return _internal_blotter;
    }

    [Bindable(event="propertyChange")]
    public function get _id() : String
    {
        return _internal__id;
    }

    [Bindable(event="propertyChange")]
    public function get relevance() : int
    {
        return _internal_relevance;
    }

    [Bindable(event="propertyChange")]
    public function get data() : it.ht.rcs.console.evidence.model.EvidenceData
    {
        return _internal_data;
    }

    [Bindable(event="propertyChange")]
    public function get acquired() : int
    {
        return _internal_acquired;
    }

    [Bindable(event="propertyChange")]
    public function get received() : int
    {
        return _internal_received;
    }

    [Bindable(event="propertyChange")]
    public function get agent_id() : String
    {
        return _internal_agent_id;
    }

    [Bindable(event="propertyChange")]
    public function get type() : String
    {
        return _internal_type;
    }

    [Bindable(event="propertyChange")]
    public function get note() : String
    {
        return _internal_note;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set blotter(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_blotter;
        if (oldValue !== value)
        {
            _internal_blotter = value;
        }
    }

    public function set _id(value:String) : void
    {
        var oldValue:String = _internal__id;
        if (oldValue !== value)
        {
            _internal__id = value;
        }
    }

    public function set relevance(value:int) : void
    {
        var oldValue:int = _internal_relevance;
        if (oldValue !== value)
        {
            _internal_relevance = value;
        }
    }

    public function set data(value:it.ht.rcs.console.evidence.model.EvidenceData) : void
    {
        var oldValue:it.ht.rcs.console.evidence.model.EvidenceData = _internal_data;
        if (oldValue !== value)
        {
            _internal_data = value;
        }
    }

    public function set acquired(value:int) : void
    {
        var oldValue:int = _internal_acquired;
        if (oldValue !== value)
        {
            _internal_acquired = value;
        }
    }

    public function set received(value:int) : void
    {
        var oldValue:int = _internal_received;
        if (oldValue !== value)
        {
            _internal_received = value;
        }
    }

    public function set agent_id(value:String) : void
    {
        var oldValue:String = _internal_agent_id;
        if (oldValue !== value)
        {
            _internal_agent_id = value;
        }
    }

    public function set type(value:String) : void
    {
        var oldValue:String = _internal_type;
        if (oldValue !== value)
        {
            _internal_type = value;
        }
    }

    public function set note(value:String) : void
    {
        var oldValue:String = _internal_note;
        if (oldValue !== value)
        {
            _internal_note = value;
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

    model_internal function setterListenerData(value:flash.events.Event):void
    {
        _model.invalidateDependentOnData();
    }

    model_internal function setterListenerAgent_id(value:flash.events.Event):void
    {
        _model.invalidateDependentOnAgent_id();
    }

    model_internal function setterListenerType(value:flash.events.Event):void
    {
        _model.invalidateDependentOnType();
    }

    model_internal function setterListenerNote(value:flash.events.Event):void
    {
        _model.invalidateDependentOnNote();
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
        if (!_model.dataIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_dataValidationFailureMessages);
        }
        if (!_model.agent_idIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_agent_idValidationFailureMessages);
        }
        if (!_model.typeIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_typeValidationFailureMessages);
        }
        if (!_model.noteIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_noteValidationFailureMessages);
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
    public function get _model() : _EvidenceEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _EvidenceEntityMetadata) : void
    {
        var oldValue : _EvidenceEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfData : Array = null;
    model_internal var _doValidationLastValOfData : it.ht.rcs.console.evidence.model.EvidenceData;

    model_internal function _doValidationForData(valueIn:Object):Array
    {
        var value : it.ht.rcs.console.evidence.model.EvidenceData = valueIn as it.ht.rcs.console.evidence.model.EvidenceData;

        if (model_internal::_doValidationCacheOfData != null && model_internal::_doValidationLastValOfData == value)
           return model_internal::_doValidationCacheOfData ;

        _model.model_internal::_dataIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDataAvailable && _internal_data == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "data is required"));
        }

        model_internal::_doValidationCacheOfData = validationFailures;
        model_internal::_doValidationLastValOfData = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfAgent_id : Array = null;
    model_internal var _doValidationLastValOfAgent_id : String;

    model_internal function _doValidationForAgent_id(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfAgent_id != null && model_internal::_doValidationLastValOfAgent_id == value)
           return model_internal::_doValidationCacheOfAgent_id ;

        _model.model_internal::_agent_idIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isAgent_idAvailable && _internal_agent_id == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "agent_id is required"));
        }

        model_internal::_doValidationCacheOfAgent_id = validationFailures;
        model_internal::_doValidationLastValOfAgent_id = value;

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
    
    model_internal var _doValidationCacheOfNote : Array = null;
    model_internal var _doValidationLastValOfNote : String;

    model_internal function _doValidationForNote(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfNote != null && model_internal::_doValidationLastValOfNote == value)
           return model_internal::_doValidationCacheOfNote ;

        _model.model_internal::_noteIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNoteAvailable && _internal_note == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "note is required"));
        }

        model_internal::_doValidationCacheOfNote = validationFailures;
        model_internal::_doValidationLastValOfNote = value;

        return validationFailures;
    }
    

}

}
