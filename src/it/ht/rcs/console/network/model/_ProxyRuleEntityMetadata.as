
/**
 * This is a generated class and is not intended for modification.  
 */
package it.ht.rcs.console.network.model
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
internal class _ProxyRuleEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("action_param", "enabled", "resource", "updated_at", "_id", "ident", "action", "target", "created_at", "disable_sync", "ident_param", "probability", "_mid");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("action_param", "enabled", "resource", "updated_at", "_id", "ident", "action", "target", "created_at", "disable_sync", "ident_param", "probability", "_mid");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("action_param", "enabled", "resource", "updated_at", "_id", "ident", "action", "target", "created_at", "disable_sync", "ident_param", "probability", "_mid");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("action_param", "enabled", "resource", "updated_at", "_id", "ident", "action", "target", "created_at", "disable_sync", "ident_param", "probability", "_mid");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("action_param", "enabled", "resource", "updated_at", "_id", "ident", "action", "target", "created_at", "disable_sync", "ident_param", "probability", "_mid");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("target");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "ProxyRule";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _action_paramIsValid:Boolean;
    model_internal var _action_paramValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _action_paramIsValidCacheInitialized:Boolean = false;
    model_internal var _action_paramValidationFailureMessages:Array;
    
    model_internal var _resourceIsValid:Boolean;
    model_internal var _resourceValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _resourceIsValidCacheInitialized:Boolean = false;
    model_internal var _resourceValidationFailureMessages:Array;
    
    model_internal var _updated_atIsValid:Boolean;
    model_internal var _updated_atValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _updated_atIsValidCacheInitialized:Boolean = false;
    model_internal var _updated_atValidationFailureMessages:Array;
    
    model_internal var __idIsValid:Boolean;
    model_internal var __idValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var __idIsValidCacheInitialized:Boolean = false;
    model_internal var __idValidationFailureMessages:Array;
    
    model_internal var _identIsValid:Boolean;
    model_internal var _identValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _identIsValidCacheInitialized:Boolean = false;
    model_internal var _identValidationFailureMessages:Array;
    
    model_internal var _actionIsValid:Boolean;
    model_internal var _actionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _actionIsValidCacheInitialized:Boolean = false;
    model_internal var _actionValidationFailureMessages:Array;
    
    model_internal var _targetIsValid:Boolean;
    model_internal var _targetValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _targetIsValidCacheInitialized:Boolean = false;
    model_internal var _targetValidationFailureMessages:Array;
    
    model_internal var _created_atIsValid:Boolean;
    model_internal var _created_atValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _created_atIsValidCacheInitialized:Boolean = false;
    model_internal var _created_atValidationFailureMessages:Array;
    
    model_internal var _ident_paramIsValid:Boolean;
    model_internal var _ident_paramValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _ident_paramIsValidCacheInitialized:Boolean = false;
    model_internal var _ident_paramValidationFailureMessages:Array;

    model_internal var _instance:_Super_ProxyRule;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _ProxyRuleEntityMetadata(value : _Super_ProxyRule)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["action_param"] = new Array();
            model_internal::dependentsOnMap["enabled"] = new Array();
            model_internal::dependentsOnMap["resource"] = new Array();
            model_internal::dependentsOnMap["updated_at"] = new Array();
            model_internal::dependentsOnMap["_id"] = new Array();
            model_internal::dependentsOnMap["ident"] = new Array();
            model_internal::dependentsOnMap["action"] = new Array();
            model_internal::dependentsOnMap["target"] = new Array();
            model_internal::dependentsOnMap["created_at"] = new Array();
            model_internal::dependentsOnMap["disable_sync"] = new Array();
            model_internal::dependentsOnMap["ident_param"] = new Array();
            model_internal::dependentsOnMap["probability"] = new Array();
            model_internal::dependentsOnMap["_mid"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
            model_internal::collectionBaseMap["target"] = "String";
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["action_param"] = "String";
        model_internal::propertyTypeMap["enabled"] = "Boolean";
        model_internal::propertyTypeMap["resource"] = "String";
        model_internal::propertyTypeMap["updated_at"] = "String";
        model_internal::propertyTypeMap["_id"] = "String";
        model_internal::propertyTypeMap["ident"] = "String";
        model_internal::propertyTypeMap["action"] = "String";
        model_internal::propertyTypeMap["target"] = "ArrayCollection";
        model_internal::propertyTypeMap["created_at"] = "String";
        model_internal::propertyTypeMap["disable_sync"] = "Boolean";
        model_internal::propertyTypeMap["ident_param"] = "String";
        model_internal::propertyTypeMap["probability"] = "int";
        model_internal::propertyTypeMap["_mid"] = "int";

        model_internal::_instance = value;
        model_internal::_action_paramValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForAction_param);
        model_internal::_action_paramValidator.required = true;
        model_internal::_action_paramValidator.requiredFieldError = "action_param is required";
        //model_internal::_action_paramValidator.source = model_internal::_instance;
        //model_internal::_action_paramValidator.property = "action_param";
        model_internal::_resourceValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForResource);
        model_internal::_resourceValidator.required = true;
        model_internal::_resourceValidator.requiredFieldError = "resource is required";
        //model_internal::_resourceValidator.source = model_internal::_instance;
        //model_internal::_resourceValidator.property = "resource";
        model_internal::_updated_atValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForUpdated_at);
        model_internal::_updated_atValidator.required = true;
        model_internal::_updated_atValidator.requiredFieldError = "updated_at is required";
        //model_internal::_updated_atValidator.source = model_internal::_instance;
        //model_internal::_updated_atValidator.property = "updated_at";
        model_internal::__idValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationFor_id);
        model_internal::__idValidator.required = true;
        model_internal::__idValidator.requiredFieldError = "_id is required";
        //model_internal::__idValidator.source = model_internal::_instance;
        //model_internal::__idValidator.property = "_id";
        model_internal::_identValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForIdent);
        model_internal::_identValidator.required = true;
        model_internal::_identValidator.requiredFieldError = "ident is required";
        //model_internal::_identValidator.source = model_internal::_instance;
        //model_internal::_identValidator.property = "ident";
        model_internal::_actionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForAction);
        model_internal::_actionValidator.required = true;
        model_internal::_actionValidator.requiredFieldError = "action is required";
        //model_internal::_actionValidator.source = model_internal::_instance;
        //model_internal::_actionValidator.property = "action";
        model_internal::_targetValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForTarget);
        model_internal::_targetValidator.required = true;
        model_internal::_targetValidator.requiredFieldError = "target is required";
        //model_internal::_targetValidator.source = model_internal::_instance;
        //model_internal::_targetValidator.property = "target";
        model_internal::_created_atValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCreated_at);
        model_internal::_created_atValidator.required = true;
        model_internal::_created_atValidator.requiredFieldError = "created_at is required";
        //model_internal::_created_atValidator.source = model_internal::_instance;
        //model_internal::_created_atValidator.property = "created_at";
        model_internal::_ident_paramValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForIdent_param);
        model_internal::_ident_paramValidator.required = true;
        model_internal::_ident_paramValidator.requiredFieldError = "ident_param is required";
        //model_internal::_ident_paramValidator.source = model_internal::_instance;
        //model_internal::_ident_paramValidator.property = "ident_param";
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
            throw new Error(propertyName + " is not a data property of entity ProxyRule");
            
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
            throw new Error(propertyName + " is not a collection property of entity ProxyRule");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of ProxyRule");

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
            throw new Error(propertyName + " does not exist for entity ProxyRule");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity ProxyRule");
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
            throw new Error(propertyName + " does not exist for entity ProxyRule");
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
    public function get isAction_paramAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isEnabledAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isResourceAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUpdated_atAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get is_idAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIdentAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isActionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTargetAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCreated_atAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDisable_syncAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIdent_paramAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isProbabilityAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get is_midAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnAction_param():void
    {
        if (model_internal::_action_paramIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfAction_param = null;
            model_internal::calculateAction_paramIsValid();
        }
    }
    public function invalidateDependentOnResource():void
    {
        if (model_internal::_resourceIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfResource = null;
            model_internal::calculateResourceIsValid();
        }
    }
    public function invalidateDependentOnUpdated_at():void
    {
        if (model_internal::_updated_atIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfUpdated_at = null;
            model_internal::calculateUpdated_atIsValid();
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
    public function invalidateDependentOnIdent():void
    {
        if (model_internal::_identIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfIdent = null;
            model_internal::calculateIdentIsValid();
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
    public function invalidateDependentOnTarget():void
    {
        if (model_internal::_targetIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfTarget = null;
            model_internal::calculateTargetIsValid();
        }
    }
    public function invalidateDependentOnCreated_at():void
    {
        if (model_internal::_created_atIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCreated_at = null;
            model_internal::calculateCreated_atIsValid();
        }
    }
    public function invalidateDependentOnIdent_param():void
    {
        if (model_internal::_ident_paramIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfIdent_param = null;
            model_internal::calculateIdent_paramIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get action_paramStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get action_paramValidator() : StyleValidator
    {
        return model_internal::_action_paramValidator;
    }

    model_internal function set _action_paramIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_action_paramIsValid;         
        if (oldValue !== value)
        {
            model_internal::_action_paramIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "action_paramIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get action_paramIsValid():Boolean
    {
        if (!model_internal::_action_paramIsValidCacheInitialized)
        {
            model_internal::calculateAction_paramIsValid();
        }

        return model_internal::_action_paramIsValid;
    }

    model_internal function calculateAction_paramIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_action_paramValidator.validate(model_internal::_instance.action_param)
        model_internal::_action_paramIsValid_der = (valRes.results == null);
        model_internal::_action_paramIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::action_paramValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::action_paramValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get action_paramValidationFailureMessages():Array
    {
        if (model_internal::_action_paramValidationFailureMessages == null)
            model_internal::calculateAction_paramIsValid();

        return _action_paramValidationFailureMessages;
    }

    model_internal function set action_paramValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_action_paramValidationFailureMessages;

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
            model_internal::_action_paramValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "action_paramValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get enabledStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get resourceStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get resourceValidator() : StyleValidator
    {
        return model_internal::_resourceValidator;
    }

    model_internal function set _resourceIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_resourceIsValid;         
        if (oldValue !== value)
        {
            model_internal::_resourceIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "resourceIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get resourceIsValid():Boolean
    {
        if (!model_internal::_resourceIsValidCacheInitialized)
        {
            model_internal::calculateResourceIsValid();
        }

        return model_internal::_resourceIsValid;
    }

    model_internal function calculateResourceIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_resourceValidator.validate(model_internal::_instance.resource)
        model_internal::_resourceIsValid_der = (valRes.results == null);
        model_internal::_resourceIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::resourceValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::resourceValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get resourceValidationFailureMessages():Array
    {
        if (model_internal::_resourceValidationFailureMessages == null)
            model_internal::calculateResourceIsValid();

        return _resourceValidationFailureMessages;
    }

    model_internal function set resourceValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_resourceValidationFailureMessages;

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
            model_internal::_resourceValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "resourceValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get updated_atStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get updated_atValidator() : StyleValidator
    {
        return model_internal::_updated_atValidator;
    }

    model_internal function set _updated_atIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_updated_atIsValid;         
        if (oldValue !== value)
        {
            model_internal::_updated_atIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "updated_atIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get updated_atIsValid():Boolean
    {
        if (!model_internal::_updated_atIsValidCacheInitialized)
        {
            model_internal::calculateUpdated_atIsValid();
        }

        return model_internal::_updated_atIsValid;
    }

    model_internal function calculateUpdated_atIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_updated_atValidator.validate(model_internal::_instance.updated_at)
        model_internal::_updated_atIsValid_der = (valRes.results == null);
        model_internal::_updated_atIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::updated_atValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::updated_atValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get updated_atValidationFailureMessages():Array
    {
        if (model_internal::_updated_atValidationFailureMessages == null)
            model_internal::calculateUpdated_atIsValid();

        return _updated_atValidationFailureMessages;
    }

    model_internal function set updated_atValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_updated_atValidationFailureMessages;

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
            model_internal::_updated_atValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "updated_atValidationFailureMessages", oldValue, value));
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
    public function get identStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get identValidator() : StyleValidator
    {
        return model_internal::_identValidator;
    }

    model_internal function set _identIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_identIsValid;         
        if (oldValue !== value)
        {
            model_internal::_identIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "identIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get identIsValid():Boolean
    {
        if (!model_internal::_identIsValidCacheInitialized)
        {
            model_internal::calculateIdentIsValid();
        }

        return model_internal::_identIsValid;
    }

    model_internal function calculateIdentIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_identValidator.validate(model_internal::_instance.ident)
        model_internal::_identIsValid_der = (valRes.results == null);
        model_internal::_identIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::identValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::identValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get identValidationFailureMessages():Array
    {
        if (model_internal::_identValidationFailureMessages == null)
            model_internal::calculateIdentIsValid();

        return _identValidationFailureMessages;
    }

    model_internal function set identValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_identValidationFailureMessages;

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
            model_internal::_identValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "identValidationFailureMessages", oldValue, value));
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
    public function get created_atStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get created_atValidator() : StyleValidator
    {
        return model_internal::_created_atValidator;
    }

    model_internal function set _created_atIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_created_atIsValid;         
        if (oldValue !== value)
        {
            model_internal::_created_atIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "created_atIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get created_atIsValid():Boolean
    {
        if (!model_internal::_created_atIsValidCacheInitialized)
        {
            model_internal::calculateCreated_atIsValid();
        }

        return model_internal::_created_atIsValid;
    }

    model_internal function calculateCreated_atIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_created_atValidator.validate(model_internal::_instance.created_at)
        model_internal::_created_atIsValid_der = (valRes.results == null);
        model_internal::_created_atIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::created_atValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::created_atValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get created_atValidationFailureMessages():Array
    {
        if (model_internal::_created_atValidationFailureMessages == null)
            model_internal::calculateCreated_atIsValid();

        return _created_atValidationFailureMessages;
    }

    model_internal function set created_atValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_created_atValidationFailureMessages;

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
            model_internal::_created_atValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "created_atValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get disable_syncStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get ident_paramStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get ident_paramValidator() : StyleValidator
    {
        return model_internal::_ident_paramValidator;
    }

    model_internal function set _ident_paramIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_ident_paramIsValid;         
        if (oldValue !== value)
        {
            model_internal::_ident_paramIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ident_paramIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get ident_paramIsValid():Boolean
    {
        if (!model_internal::_ident_paramIsValidCacheInitialized)
        {
            model_internal::calculateIdent_paramIsValid();
        }

        return model_internal::_ident_paramIsValid;
    }

    model_internal function calculateIdent_paramIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_ident_paramValidator.validate(model_internal::_instance.ident_param)
        model_internal::_ident_paramIsValid_der = (valRes.results == null);
        model_internal::_ident_paramIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::ident_paramValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::ident_paramValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get ident_paramValidationFailureMessages():Array
    {
        if (model_internal::_ident_paramValidationFailureMessages == null)
            model_internal::calculateIdent_paramIsValid();

        return _ident_paramValidationFailureMessages;
    }

    model_internal function set ident_paramValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_ident_paramValidationFailureMessages;

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
            model_internal::_ident_paramValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ident_paramValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get probabilityStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get _midStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
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
            case("action_param"):
            {
                return action_paramValidationFailureMessages;
            }
            case("resource"):
            {
                return resourceValidationFailureMessages;
            }
            case("updated_at"):
            {
                return updated_atValidationFailureMessages;
            }
            case("_id"):
            {
                return _idValidationFailureMessages;
            }
            case("ident"):
            {
                return identValidationFailureMessages;
            }
            case("action"):
            {
                return actionValidationFailureMessages;
            }
            case("target"):
            {
                return targetValidationFailureMessages;
            }
            case("created_at"):
            {
                return created_atValidationFailureMessages;
            }
            case("ident_param"):
            {
                return ident_paramValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
