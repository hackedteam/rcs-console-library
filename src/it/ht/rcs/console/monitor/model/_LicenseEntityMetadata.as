
/**
 * This is a generated class and is not intended for modification.  
 */
package it.ht.rcs.console.monitor.model
{
import com.adobe.fiber.styles.IStyle;
import com.adobe.fiber.styles.Style;
import com.adobe.fiber.styles.StyleValidator;
import com.adobe.fiber.valueobjects.AbstractEntityMetadata;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import it.ht.rcs.console.monitor.model.LicenseAgents;
import it.ht.rcs.console.monitor.model.LicenseCollectors;
import mx.events.ValidationResultEvent;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _LicenseEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("collectors", "users", "shards", "ipa", "exploits", "agents", "alerting", "correlation", "type", "serial", "rmi");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("shards", "exploits");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("collectors", "users", "shards", "ipa", "exploits", "agents", "alerting", "correlation", "type", "serial", "rmi");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("collectors", "users", "shards", "ipa", "exploits", "agents", "alerting", "correlation", "type", "serial", "rmi");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("collectors", "users", "shards", "ipa", "exploits", "agents", "alerting", "correlation", "type", "serial", "rmi");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "License";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _shardsIsValid:Boolean;
    model_internal var _shardsValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _shardsIsValidCacheInitialized:Boolean = false;
    model_internal var _shardsValidationFailureMessages:Array;
    
    model_internal var _exploitsIsValid:Boolean;
    model_internal var _exploitsValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _exploitsIsValidCacheInitialized:Boolean = false;
    model_internal var _exploitsValidationFailureMessages:Array;

    model_internal var _instance:_Super_License;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _LicenseEntityMetadata(value : _Super_License)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["collectors"] = new Array();
            model_internal::dependentsOnMap["users"] = new Array();
            model_internal::dependentsOnMap["shards"] = new Array();
            model_internal::dependentsOnMap["ipa"] = new Array();
            model_internal::dependentsOnMap["exploits"] = new Array();
            model_internal::dependentsOnMap["agents"] = new Array();
            model_internal::dependentsOnMap["alerting"] = new Array();
            model_internal::dependentsOnMap["correlation"] = new Array();
            model_internal::dependentsOnMap["type"] = new Array();
            model_internal::dependentsOnMap["serial"] = new Array();
            model_internal::dependentsOnMap["rmi"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["collectors"] = "it.ht.rcs.console.monitor.model.LicenseCollectors";
        model_internal::propertyTypeMap["users"] = "Object";
        model_internal::propertyTypeMap["shards"] = "Object";
        model_internal::propertyTypeMap["ipa"] = "Object";
        model_internal::propertyTypeMap["exploits"] = "String";
        model_internal::propertyTypeMap["agents"] = "it.ht.rcs.console.monitor.model.LicenseAgents";
        model_internal::propertyTypeMap["alerting"] = "Boolean";
        model_internal::propertyTypeMap["correlation"] = "Boolean";
        model_internal::propertyTypeMap["type"] = "String";
        model_internal::propertyTypeMap["serial"] = "String";
        model_internal::propertyTypeMap["rmi"] = "Boolean";

        model_internal::_instance = value;
        model_internal::_shardsValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForShards);
        model_internal::_shardsValidator.required = true;
        model_internal::_shardsValidator.requiredFieldError = "shards is required";
        //model_internal::_shardsValidator.source = model_internal::_instance;
        //model_internal::_shardsValidator.property = "shards";
        model_internal::_exploitsValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForExploits);
        model_internal::_exploitsValidator.required = true;
        model_internal::_exploitsValidator.requiredFieldError = "exploits is required";
        //model_internal::_exploitsValidator.source = model_internal::_instance;
        //model_internal::_exploitsValidator.property = "exploits";
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
            throw new Error(propertyName + " is not a data property of entity License");
            
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
            throw new Error(propertyName + " is not a collection property of entity License");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of License");

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
            throw new Error(propertyName + " does not exist for entity License");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity License");
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
            throw new Error(propertyName + " does not exist for entity License");
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
    public function get isCollectorsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUsersAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isShardsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIpaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isExploitsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAgentsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAlertingAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCorrelationAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTypeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSerialAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRmiAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnShards():void
    {
        if (model_internal::_shardsIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfShards = null;
            model_internal::calculateShardsIsValid();
        }
    }
    public function invalidateDependentOnExploits():void
    {
        if (model_internal::_exploitsIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfExploits = null;
            model_internal::calculateExploitsIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get collectorsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get usersStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get shardsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get shardsValidator() : StyleValidator
    {
        return model_internal::_shardsValidator;
    }

    model_internal function set _shardsIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_shardsIsValid;         
        if (oldValue !== value)
        {
            model_internal::_shardsIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "shardsIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get shardsIsValid():Boolean
    {
        if (!model_internal::_shardsIsValidCacheInitialized)
        {
            model_internal::calculateShardsIsValid();
        }

        return model_internal::_shardsIsValid;
    }

    model_internal function calculateShardsIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_shardsValidator.validate(model_internal::_instance.shards)
        model_internal::_shardsIsValid_der = (valRes.results == null);
        model_internal::_shardsIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::shardsValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::shardsValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get shardsValidationFailureMessages():Array
    {
        if (model_internal::_shardsValidationFailureMessages == null)
            model_internal::calculateShardsIsValid();

        return _shardsValidationFailureMessages;
    }

    model_internal function set shardsValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_shardsValidationFailureMessages;

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
            model_internal::_shardsValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "shardsValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get ipaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get exploitsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get exploitsValidator() : StyleValidator
    {
        return model_internal::_exploitsValidator;
    }

    model_internal function set _exploitsIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_exploitsIsValid;         
        if (oldValue !== value)
        {
            model_internal::_exploitsIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "exploitsIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get exploitsIsValid():Boolean
    {
        if (!model_internal::_exploitsIsValidCacheInitialized)
        {
            model_internal::calculateExploitsIsValid();
        }

        return model_internal::_exploitsIsValid;
    }

    model_internal function calculateExploitsIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_exploitsValidator.validate(model_internal::_instance.exploits)
        model_internal::_exploitsIsValid_der = (valRes.results == null);
        model_internal::_exploitsIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::exploitsValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::exploitsValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get exploitsValidationFailureMessages():Array
    {
        if (model_internal::_exploitsValidationFailureMessages == null)
            model_internal::calculateExploitsIsValid();

        return _exploitsValidationFailureMessages;
    }

    model_internal function set exploitsValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_exploitsValidationFailureMessages;

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
            model_internal::_exploitsValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "exploitsValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get agentsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get alertingStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get correlationStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get typeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get serialStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rmiStyle():com.adobe.fiber.styles.Style
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
            case("shards"):
            {
                return shardsValidationFailureMessages;
            }
            case("exploits"):
            {
                return exploitsValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
