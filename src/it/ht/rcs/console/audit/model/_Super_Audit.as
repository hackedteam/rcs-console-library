/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Audit.as.
 */

package it.ht.rcs.console.audit.model
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

[Managed]
[ExcludeClass]
public class _Super_Audit extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _AuditEntityMetadata;
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
    private var _internal_agent_name : String;
    private var _internal_operation_name : String;
    private var _internal_time : int;
    private var _internal_desc : String;
    private var _internal__id : String;
    private var _internal_target_name : String;
    private var _internal_action : String;
    private var _internal_actor : String;
    private var _internal_group_name : String;
    private var _internal_user_name : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Audit()
    {
        _model = new _AuditEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "agent_name", model_internal::setterListenerAgent_name));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "operation_name", model_internal::setterListenerOperation_name));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "desc", model_internal::setterListenerDesc));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "target_name", model_internal::setterListenerTarget_name));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "action", model_internal::setterListenerAction));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "actor", model_internal::setterListenerActor));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "group_name", model_internal::setterListenerGroup_name));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "user_name", model_internal::setterListenerUser_name));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get agent_name() : String
    {
        return _internal_agent_name;
    }

    [Bindable(event="propertyChange")]
    public function get operation_name() : String
    {
        return _internal_operation_name;
    }

    [Bindable(event="propertyChange")]
    public function get time() : int
    {
        return _internal_time;
    }

    [Bindable(event="propertyChange")]
    public function get desc() : String
    {
        return _internal_desc;
    }

    [Bindable(event="propertyChange")]
    public function get _id() : String
    {
        return _internal__id;
    }

    [Bindable(event="propertyChange")]
    public function get target_name() : String
    {
        return _internal_target_name;
    }

    [Bindable(event="propertyChange")]
    public function get action() : String
    {
        return _internal_action;
    }

    [Bindable(event="propertyChange")]
    public function get actor() : String
    {
        return _internal_actor;
    }

    [Bindable(event="propertyChange")]
    public function get group_name() : String
    {
        return _internal_group_name;
    }

    [Bindable(event="propertyChange")]
    public function get user_name() : String
    {
        return _internal_user_name;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set agent_name(value:String) : void
    {
        var oldValue:String = _internal_agent_name;
        if (oldValue !== value)
        {
            _internal_agent_name = value;
        }
    }

    public function set operation_name(value:String) : void
    {
        var oldValue:String = _internal_operation_name;
        if (oldValue !== value)
        {
            _internal_operation_name = value;
        }
    }

    public function set time(value:int) : void
    {
        var oldValue:int = _internal_time;
        if (oldValue !== value)
        {
            _internal_time = value;
        }
    }

    public function set desc(value:String) : void
    {
        var oldValue:String = _internal_desc;
        if (oldValue !== value)
        {
            _internal_desc = value;
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

    public function set target_name(value:String) : void
    {
        var oldValue:String = _internal_target_name;
        if (oldValue !== value)
        {
            _internal_target_name = value;
        }
    }

    public function set action(value:String) : void
    {
        var oldValue:String = _internal_action;
        if (oldValue !== value)
        {
            _internal_action = value;
        }
    }

    public function set actor(value:String) : void
    {
        var oldValue:String = _internal_actor;
        if (oldValue !== value)
        {
            _internal_actor = value;
        }
    }

    public function set group_name(value:String) : void
    {
        var oldValue:String = _internal_group_name;
        if (oldValue !== value)
        {
            _internal_group_name = value;
        }
    }

    public function set user_name(value:String) : void
    {
        var oldValue:String = _internal_user_name;
        if (oldValue !== value)
        {
            _internal_user_name = value;
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

    model_internal function setterListenerAgent_name(value:flash.events.Event):void
    {
        _model.invalidateDependentOnAgent_name();
    }

    model_internal function setterListenerOperation_name(value:flash.events.Event):void
    {
        _model.invalidateDependentOnOperation_name();
    }

    model_internal function setterListenerDesc(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDesc();
    }

    model_internal function setterListenerTarget_name(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTarget_name();
    }

    model_internal function setterListenerAction(value:flash.events.Event):void
    {
        _model.invalidateDependentOnAction();
    }

    model_internal function setterListenerActor(value:flash.events.Event):void
    {
        _model.invalidateDependentOnActor();
    }

    model_internal function setterListenerGroup_name(value:flash.events.Event):void
    {
        _model.invalidateDependentOnGroup_name();
    }

    model_internal function setterListenerUser_name(value:flash.events.Event):void
    {
        _model.invalidateDependentOnUser_name();
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
        if (!_model.agent_nameIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_agent_nameValidationFailureMessages);
        }
        if (!_model.operation_nameIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_operation_nameValidationFailureMessages);
        }
        if (!_model.descIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_descValidationFailureMessages);
        }
        if (!_model.target_nameIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_target_nameValidationFailureMessages);
        }
        if (!_model.actionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_actionValidationFailureMessages);
        }
        if (!_model.actorIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_actorValidationFailureMessages);
        }
        if (!_model.group_nameIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_group_nameValidationFailureMessages);
        }
        if (!_model.user_nameIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_user_nameValidationFailureMessages);
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
    public function get _model() : _AuditEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _AuditEntityMetadata) : void
    {
        var oldValue : _AuditEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfAgent_name : Array = null;
    model_internal var _doValidationLastValOfAgent_name : String;

    model_internal function _doValidationForAgent_name(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfAgent_name != null && model_internal::_doValidationLastValOfAgent_name == value)
           return model_internal::_doValidationCacheOfAgent_name ;

        _model.model_internal::_agent_nameIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isAgent_nameAvailable && _internal_agent_name == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "agent_name is required"));
        }

        model_internal::_doValidationCacheOfAgent_name = validationFailures;
        model_internal::_doValidationLastValOfAgent_name = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfOperation_name : Array = null;
    model_internal var _doValidationLastValOfOperation_name : String;

    model_internal function _doValidationForOperation_name(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfOperation_name != null && model_internal::_doValidationLastValOfOperation_name == value)
           return model_internal::_doValidationCacheOfOperation_name ;

        _model.model_internal::_operation_nameIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isOperation_nameAvailable && _internal_operation_name == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "operation_name is required"));
        }

        model_internal::_doValidationCacheOfOperation_name = validationFailures;
        model_internal::_doValidationLastValOfOperation_name = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfDesc : Array = null;
    model_internal var _doValidationLastValOfDesc : String;

    model_internal function _doValidationForDesc(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfDesc != null && model_internal::_doValidationLastValOfDesc == value)
           return model_internal::_doValidationCacheOfDesc ;

        _model.model_internal::_descIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDescAvailable && _internal_desc == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "desc is required"));
        }

        model_internal::_doValidationCacheOfDesc = validationFailures;
        model_internal::_doValidationLastValOfDesc = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfTarget_name : Array = null;
    model_internal var _doValidationLastValOfTarget_name : String;

    model_internal function _doValidationForTarget_name(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfTarget_name != null && model_internal::_doValidationLastValOfTarget_name == value)
           return model_internal::_doValidationCacheOfTarget_name ;

        _model.model_internal::_target_nameIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTarget_nameAvailable && _internal_target_name == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "target_name is required"));
        }

        model_internal::_doValidationCacheOfTarget_name = validationFailures;
        model_internal::_doValidationLastValOfTarget_name = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfAction : Array = null;
    model_internal var _doValidationLastValOfAction : String;

    model_internal function _doValidationForAction(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfAction != null && model_internal::_doValidationLastValOfAction == value)
           return model_internal::_doValidationCacheOfAction ;

        _model.model_internal::_actionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isActionAvailable && _internal_action == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "action is required"));
        }

        model_internal::_doValidationCacheOfAction = validationFailures;
        model_internal::_doValidationLastValOfAction = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfActor : Array = null;
    model_internal var _doValidationLastValOfActor : String;

    model_internal function _doValidationForActor(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfActor != null && model_internal::_doValidationLastValOfActor == value)
           return model_internal::_doValidationCacheOfActor ;

        _model.model_internal::_actorIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isActorAvailable && _internal_actor == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "actor is required"));
        }

        model_internal::_doValidationCacheOfActor = validationFailures;
        model_internal::_doValidationLastValOfActor = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfGroup_name : Array = null;
    model_internal var _doValidationLastValOfGroup_name : String;

    model_internal function _doValidationForGroup_name(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfGroup_name != null && model_internal::_doValidationLastValOfGroup_name == value)
           return model_internal::_doValidationCacheOfGroup_name ;

        _model.model_internal::_group_nameIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isGroup_nameAvailable && _internal_group_name == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "group_name is required"));
        }

        model_internal::_doValidationCacheOfGroup_name = validationFailures;
        model_internal::_doValidationLastValOfGroup_name = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfUser_name : Array = null;
    model_internal var _doValidationLastValOfUser_name : String;

    model_internal function _doValidationForUser_name(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfUser_name != null && model_internal::_doValidationLastValOfUser_name == value)
           return model_internal::_doValidationCacheOfUser_name ;

        _model.model_internal::_user_nameIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isUser_nameAvailable && _internal_user_name == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "user_name is required"));
        }

        model_internal::_doValidationCacheOfUser_name = validationFailures;
        model_internal::_doValidationLastValOfUser_name = value;

        return validationFailures;
    }
    

}

}
