/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - ProxyRule.as.
 */

package it.ht.rcs.console.network.model
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
public class _Super_ProxyRule extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _ProxyRuleEntityMetadata;
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
    private var _internal_action_param : String;
    private var _internal_enabled : Boolean;
    private var _internal_resource : String;
    private var _internal_updated_at : String;
    private var _internal__id : String;
    private var _internal_ident : String;
    private var _internal_action : String;
    private var _internal_target : ArrayCollection;
    private var _internal_created_at : String;
    private var _internal_disable_sync : Boolean;
    private var _internal_ident_param : String;
    private var _internal_probability : int;
    private var _internal__mid : int;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_ProxyRule()
    {
        _model = new _ProxyRuleEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "action_param", model_internal::setterListenerAction_param));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "resource", model_internal::setterListenerResource));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "updated_at", model_internal::setterListenerUpdated_at));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "_id", model_internal::setterListener_id));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "ident", model_internal::setterListenerIdent));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "action", model_internal::setterListenerAction));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "target", model_internal::setterListenerTarget));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "created_at", model_internal::setterListenerCreated_at));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "ident_param", model_internal::setterListenerIdent_param));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get action_param() : String
    {
        return _internal_action_param;
    }

    [Bindable(event="propertyChange")]
    public function get enabled() : Boolean
    {
        return _internal_enabled;
    }

    [Bindable(event="propertyChange")]
    public function get resource() : String
    {
        return _internal_resource;
    }

    [Bindable(event="propertyChange")]
    public function get updated_at() : String
    {
        return _internal_updated_at;
    }

    [Bindable(event="propertyChange")]
    public function get _id() : String
    {
        return _internal__id;
    }

    [Bindable(event="propertyChange")]
    public function get ident() : String
    {
        return _internal_ident;
    }

    [Bindable(event="propertyChange")]
    public function get action() : String
    {
        return _internal_action;
    }

    [Bindable(event="propertyChange")]
    public function get target() : ArrayCollection
    {
        return _internal_target;
    }

    [Bindable(event="propertyChange")]
    public function get created_at() : String
    {
        return _internal_created_at;
    }

    [Bindable(event="propertyChange")]
    public function get disable_sync() : Boolean
    {
        return _internal_disable_sync;
    }

    [Bindable(event="propertyChange")]
    public function get ident_param() : String
    {
        return _internal_ident_param;
    }

    [Bindable(event="propertyChange")]
    public function get probability() : int
    {
        return _internal_probability;
    }

    [Bindable(event="propertyChange")]
    public function get _mid() : int
    {
        return _internal__mid;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set action_param(value:String) : void
    {
        var oldValue:String = _internal_action_param;
        if (oldValue !== value)
        {
            _internal_action_param = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "action_param", oldValue, _internal_action_param));
        }
    }

    public function set enabled(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_enabled;
        if (oldValue !== value)
        {
            _internal_enabled = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "enabled", oldValue, _internal_enabled));
        }
    }

    public function set resource(value:String) : void
    {
        var oldValue:String = _internal_resource;
        if (oldValue !== value)
        {
            _internal_resource = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "resource", oldValue, _internal_resource));
        }
    }

    public function set updated_at(value:String) : void
    {
        var oldValue:String = _internal_updated_at;
        if (oldValue !== value)
        {
            _internal_updated_at = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "updated_at", oldValue, _internal_updated_at));
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

    public function set ident(value:String) : void
    {
        var oldValue:String = _internal_ident;
        if (oldValue !== value)
        {
            _internal_ident = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ident", oldValue, _internal_ident));
        }
    }

    public function set action(value:String) : void
    {
        var oldValue:String = _internal_action;
        if (oldValue !== value)
        {
            _internal_action = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "action", oldValue, _internal_action));
        }
    }

    public function set target(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_target;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_target = value;
            }
            else if (value is Array)
            {
                _internal_target = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_target = null;
            }
            else
            {
                throw new Error("value of target must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "target", oldValue, _internal_target));
        }
    }

    public function set created_at(value:String) : void
    {
        var oldValue:String = _internal_created_at;
        if (oldValue !== value)
        {
            _internal_created_at = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "created_at", oldValue, _internal_created_at));
        }
    }

    public function set disable_sync(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_disable_sync;
        if (oldValue !== value)
        {
            _internal_disable_sync = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "disable_sync", oldValue, _internal_disable_sync));
        }
    }

    public function set ident_param(value:String) : void
    {
        var oldValue:String = _internal_ident_param;
        if (oldValue !== value)
        {
            _internal_ident_param = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ident_param", oldValue, _internal_ident_param));
        }
    }

    public function set probability(value:int) : void
    {
        var oldValue:int = _internal_probability;
        if (oldValue !== value)
        {
            _internal_probability = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "probability", oldValue, _internal_probability));
        }
    }

    public function set _mid(value:int) : void
    {
        var oldValue:int = _internal__mid;
        if (oldValue !== value)
        {
            _internal__mid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_mid", oldValue, _internal__mid));
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

    model_internal function setterListenerAction_param(value:flash.events.Event):void
    {
        _model.invalidateDependentOnAction_param();
    }

    model_internal function setterListenerResource(value:flash.events.Event):void
    {
        _model.invalidateDependentOnResource();
    }

    model_internal function setterListenerUpdated_at(value:flash.events.Event):void
    {
        _model.invalidateDependentOnUpdated_at();
    }

    model_internal function setterListener_id(value:flash.events.Event):void
    {
        _model.invalidateDependentOn_id();
    }

    model_internal function setterListenerIdent(value:flash.events.Event):void
    {
        _model.invalidateDependentOnIdent();
    }

    model_internal function setterListenerAction(value:flash.events.Event):void
    {
        _model.invalidateDependentOnAction();
    }

    model_internal function setterListenerTarget(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerTarget);
            }
        }
        _model.invalidateDependentOnTarget();
    }

    model_internal function setterListenerCreated_at(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCreated_at();
    }

    model_internal function setterListenerIdent_param(value:flash.events.Event):void
    {
        _model.invalidateDependentOnIdent_param();
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
        if (!_model.action_paramIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_action_paramValidationFailureMessages);
        }
        if (!_model.resourceIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_resourceValidationFailureMessages);
        }
        if (!_model.updated_atIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_updated_atValidationFailureMessages);
        }
        if (!_model._idIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::__idValidationFailureMessages);
        }
        if (!_model.identIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_identValidationFailureMessages);
        }
        if (!_model.actionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_actionValidationFailureMessages);
        }
        if (!_model.targetIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_targetValidationFailureMessages);
        }
        if (!_model.created_atIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_created_atValidationFailureMessages);
        }
        if (!_model.ident_paramIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_ident_paramValidationFailureMessages);
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
    public function get _model() : _ProxyRuleEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _ProxyRuleEntityMetadata) : void
    {
        var oldValue : _ProxyRuleEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfAction_param : Array = null;
    model_internal var _doValidationLastValOfAction_param : String;

    model_internal function _doValidationForAction_param(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfAction_param != null && model_internal::_doValidationLastValOfAction_param == value)
           return model_internal::_doValidationCacheOfAction_param ;

        _model.model_internal::_action_paramIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isAction_paramAvailable && _internal_action_param == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "action_param is required"));
        }

        model_internal::_doValidationCacheOfAction_param = validationFailures;
        model_internal::_doValidationLastValOfAction_param = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfResource : Array = null;
    model_internal var _doValidationLastValOfResource : String;

    model_internal function _doValidationForResource(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfResource != null && model_internal::_doValidationLastValOfResource == value)
           return model_internal::_doValidationCacheOfResource ;

        _model.model_internal::_resourceIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isResourceAvailable && _internal_resource == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "resource is required"));
        }

        model_internal::_doValidationCacheOfResource = validationFailures;
        model_internal::_doValidationLastValOfResource = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfUpdated_at : Array = null;
    model_internal var _doValidationLastValOfUpdated_at : String;

    model_internal function _doValidationForUpdated_at(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfUpdated_at != null && model_internal::_doValidationLastValOfUpdated_at == value)
           return model_internal::_doValidationCacheOfUpdated_at ;

        _model.model_internal::_updated_atIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isUpdated_atAvailable && _internal_updated_at == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "updated_at is required"));
        }

        model_internal::_doValidationCacheOfUpdated_at = validationFailures;
        model_internal::_doValidationLastValOfUpdated_at = value;

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
    
    model_internal var _doValidationCacheOfIdent : Array = null;
    model_internal var _doValidationLastValOfIdent : String;

    model_internal function _doValidationForIdent(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfIdent != null && model_internal::_doValidationLastValOfIdent == value)
           return model_internal::_doValidationCacheOfIdent ;

        _model.model_internal::_identIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isIdentAvailable && _internal_ident == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "ident is required"));
        }

        model_internal::_doValidationCacheOfIdent = validationFailures;
        model_internal::_doValidationLastValOfIdent = value;

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
    
    model_internal var _doValidationCacheOfTarget : Array = null;
    model_internal var _doValidationLastValOfTarget : ArrayCollection;

    model_internal function _doValidationForTarget(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfTarget != null && model_internal::_doValidationLastValOfTarget == value)
           return model_internal::_doValidationCacheOfTarget ;

        _model.model_internal::_targetIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTargetAvailable && _internal_target == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "target is required"));
        }

        model_internal::_doValidationCacheOfTarget = validationFailures;
        model_internal::_doValidationLastValOfTarget = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCreated_at : Array = null;
    model_internal var _doValidationLastValOfCreated_at : String;

    model_internal function _doValidationForCreated_at(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCreated_at != null && model_internal::_doValidationLastValOfCreated_at == value)
           return model_internal::_doValidationCacheOfCreated_at ;

        _model.model_internal::_created_atIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCreated_atAvailable && _internal_created_at == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "created_at is required"));
        }

        model_internal::_doValidationCacheOfCreated_at = validationFailures;
        model_internal::_doValidationLastValOfCreated_at = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfIdent_param : Array = null;
    model_internal var _doValidationLastValOfIdent_param : String;

    model_internal function _doValidationForIdent_param(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfIdent_param != null && model_internal::_doValidationLastValOfIdent_param == value)
           return model_internal::_doValidationCacheOfIdent_param ;

        _model.model_internal::_ident_paramIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isIdent_paramAvailable && _internal_ident_param == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "ident_param is required"));
        }

        model_internal::_doValidationCacheOfIdent_param = validationFailures;
        model_internal::_doValidationLastValOfIdent_param = value;

        return validationFailures;
    }
    

}

}
