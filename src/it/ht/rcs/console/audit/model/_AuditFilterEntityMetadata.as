
/**
 * This is a generated class and is not intended for modification.  
 */
package it.ht.rcs.console.audit.model
{
import com.adobe.fiber.styles.IStyle;
import com.adobe.fiber.styles.Style;
import com.adobe.fiber.styles.StyleValidator;
import com.adobe.fiber.valueobjects.AbstractEntityMetadata;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import mx.collections.ArrayCollection;
import mx.events.ValidationResultEvent;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _AuditFilterEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("operation", "_id", "target", "action", "actor", "group", "user", "agent");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("operation", "_id", "target", "action", "actor", "group", "user", "agent");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("operation", "_id", "target", "action", "actor", "group", "user", "agent");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("operation", "_id", "target", "action", "actor", "group", "user", "agent");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("operation", "_id", "target", "action", "actor", "group", "user", "agent");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("operation", "target", "action", "actor", "group", "user", "agent");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "AuditFilter";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _operationIsValid:Boolean;
    model_internal var _operationValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _operationIsValidCacheInitialized:Boolean = false;
    model_internal var _operationValidationFailureMessages:Array;
    
    model_internal var __idIsValid:Boolean;
    model_internal var __idValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var __idIsValidCacheInitialized:Boolean = false;
    model_internal var __idValidationFailureMessages:Array;
    
    model_internal var _targetIsValid:Boolean;
    model_internal var _targetValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _targetIsValidCacheInitialized:Boolean = false;
    model_internal var _targetValidationFailureMessages:Array;
    
    model_internal var _actionIsValid:Boolean;
    model_internal var _actionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _actionIsValidCacheInitialized:Boolean = false;
    model_internal var _actionValidationFailureMessages:Array;
    
    model_internal var _actorIsValid:Boolean;
    model_internal var _actorValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _actorIsValidCacheInitialized:Boolean = false;
    model_internal var _actorValidationFailureMessages:Array;
    
    model_internal var _groupIsValid:Boolean;
    model_internal var _groupValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _groupIsValidCacheInitialized:Boolean = false;
    model_internal var _groupValidationFailureMessages:Array;
    
    model_internal var _userIsValid:Boolean;
    model_internal var _userValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _userIsValidCacheInitialized:Boolean = false;
    model_internal var _userValidationFailureMessages:Array;
    
    model_internal var _agentIsValid:Boolean;
    model_internal var _agentValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _agentIsValidCacheInitialized:Boolean = false;
    model_internal var _agentValidationFailureMessages:Array;

    model_internal var _instance:_Super_AuditFilter;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _AuditFilterEntityMetadata(value : _Super_AuditFilter)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["operation"] = new Array();
            model_internal::dependentsOnMap["_id"] = new Array();
            model_internal::dependentsOnMap["target"] = new Array();
            model_internal::dependentsOnMap["action"] = new Array();
            model_internal::dependentsOnMap["actor"] = new Array();
            model_internal::dependentsOnMap["group"] = new Array();
            model_internal::dependentsOnMap["user"] = new Array();
            model_internal::dependentsOnMap["agent"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
            model_internal::collectionBaseMap["operation"] = "String";
            model_internal::collectionBaseMap["target"] = "String";
            model_internal::collectionBaseMap["action"] = "String";
            model_internal::collectionBaseMap["actor"] = "String";
            model_internal::collectionBaseMap["group"] = "String";
            model_internal::collectionBaseMap["user"] = "String";
            model_internal::collectionBaseMap["agent"] = "String";
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["operation"] = "ArrayCollection";
        model_internal::propertyTypeMap["_id"] = "String";
        model_internal::propertyTypeMap["target"] = "ArrayCollection";
        model_internal::propertyTypeMap["action"] = "ArrayCollection";
        model_internal::propertyTypeMap["actor"] = "ArrayCollection";
        model_internal::propertyTypeMap["group"] = "ArrayCollection";
        model_internal::propertyTypeMap["user"] = "ArrayCollection";
        model_internal::propertyTypeMap["agent"] = "ArrayCollection";

        model_internal::_instance = value;
        model_internal::_operationValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForOperation);
        model_internal::_operationValidator.required = true;
        model_internal::_operationValidator.requiredFieldError = "operation is required";
        //model_internal::_operationValidator.source = model_internal::_instance;
        //model_internal::_operationValidator.property = "operation";
        model_internal::__idValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationFor_id);
        model_internal::__idValidator.required = true;
        model_internal::__idValidator.requiredFieldError = "_id is required";
        //model_internal::__idValidator.source = model_internal::_instance;
        //model_internal::__idValidator.property = "_id";
        model_internal::_targetValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForTarget);
        model_internal::_targetValidator.required = true;
        model_internal::_targetValidator.requiredFieldError = "target is required";
        //model_internal::_targetValidator.source = model_internal::_instance;
        //model_internal::_targetValidator.property = "target";
        model_internal::_actionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForAction);
        model_internal::_actionValidator.required = true;
        model_internal::_actionValidator.requiredFieldError = "action is required";
        //model_internal::_actionValidator.source = model_internal::_instance;
        //model_internal::_actionValidator.property = "action";
        model_internal::_actorValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForActor);
        model_internal::_actorValidator.required = true;
        model_internal::_actorValidator.requiredFieldError = "actor is required";
        //model_internal::_actorValidator.source = model_internal::_instance;
        //model_internal::_actorValidator.property = "actor";
        model_internal::_groupValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForGroup);
        model_internal::_groupValidator.required = true;
        model_internal::_groupValidator.requiredFieldError = "group is required";
        //model_internal::_groupValidator.source = model_internal::_instance;
        //model_internal::_groupValidator.property = "group";
        model_internal::_userValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForUser);
        model_internal::_userValidator.required = true;
        model_internal::_userValidator.requiredFieldError = "user is required";
        //model_internal::_userValidator.source = model_internal::_instance;
        //model_internal::_userValidator.property = "user";
        model_internal::_agentValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForAgent);
        model_internal::_agentValidator.required = true;
        model_internal::_agentValidator.requiredFieldError = "agent is required";
        //model_internal::_agentValidator.source = model_internal::_instance;
        //model_internal::_agentValidator.property = "agent";
    }

    override public function getEntityName():String
    {
        return model_internal::entityName;
    }

    override public function getProperties():Array
    {
        return model_internal::allProperties;
    }

    override public function getAssociationProperties():Array
    {
        return model_internal::allAssociationProperties;
    }

    override public function getRequiredProperties():Array
    {
         return model_internal::allRequiredProperties;   
    }

    override public function getDataProperties():Array
    {
        return model_internal::dataProperties;
    }

    public function getSourceProperties():Array
    {
        return model_internal::sourceProperties;
    }

    public function getNonDerivedProperties():Array
    {
        return model_internal::nonDerivedProperties;
    }

    override public function getGuardedProperties():Array
    {
        return model_internal::guardedProperties;
    }

    override public function getUnguardedProperties():Array
    {
        return model_internal::allAlwaysAvailableProperties;
    }

    override public function getDependants(propertyName:String):Array
    {
       if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a data property of entity AuditFilter");
            
       return model_internal::dependentsOnMap[propertyName] as Array;  
    }

    override public function getDependedOnServices():Array
    {
        return model_internal::dependedOnServices;
    }

    override public function getCollectionProperties():Array
    {
        return model_internal::collectionProperties;
    }

    override public function getCollectionBase(propertyName:String):String
    {
        if (model_internal::collectionProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a collection property of entity AuditFilter");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of AuditFilter");

        return model_internal::propertyTypeMap[propertyName];
    }

    override public function getAvailableProperties():com.adobe.fiber.valueobjects.IPropertyIterator
    {
        return new com.adobe.fiber.valueobjects.AvailablePropertyIterator(this);
    }

    override public function getValue(propertyName:String):*
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity AuditFilter");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity AuditFilter");
        }

        model_internal::_instance[propertyName] = value;
    }

    override public function getMappedByProperty(associationProperty:String):String
    {
        switch(associationProperty)
        {
            default:
            {
                return null;
            }
        }
    }

    override public function getPropertyLength(propertyName:String):int
    {
        switch(propertyName)
        {
            default:
            {
                return 0;
            }
        }
    }

    override public function isAvailable(propertyName:String):Boolean
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity AuditFilter");
        }

        if (model_internal::allAlwaysAvailableProperties.indexOf(propertyName) != -1)
        {
            return true;
        }

        switch(propertyName)
        {
            default:
            {
                return true;
            }
        }
    }

    override public function getIdentityMap():Object
    {
        var returnMap:Object = new Object();

        return returnMap;
    }

    [Bindable(event="propertyChange")]
    override public function get invalidConstraints():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_invalidConstraints;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_invalidConstraints;        
        }
    }

    [Bindable(event="propertyChange")]
    override public function get validationFailureMessages():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
    }

    override public function getDependantInvalidConstraints(propertyName:String):Array
    {
        var dependants:Array = getDependants(propertyName);
        if (dependants.length == 0)
        {
            return emptyArray;
        }

        var currentlyInvalid:Array = invalidConstraints;
        if (currentlyInvalid.length == 0)
        {
            return emptyArray;
        }

        var filterFunc:Function = function(element:*, index:int, arr:Array):Boolean
        {
            return dependants.indexOf(element) > -1;
        }

        return currentlyInvalid.filter(filterFunc);
    }

    /**
     * isValid
     */
    [Bindable(event="propertyChange")] 
    public function get isValid() : Boolean
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_isValid;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_isValid;
        }
    }

    [Bindable(event="propertyChange")]
    public function get isOperationAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get is_idAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTargetAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isActionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isActorAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isGroupAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUserAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAgentAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnOperation():void
    {
        if (model_internal::_operationIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfOperation = null;
            model_internal::calculateOperationIsValid();
        }
    }
    public function invalidateDependentOn_id():void
    {
        if (model_internal::__idIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOf_id = null;
            model_internal::calculate_idIsValid();
        }
    }
    public function invalidateDependentOnTarget():void
    {
        if (model_internal::_targetIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfTarget = null;
            model_internal::calculateTargetIsValid();
        }
    }
    public function invalidateDependentOnAction():void
    {
        if (model_internal::_actionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfAction = null;
            model_internal::calculateActionIsValid();
        }
    }
    public function invalidateDependentOnActor():void
    {
        if (model_internal::_actorIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfActor = null;
            model_internal::calculateActorIsValid();
        }
    }
    public function invalidateDependentOnGroup():void
    {
        if (model_internal::_groupIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfGroup = null;
            model_internal::calculateGroupIsValid();
        }
    }
    public function invalidateDependentOnUser():void
    {
        if (model_internal::_userIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfUser = null;
            model_internal::calculateUserIsValid();
        }
    }
    public function invalidateDependentOnAgent():void
    {
        if (model_internal::_agentIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfAgent = null;
            model_internal::calculateAgentIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get operationStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get operationValidator() : StyleValidator
    {
        return model_internal::_operationValidator;
    }

    model_internal function set _operationIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_operationIsValid;         
        if (oldValue !== value)
        {
            model_internal::_operationIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "operationIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get operationIsValid():Boolean
    {
        if (!model_internal::_operationIsValidCacheInitialized)
        {
            model_internal::calculateOperationIsValid();
        }

        return model_internal::_operationIsValid;
    }

    model_internal function calculateOperationIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_operationValidator.validate(model_internal::_instance.operation)
        model_internal::_operationIsValid_der = (valRes.results == null);
        model_internal::_operationIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::operationValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::operationValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get operationValidationFailureMessages():Array
    {
        if (model_internal::_operationValidationFailureMessages == null)
            model_internal::calculateOperationIsValid();

        return _operationValidationFailureMessages;
    }

    model_internal function set operationValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_operationValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_operationValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "operationValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get _idStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get _idValidator() : StyleValidator
    {
        return model_internal::__idValidator;
    }

    model_internal function set __idIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::__idIsValid;         
        if (oldValue !== value)
        {
            model_internal::__idIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_idIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get _idIsValid():Boolean
    {
        if (!model_internal::__idIsValidCacheInitialized)
        {
            model_internal::calculate_idIsValid();
        }

        return model_internal::__idIsValid;
    }

    model_internal function calculate_idIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::__idValidator.validate(model_internal::_instance._id)
        model_internal::__idIsValid_der = (valRes.results == null);
        model_internal::__idIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::_idValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::_idValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get _idValidationFailureMessages():Array
    {
        if (model_internal::__idValidationFailureMessages == null)
            model_internal::calculate_idIsValid();

        return __idValidationFailureMessages;
    }

    model_internal function set _idValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::__idValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::__idValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_idValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get targetStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get targetValidator() : StyleValidator
    {
        return model_internal::_targetValidator;
    }

    model_internal function set _targetIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_targetIsValid;         
        if (oldValue !== value)
        {
            model_internal::_targetIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "targetIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get targetIsValid():Boolean
    {
        if (!model_internal::_targetIsValidCacheInitialized)
        {
            model_internal::calculateTargetIsValid();
        }

        return model_internal::_targetIsValid;
    }

    model_internal function calculateTargetIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_targetValidator.validate(model_internal::_instance.target)
        model_internal::_targetIsValid_der = (valRes.results == null);
        model_internal::_targetIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::targetValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::targetValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get targetValidationFailureMessages():Array
    {
        if (model_internal::_targetValidationFailureMessages == null)
            model_internal::calculateTargetIsValid();

        return _targetValidationFailureMessages;
    }

    model_internal function set targetValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_targetValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_targetValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "targetValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get actionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get actionValidator() : StyleValidator
    {
        return model_internal::_actionValidator;
    }

    model_internal function set _actionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_actionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_actionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "actionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get actionIsValid():Boolean
    {
        if (!model_internal::_actionIsValidCacheInitialized)
        {
            model_internal::calculateActionIsValid();
        }

        return model_internal::_actionIsValid;
    }

    model_internal function calculateActionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_actionValidator.validate(model_internal::_instance.action)
        model_internal::_actionIsValid_der = (valRes.results == null);
        model_internal::_actionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::actionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::actionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get actionValidationFailureMessages():Array
    {
        if (model_internal::_actionValidationFailureMessages == null)
            model_internal::calculateActionIsValid();

        return _actionValidationFailureMessages;
    }

    model_internal function set actionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_actionValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_actionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "actionValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get actorStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get actorValidator() : StyleValidator
    {
        return model_internal::_actorValidator;
    }

    model_internal function set _actorIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_actorIsValid;         
        if (oldValue !== value)
        {
            model_internal::_actorIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "actorIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get actorIsValid():Boolean
    {
        if (!model_internal::_actorIsValidCacheInitialized)
        {
            model_internal::calculateActorIsValid();
        }

        return model_internal::_actorIsValid;
    }

    model_internal function calculateActorIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_actorValidator.validate(model_internal::_instance.actor)
        model_internal::_actorIsValid_der = (valRes.results == null);
        model_internal::_actorIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::actorValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::actorValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get actorValidationFailureMessages():Array
    {
        if (model_internal::_actorValidationFailureMessages == null)
            model_internal::calculateActorIsValid();

        return _actorValidationFailureMessages;
    }

    model_internal function set actorValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_actorValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_actorValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "actorValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get groupStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get groupValidator() : StyleValidator
    {
        return model_internal::_groupValidator;
    }

    model_internal function set _groupIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_groupIsValid;         
        if (oldValue !== value)
        {
            model_internal::_groupIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "groupIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get groupIsValid():Boolean
    {
        if (!model_internal::_groupIsValidCacheInitialized)
        {
            model_internal::calculateGroupIsValid();
        }

        return model_internal::_groupIsValid;
    }

    model_internal function calculateGroupIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_groupValidator.validate(model_internal::_instance.group)
        model_internal::_groupIsValid_der = (valRes.results == null);
        model_internal::_groupIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::groupValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::groupValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get groupValidationFailureMessages():Array
    {
        if (model_internal::_groupValidationFailureMessages == null)
            model_internal::calculateGroupIsValid();

        return _groupValidationFailureMessages;
    }

    model_internal function set groupValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_groupValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_groupValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "groupValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get userStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get userValidator() : StyleValidator
    {
        return model_internal::_userValidator;
    }

    model_internal function set _userIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_userIsValid;         
        if (oldValue !== value)
        {
            model_internal::_userIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "userIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get userIsValid():Boolean
    {
        if (!model_internal::_userIsValidCacheInitialized)
        {
            model_internal::calculateUserIsValid();
        }

        return model_internal::_userIsValid;
    }

    model_internal function calculateUserIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_userValidator.validate(model_internal::_instance.user)
        model_internal::_userIsValid_der = (valRes.results == null);
        model_internal::_userIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::userValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::userValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get userValidationFailureMessages():Array
    {
        if (model_internal::_userValidationFailureMessages == null)
            model_internal::calculateUserIsValid();

        return _userValidationFailureMessages;
    }

    model_internal function set userValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_userValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_userValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "userValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get agentStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get agentValidator() : StyleValidator
    {
        return model_internal::_agentValidator;
    }

    model_internal function set _agentIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_agentIsValid;         
        if (oldValue !== value)
        {
            model_internal::_agentIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "agentIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get agentIsValid():Boolean
    {
        if (!model_internal::_agentIsValidCacheInitialized)
        {
            model_internal::calculateAgentIsValid();
        }

        return model_internal::_agentIsValid;
    }

    model_internal function calculateAgentIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_agentValidator.validate(model_internal::_instance.agent)
        model_internal::_agentIsValid_der = (valRes.results == null);
        model_internal::_agentIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::agentValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::agentValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get agentValidationFailureMessages():Array
    {
        if (model_internal::_agentValidationFailureMessages == null)
            model_internal::calculateAgentIsValid();

        return _agentValidationFailureMessages;
    }

    model_internal function set agentValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_agentValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_agentValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "agentValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }


     /**
     * 
     * @inheritDoc 
     */ 
     override public function getStyle(propertyName:String):com.adobe.fiber.styles.IStyle
     {
         switch(propertyName)
         {
            default:
            {
                return null;
            }
         }
     }
     
     /**
     * 
     * @inheritDoc 
     *  
     */  
     override public function getPropertyValidationFailureMessages(propertyName:String):Array
     {
         switch(propertyName)
         {
            case("operation"):
            {
                return operationValidationFailureMessages;
            }
            case("_id"):
            {
                return _idValidationFailureMessages;
            }
            case("target"):
            {
                return targetValidationFailureMessages;
            }
            case("action"):
            {
                return actionValidationFailureMessages;
            }
            case("actor"):
            {
                return actorValidationFailureMessages;
            }
            case("group"):
            {
                return groupValidationFailureMessages;
            }
            case("user"):
            {
                return userValidationFailureMessages;
            }
            case("agent"):
            {
                return agentValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
