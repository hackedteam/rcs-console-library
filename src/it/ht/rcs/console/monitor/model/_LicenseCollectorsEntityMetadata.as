
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
import mx.events.ValidationResultEvent;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _LicenseCollectorsEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("collectors", "anonymizers");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("collectors", "anonymizers");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("collectors", "anonymizers");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("collectors", "anonymizers");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("collectors", "anonymizers");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "LicenseCollectors";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _collectorsIsValid:Boolean;
    model_internal var _collectorsValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _collectorsIsValidCacheInitialized:Boolean = false;
    model_internal var _collectorsValidationFailureMessages:Array;
    
    model_internal var _anonymizersIsValid:Boolean;
    model_internal var _anonymizersValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _anonymizersIsValidCacheInitialized:Boolean = false;
    model_internal var _anonymizersValidationFailureMessages:Array;

    model_internal var _instance:_Super_LicenseCollectors;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _LicenseCollectorsEntityMetadata(value : _Super_LicenseCollectors)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["collectors"] = new Array();
            model_internal::dependentsOnMap["anonymizers"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["collectors"] = "Object";
        model_internal::propertyTypeMap["anonymizers"] = "Object";

        model_internal::_instance = value;
        model_internal::_collectorsValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCollectors);
        model_internal::_collectorsValidator.required = true;
        model_internal::_collectorsValidator.requiredFieldError = "collectors is required";
        //model_internal::_collectorsValidator.source = model_internal::_instance;
        //model_internal::_collectorsValidator.property = "collectors";
        model_internal::_anonymizersValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForAnonymizers);
        model_internal::_anonymizersValidator.required = true;
        model_internal::_anonymizersValidator.requiredFieldError = "anonymizers is required";
        //model_internal::_anonymizersValidator.source = model_internal::_instance;
        //model_internal::_anonymizersValidator.property = "anonymizers";
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
            throw new Error(propertyName + " is not a data property of entity LicenseCollectors");
            
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
            throw new Error(propertyName + " is not a collection property of entity LicenseCollectors");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of LicenseCollectors");

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
            throw new Error(propertyName + " does not exist for entity LicenseCollectors");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity LicenseCollectors");
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
            throw new Error(propertyName + " does not exist for entity LicenseCollectors");
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
    public function get isAnonymizersAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnCollectors():void
    {
        if (model_internal::_collectorsIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCollectors = null;
            model_internal::calculateCollectorsIsValid();
        }
    }
    public function invalidateDependentOnAnonymizers():void
    {
        if (model_internal::_anonymizersIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfAnonymizers = null;
            model_internal::calculateAnonymizersIsValid();
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

    public function get collectorsValidator() : StyleValidator
    {
        return model_internal::_collectorsValidator;
    }

    model_internal function set _collectorsIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_collectorsIsValid;         
        if (oldValue !== value)
        {
            model_internal::_collectorsIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "collectorsIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get collectorsIsValid():Boolean
    {
        if (!model_internal::_collectorsIsValidCacheInitialized)
        {
            model_internal::calculateCollectorsIsValid();
        }

        return model_internal::_collectorsIsValid;
    }

    model_internal function calculateCollectorsIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_collectorsValidator.validate(model_internal::_instance.collectors)
        model_internal::_collectorsIsValid_der = (valRes.results == null);
        model_internal::_collectorsIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::collectorsValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::collectorsValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get collectorsValidationFailureMessages():Array
    {
        if (model_internal::_collectorsValidationFailureMessages == null)
            model_internal::calculateCollectorsIsValid();

        return _collectorsValidationFailureMessages;
    }

    model_internal function set collectorsValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_collectorsValidationFailureMessages;

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
            model_internal::_collectorsValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "collectorsValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get anonymizersStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get anonymizersValidator() : StyleValidator
    {
        return model_internal::_anonymizersValidator;
    }

    model_internal function set _anonymizersIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_anonymizersIsValid;         
        if (oldValue !== value)
        {
            model_internal::_anonymizersIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "anonymizersIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get anonymizersIsValid():Boolean
    {
        if (!model_internal::_anonymizersIsValidCacheInitialized)
        {
            model_internal::calculateAnonymizersIsValid();
        }

        return model_internal::_anonymizersIsValid;
    }

    model_internal function calculateAnonymizersIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_anonymizersValidator.validate(model_internal::_instance.anonymizers)
        model_internal::_anonymizersIsValid_der = (valRes.results == null);
        model_internal::_anonymizersIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::anonymizersValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::anonymizersValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get anonymizersValidationFailureMessages():Array
    {
        if (model_internal::_anonymizersValidationFailureMessages == null)
            model_internal::calculateAnonymizersIsValid();

        return _anonymizersValidationFailureMessages;
    }

    model_internal function set anonymizersValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_anonymizersValidationFailureMessages;

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
            model_internal::_anonymizersValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "anonymizersValidationFailureMessages", oldValue, value));
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
            case("collectors"):
            {
                return collectorsValidationFailureMessages;
            }
            case("anonymizers"):
            {
                return anonymizersValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
