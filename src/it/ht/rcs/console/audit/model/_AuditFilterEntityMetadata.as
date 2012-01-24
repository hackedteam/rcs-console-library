
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

    model_internal static var allProperties:Array = new Array("operation_name", "_id", "target_name", "action", "actor", "group_name", "user_name", "agent_name");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("operation_name", "_id", "target_name", "action", "actor", "group_name", "user_name", "agent_name");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("operation_name", "_id", "target_name", "action", "actor", "group_name", "user_name", "agent_name");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("operation_name", "_id", "target_name", "action", "actor", "group_name", "user_name", "agent_name");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("operation_name", "_id", "target_name", "action", "actor", "group_name", "user_name", "agent_name");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("operation_name", "target_name", "action", "actor", "group_name", "user_name", "agent_name");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "AuditFilter";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _operation_nameIsValid:Boolean;
    model_internal var _operation_nameValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _operation_nameIsValidCacheInitialized:Boolean = false;
    model_internal var _operation_nameValidationFailureMessages:Array;
    
    model_internal var __idIsValid:Boolean;
    model_internal var __idValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var __idIsValidCacheInitialized:Boolean = false;
    model_internal var __idValidationFailureMessages:Array;
    
    model_internal var _target_nameIsValid:Boolean;
    model_internal var _target_nameValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _target_nameIsValidCacheInitialized:Boolean = false;
    model_internal var _target_nameValidationFailureMessages:Array;
    
    model_internal var _actionIsValid:Boolean;
    model_internal var _actionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _actionIsValidCacheInitialized:Boolean = false;
    model_internal var _actionValidationFailureMessages:Array;
    
    model_internal var _actorIsValid:Boolean;
    model_internal var _actorValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _actorIsValidCacheInitialized:Boolean = false;
    model_internal var _actorValidationFailureMessages:Array;
    
    model_internal var _group_nameIsValid:Boolean;
    model_internal var _group_nameValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _group_nameIsValidCacheInitialized:Boolean = false;
    model_internal var _group_nameValidationFailureMessages:Array;
    
    model_internal var _user_nameIsValid:Boolean;
    model_internal var _user_nameValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _user_nameIsValidCacheInitialized:Boolean = false;
    model_internal var _user_nameValidationFailureMessages:Array;
    
    model_internal var _agent_nameIsValid:Boolean;
    model_internal var _agent_nameValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _agent_nameIsValidCacheInitialized:Boolean = false;
    model_internal var _agent_nameValidationFailureMessages:Array;

    model_internal var _instance:_Super_AuditFilter;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _AuditFilterEntityMetadata(value : _Super_AuditFilter)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["operation_name"] = new Array();
            model_internal::dependentsOnMap["_id"] = new Array();
            model_internal::dependentsOnMap["target_name"] = new Array();
            model_internal::dependentsOnMap["action"] = new Array();
            model_internal::dependentsOnMap["actor"] = new Array();
            model_internal::dependentsOnMap["group_name"] = new Array();
            model_internal::dependentsOnMap["user_name"] = new Array();
            model_internal::dependentsOnMap["agent_name"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
            model_internal::collectionBaseMap["operation_name"] = "String";
            model_internal::collectionBaseMap["target_name"] = "String";
            model_internal::collectionBaseMap["action"] = "String";
            model_internal::collectionBaseMap["actor"] = "String";
            model_internal::collectionBaseMap["group_name"] = "String";
            model_internal::collectionBaseMap["user_name"] = "String";
            model_internal::collectionBaseMap["agent_name"] = "String";
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["operation_name"] = "ArrayCollection";
        model_internal::propertyTypeMap["_id"] = "String";
        model_internal::propertyTypeMap["target_name"] = "ArrayCollection";
        model_internal::propertyTypeMap["action"] = "ArrayCollection";
        model_internal::propertyTypeMap["actor"] = "ArrayCollection";
        model_internal::propertyTypeMap["group_name"] = "ArrayCollection";
        model_internal::propertyTypeMap["user_name"] = "ArrayCollection";
        model_internal::propertyTypeMap["agent_name"] = "ArrayCollection";

        model_internal::_instance = value;
        model_internal::_operation_nameValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForOperation_name);
        model_internal::_operation_nameValidator.required = true;
        model_internal::_operation_nameValidator.requiredFieldError = "operation_name is required";
        //model_internal::_operation_nameValidator.source = model_internal::_instance;
        //model_internal::_operation_nameValidator.property = "operation_name";
        model_internal::__idValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationFor_id);
        model_internal::__idValidator.required = true;
        model_internal::__idValidator.requiredFieldError = "_id is required";
        //model_internal::__idValidator.source = model_internal::_instance;
        //model_internal::__idValidator.property = "_id";
        model_internal::_target_nameValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForTarget_name);
        model_internal::_target_nameValidator.required = true;
        model_internal::_target_nameValidator.requiredFieldError = "target_name is required";
        //model_internal::_target_nameValidator.source = model_internal::_instance;
        //model_internal::_target_nameValidator.property = "target_name";
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
        model_internal::_group_nameValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForGroup_name);
        model_internal::_group_nameValidator.required = true;
        model_internal::_group_nameValidator.requiredFieldError = "group_name is required";
        //model_internal::_group_nameValidator.source = model_internal::_instance;
        //model_internal::_group_nameValidator.property = "group_name";
        model_internal::_user_nameValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForUser_name);
        model_internal::_user_nameValidator.required = true;
        model_internal::_user_nameValidator.requiredFieldError = "user_name is required";
        //model_internal::_user_nameValidator.source = model_internal::_instance;
        //model_internal::_user_nameValidator.property = "user_name";
        model_internal::_agent_nameValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForAgent_name);
        model_internal::_agent_nameValidator.required = true;
        model_internal::_agent_nameValidator.requiredFieldError = "agent_name is required";
        //model_internal::_agent_nameValidator.source = model_internal::_instance;
        //model_internal::_agent_nameValidator.property = "agent_name";
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
    public function get isOperation_nameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get is_idAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTarget_nameAvailable():Boolean
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
    public function get isGroup_nameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUser_nameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAgent_nameAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnOperation_name():void
    {
        if (model_internal::_operation_nameIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfOperation_name = null;
            model_internal::calculateOperation_nameIsValid();
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
    public function invalidateDependentOnTarget_name():void
    {
        if (model_internal::_target_nameIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfTarget_name = null;
            model_internal::calculateTarget_nameIsValid();
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
    public function invalidateDependentOnGroup_name():void
    {
        if (model_internal::_group_nameIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfGroup_name = null;
            model_internal::calculateGroup_nameIsValid();
        }
    }
    public function invalidateDependentOnUser_name():void
    {
        if (model_internal::_user_nameIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfUser_name = null;
            model_internal::calculateUser_nameIsValid();
        }
    }
    public function invalidateDependentOnAgent_name():void
    {
        if (model_internal::_agent_nameIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfAgent_name = null;
            model_internal::calculateAgent_nameIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get operation_nameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get operation_nameValidator() : StyleValidator
    {
        return model_internal::_operation_nameValidator;
    }

    model_internal function set _operation_nameIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_operation_nameIsValid;         
        if (oldValue !== value)
        {
            model_internal::_operation_nameIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "operation_nameIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get operation_nameIsValid():Boolean
    {
        if (!model_internal::_operation_nameIsValidCacheInitialized)
        {
            model_internal::calculateOperation_nameIsValid();
        }

        return model_internal::_operation_nameIsValid;
    }

    model_internal function calculateOperation_nameIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_operation_nameValidator.validate(model_internal::_instance.operation_name)
        model_internal::_operation_nameIsValid_der = (valRes.results == null);
        model_internal::_operation_nameIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::operation_nameValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::operation_nameValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get operation_nameValidationFailureMessages():Array
    {
        if (model_internal::_operation_nameValidationFailureMessages == null)
            model_internal::calculateOperation_nameIsValid();

        return _operation_nameValidationFailureMessages;
    }

    model_internal function set operation_nameValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_operation_nameValidationFailureMessages;

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
            model_internal::_operation_nameValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "operation_nameValidationFailureMessages", oldValue, value));
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
    public function get target_nameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get target_nameValidator() : StyleValidator
    {
        return model_internal::_target_nameValidator;
    }

    model_internal function set _target_nameIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_target_nameIsValid;         
        if (oldValue !== value)
        {
            model_internal::_target_nameIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "target_nameIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get target_nameIsValid():Boolean
    {
        if (!model_internal::_target_nameIsValidCacheInitialized)
        {
            model_internal::calculateTarget_nameIsValid();
        }

        return model_internal::_target_nameIsValid;
    }

    model_internal function calculateTarget_nameIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_target_nameValidator.validate(model_internal::_instance.target_name)
        model_internal::_target_nameIsValid_der = (valRes.results == null);
        model_internal::_target_nameIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::target_nameValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::target_nameValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get target_nameValidationFailureMessages():Array
    {
        if (model_internal::_target_nameValidationFailureMessages == null)
            model_internal::calculateTarget_nameIsValid();

        return _target_nameValidationFailureMessages;
    }

    model_internal function set target_nameValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_target_nameValidationFailureMessages;

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
            model_internal::_target_nameValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "target_nameValidationFailureMessages", oldValue, value));
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
    public function get group_nameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get group_nameValidator() : StyleValidator
    {
        return model_internal::_group_nameValidator;
    }

    model_internal function set _group_nameIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_group_nameIsValid;         
        if (oldValue !== value)
        {
            model_internal::_group_nameIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "group_nameIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get group_nameIsValid():Boolean
    {
        if (!model_internal::_group_nameIsValidCacheInitialized)
        {
            model_internal::calculateGroup_nameIsValid();
        }

        return model_internal::_group_nameIsValid;
    }

    model_internal function calculateGroup_nameIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_group_nameValidator.validate(model_internal::_instance.group_name)
        model_internal::_group_nameIsValid_der = (valRes.results == null);
        model_internal::_group_nameIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::group_nameValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::group_nameValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get group_nameValidationFailureMessages():Array
    {
        if (model_internal::_group_nameValidationFailureMessages == null)
            model_internal::calculateGroup_nameIsValid();

        return _group_nameValidationFailureMessages;
    }

    model_internal function set group_nameValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_group_nameValidationFailureMessages;

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
            model_internal::_group_nameValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "group_nameValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get user_nameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get user_nameValidator() : StyleValidator
    {
        return model_internal::_user_nameValidator;
    }

    model_internal function set _user_nameIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_user_nameIsValid;         
        if (oldValue !== value)
        {
            model_internal::_user_nameIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "user_nameIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get user_nameIsValid():Boolean
    {
        if (!model_internal::_user_nameIsValidCacheInitialized)
        {
            model_internal::calculateUser_nameIsValid();
        }

        return model_internal::_user_nameIsValid;
    }

    model_internal function calculateUser_nameIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_user_nameValidator.validate(model_internal::_instance.user_name)
        model_internal::_user_nameIsValid_der = (valRes.results == null);
        model_internal::_user_nameIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::user_nameValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::user_nameValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get user_nameValidationFailureMessages():Array
    {
        if (model_internal::_user_nameValidationFailureMessages == null)
            model_internal::calculateUser_nameIsValid();

        return _user_nameValidationFailureMessages;
    }

    model_internal function set user_nameValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_user_nameValidationFailureMessages;

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
            model_internal::_user_nameValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "user_nameValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get agent_nameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get agent_nameValidator() : StyleValidator
    {
        return model_internal::_agent_nameValidator;
    }

    model_internal function set _agent_nameIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_agent_nameIsValid;         
        if (oldValue !== value)
        {
            model_internal::_agent_nameIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "agent_nameIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get agent_nameIsValid():Boolean
    {
        if (!model_internal::_agent_nameIsValidCacheInitialized)
        {
            model_internal::calculateAgent_nameIsValid();
        }

        return model_internal::_agent_nameIsValid;
    }

    model_internal function calculateAgent_nameIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_agent_nameValidator.validate(model_internal::_instance.agent_name)
        model_internal::_agent_nameIsValid_der = (valRes.results == null);
        model_internal::_agent_nameIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::agent_nameValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::agent_nameValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get agent_nameValidationFailureMessages():Array
    {
        if (model_internal::_agent_nameValidationFailureMessages == null)
            model_internal::calculateAgent_nameIsValid();

        return _agent_nameValidationFailureMessages;
    }

    model_internal function set agent_nameValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_agent_nameValidationFailureMessages;

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
            model_internal::_agent_nameValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "agent_nameValidationFailureMessages", oldValue, value));
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
            case("operation_name"):
            {
                return operation_nameValidationFailureMessages;
            }
            case("_id"):
            {
                return _idValidationFailureMessages;
            }
            case("target_name"):
            {
                return target_nameValidationFailureMessages;
            }
            case("action"):
            {
                return actionValidationFailureMessages;
            }
            case("actor"):
            {
                return actorValidationFailureMessages;
            }
            case("group_name"):
            {
                return group_nameValidationFailureMessages;
            }
            case("user_name"):
            {
                return user_nameValidationFailureMessages;
            }
            case("agent_name"):
            {
                return agent_nameValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
