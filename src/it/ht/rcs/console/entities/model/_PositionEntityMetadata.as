
/**
 * This is a generated class and is not intended for modification.  
 */
package it.ht.rcs.console.entities.model
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
internal class _PositionEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("lon", "rad", "lat", "longitude", "latitude");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("lon", "rad", "lat", "longitude", "latitude");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("lon", "rad", "lat", "longitude", "latitude");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("lon", "rad", "lat", "longitude", "latitude");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("lon", "rad", "lat", "longitude", "latitude");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "Position";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _longitudeIsValid:Boolean;
    model_internal var _longitudeValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _longitudeIsValidCacheInitialized:Boolean = false;
    model_internal var _longitudeValidationFailureMessages:Array;
    
    model_internal var _latitudeIsValid:Boolean;
    model_internal var _latitudeValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _latitudeIsValidCacheInitialized:Boolean = false;
    model_internal var _latitudeValidationFailureMessages:Array;

    model_internal var _instance:_Super_Position;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _PositionEntityMetadata(value : _Super_Position)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["lon"] = new Array();
            model_internal::dependentsOnMap["rad"] = new Array();
            model_internal::dependentsOnMap["lat"] = new Array();
            model_internal::dependentsOnMap["longitude"] = new Array();
            model_internal::dependentsOnMap["latitude"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["lon"] = "Number";
        model_internal::propertyTypeMap["rad"] = "Number";
        model_internal::propertyTypeMap["lat"] = "Number";
        model_internal::propertyTypeMap["longitude"] = "String";
        model_internal::propertyTypeMap["latitude"] = "String";

        model_internal::_instance = value;
        model_internal::_longitudeValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForLongitude);
        model_internal::_longitudeValidator.required = true;
        model_internal::_longitudeValidator.requiredFieldError = "longitude is required";
        //model_internal::_longitudeValidator.source = model_internal::_instance;
        //model_internal::_longitudeValidator.property = "longitude";
        model_internal::_latitudeValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForLatitude);
        model_internal::_latitudeValidator.required = true;
        model_internal::_latitudeValidator.requiredFieldError = "latitude is required";
        //model_internal::_latitudeValidator.source = model_internal::_instance;
        //model_internal::_latitudeValidator.property = "latitude";
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
            throw new Error(propertyName + " is not a data property of entity Position");
            
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
            throw new Error(propertyName + " is not a collection property of entity Position");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of Position");

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
            throw new Error(propertyName + " does not exist for entity Position");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity Position");
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
            throw new Error(propertyName + " does not exist for entity Position");
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
    public function get isLonAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRadAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLatAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLongitudeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLatitudeAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnLongitude():void
    {
        if (model_internal::_longitudeIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfLongitude = null;
            model_internal::calculateLongitudeIsValid();
        }
    }
    public function invalidateDependentOnLatitude():void
    {
        if (model_internal::_latitudeIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfLatitude = null;
            model_internal::calculateLatitudeIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get lonStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get radStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get latStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get longitudeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get longitudeValidator() : StyleValidator
    {
        return model_internal::_longitudeValidator;
    }

    model_internal function set _longitudeIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_longitudeIsValid;         
        if (oldValue !== value)
        {
            model_internal::_longitudeIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "longitudeIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get longitudeIsValid():Boolean
    {
        if (!model_internal::_longitudeIsValidCacheInitialized)
        {
            model_internal::calculateLongitudeIsValid();
        }

        return model_internal::_longitudeIsValid;
    }

    model_internal function calculateLongitudeIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_longitudeValidator.validate(model_internal::_instance.longitude)
        model_internal::_longitudeIsValid_der = (valRes.results == null);
        model_internal::_longitudeIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::longitudeValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::longitudeValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get longitudeValidationFailureMessages():Array
    {
        if (model_internal::_longitudeValidationFailureMessages == null)
            model_internal::calculateLongitudeIsValid();

        return _longitudeValidationFailureMessages;
    }

    model_internal function set longitudeValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_longitudeValidationFailureMessages;

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
            model_internal::_longitudeValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "longitudeValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get latitudeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get latitudeValidator() : StyleValidator
    {
        return model_internal::_latitudeValidator;
    }

    model_internal function set _latitudeIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_latitudeIsValid;         
        if (oldValue !== value)
        {
            model_internal::_latitudeIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "latitudeIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get latitudeIsValid():Boolean
    {
        if (!model_internal::_latitudeIsValidCacheInitialized)
        {
            model_internal::calculateLatitudeIsValid();
        }

        return model_internal::_latitudeIsValid;
    }

    model_internal function calculateLatitudeIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_latitudeValidator.validate(model_internal::_instance.latitude)
        model_internal::_latitudeIsValid_der = (valRes.results == null);
        model_internal::_latitudeIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::latitudeValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::latitudeValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get latitudeValidationFailureMessages():Array
    {
        if (model_internal::_latitudeValidationFailureMessages == null)
            model_internal::calculateLatitudeIsValid();

        return _latitudeValidationFailureMessages;
    }

    model_internal function set latitudeValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_latitudeValidationFailureMessages;

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
            model_internal::_latitudeValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "latitudeValidationFailureMessages", oldValue, value));
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
            case("longitude"):
            {
                return longitudeValidationFailureMessages;
            }
            case("latitude"):
            {
                return latitudeValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
