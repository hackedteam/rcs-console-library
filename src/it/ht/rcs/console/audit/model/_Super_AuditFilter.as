/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - AuditFilter.as.
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
public class _Super_AuditFilter extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _AuditFilterEntityMetadata;
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
    private var _internal_operation_name : ArrayCollection;
    private var _internal__id : String;
    private var _internal_target_name : ArrayCollection;
    private var _internal_action : ArrayCollection;
    private var _internal_actor : ArrayCollection;
    private var _internal_group_name : ArrayCollection;
    private var _internal_user_name : ArrayCollection;
    private var _internal_agent_name : ArrayCollection;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_AuditFilter()
    {
        _model = new _AuditFilterEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "operation_name", model_internal::setterListenerOperation_name));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "_id", model_internal::setterListener_id));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "target_name", model_internal::setterListenerTarget_name));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "action", model_internal::setterListenerAction));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "actor", model_internal::setterListenerActor));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "group_name", model_internal::setterListenerGroup_name));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "user_name", model_internal::setterListenerUser_name));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "agent_name", model_internal::setterListenerAgent_name));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get operation_name() : ArrayCollection
    {
        return _internal_operation_name;
    }

    [Bindable(event="propertyChange")]
    public function get _id() : String
    {
        return _internal__id;
    }

    [Bindable(event="propertyChange")]
    public function get target_name() : ArrayCollection
    {
        return _internal_target_name;
    }

    [Bindable(event="propertyChange")]
    public function get action() : ArrayCollection
    {
        return _internal_action;
    }

    [Bindable(event="propertyChange")]
    public function get actor() : ArrayCollection
    {
        return _internal_actor;
    }

    [Bindable(event="propertyChange")]
    public function get group_name() : ArrayCollection
    {
        return _internal_group_name;
    }

    [Bindable(event="propertyChange")]
    public function get user_name() : ArrayCollection
    {
        return _internal_user_name;
    }

    [Bindable(event="propertyChange")]
    public function get agent_name() : ArrayCollection
    {
        return _internal_agent_name;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set operation_name(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_operation_name;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_operation_name = value;
            }
            else if (value is Array)
            {
                _internal_operation_name = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_operation_name = null;
            }
            else
            {
                throw new Error("value of operation_name must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "operation_name", oldValue, _internal_operation_name));
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

    public function set target_name(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_target_name;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_target_name = value;
            }
            else if (value is Array)
            {
                _internal_target_name = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_target_name = null;
            }
            else
            {
                throw new Error("value of target_name must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "target_name", oldValue, _internal_target_name));
        }
    }

    public function set action(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_action;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_action = value;
            }
            else if (value is Array)
            {
                _internal_action = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_action = null;
            }
            else
            {
                throw new Error("value of action must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "action", oldValue, _internal_action));
        }
    }

    public function set actor(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_actor;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_actor = value;
            }
            else if (value is Array)
            {
                _internal_actor = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_actor = null;
            }
            else
            {
                throw new Error("value of actor must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "actor", oldValue, _internal_actor));
        }
    }

    public function set group_name(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_group_name;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_group_name = value;
            }
            else if (value is Array)
            {
                _internal_group_name = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_group_name = null;
            }
            else
            {
                throw new Error("value of group_name must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "group_name", oldValue, _internal_group_name));
        }
    }

    public function set user_name(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_user_name;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_user_name = value;
            }
            else if (value is Array)
            {
                _internal_user_name = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_user_name = null;
            }
            else
            {
                throw new Error("value of user_name must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "user_name", oldValue, _internal_user_name));
        }
    }

    public function set agent_name(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_agent_name;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_agent_name = value;
            }
            else if (value is Array)
            {
                _internal_agent_name = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_agent_name = null;
            }
            else
            {
                throw new Error("value of agent_name must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "agent_name", oldValue, _internal_agent_name));
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

    model_internal function setterListenerOperation_name(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerOperation_name);
            }
        }
        _model.invalidateDependentOnOperation_name();
    }

    model_internal function setterListener_id(value:flash.events.Event):void
    {
        _model.invalidateDependentOn_id();
    }

    model_internal function setterListenerTarget_name(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerTarget_name);
            }
        }
        _model.invalidateDependentOnTarget_name();
    }

    model_internal function setterListenerAction(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerAction);
            }
        }
        _model.invalidateDependentOnAction();
    }

    model_internal function setterListenerActor(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerActor);
            }
        }
        _model.invalidateDependentOnActor();
    }

    model_internal function setterListenerGroup_name(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerGroup_name);
            }
        }
        _model.invalidateDependentOnGroup_name();
    }

    model_internal function setterListenerUser_name(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerUser_name);
            }
        }
        _model.invalidateDependentOnUser_name();
    }

    model_internal function setterListenerAgent_name(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerAgent_name);
            }
        }
        _model.invalidateDependentOnAgent_name();
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
        if (!_model.operation_nameIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_operation_nameValidationFailureMessages);
        }
        if (!_model._idIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::__idValidationFailureMessages);
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
        if (!_model.agent_nameIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_agent_nameValidationFailureMessages);
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
    public function get _model() : _AuditFilterEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _AuditFilterEntityMetadata) : void
    {
        var oldValue : _AuditFilterEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfOperation_name : Array = null;
    model_internal var _doValidationLastValOfOperation_name : ArrayCollection;

    model_internal function _doValidationForOperation_name(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

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
    
    model_internal var _doValidationCacheOfTarget_name : Array = null;
    model_internal var _doValidationLastValOfTarget_name : ArrayCollection;

    model_internal function _doValidationForTarget_name(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

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
    model_internal var _doValidationLastValOfAction : ArrayCollection;

    model_internal function _doValidationForAction(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

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
    model_internal var _doValidationLastValOfActor : ArrayCollection;

    model_internal function _doValidationForActor(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

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
    model_internal var _doValidationLastValOfGroup_name : ArrayCollection;

    model_internal function _doValidationForGroup_name(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

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
    model_internal var _doValidationLastValOfUser_name : ArrayCollection;

    model_internal function _doValidationForUser_name(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

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
    
    model_internal var _doValidationCacheOfAgent_name : Array = null;
    model_internal var _doValidationLastValOfAgent_name : ArrayCollection;

    model_internal function _doValidationForAgent_name(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

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
    

}

}
