
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
import it.ht.rcs.console.entities.model.Entity;
import mx.collections.ArrayCollection;
import mx.events.ValidationResultEvent;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _PlaceEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("position", "count", "entity", "radius");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("position", "count", "entity", "radius");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("position", "count", "entity", "radius");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("position", "count", "entity", "radius");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("position", "count", "entity", "radius");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("position");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "Place";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _positionIsValid:Boolean;
    model_internal var _positionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _positionIsValidCacheInitialized:Boolean = false;
    model_internal var _positionValidationFailureMessages:Array;
    
    model_internal var _entityIsValid:Boolean;
    model_internal var _entityValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _entityIsValidCacheInitialized:Boolean = false;
    model_internal var _entityValidationFailureMessages:Array;

    model_internal var _instance:_Super_Place;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _PlaceEntityMetadata(value : _Super_Place)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["position"] = new Array();
            model_internal::dependentsOnMap["count"] = new Array();
            model_internal::dependentsOnMap["entity"] = new Array();
            model_internal::dependentsOnMap["radius"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
            model_internal::collectionBaseMap["position"] = "Number";
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["position"] = "ArrayCollection";
        model_internal::propertyTypeMap["count"] = "int";
        model_internal::propertyTypeMap["entity"] = "it.ht.rcs.console.entities.model.Entity";
        model_internal::propertyTypeMap["radius"] = "int";

        model_internal::_instance = value;
        model_internal::_positionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPosition);
        model_internal::_positionValidator.required = true;
        model_internal::_positionValidator.requiredFieldError = "position is required";
        //model_internal::_positionValidator.source = model_internal::_instance;
        //model_internal::_positionValidator.property = "position";
        model_internal::_entityValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForEntity);
        model_internal::_entityValidator.required = true;
        model_internal::_entityValidator.requiredFieldError = "entity is required";
        //model_internal::_entityValidator.source = model_internal::_instance;
        //model_internal::_entityValidator.property = "entity";
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
            throw new Error(propertyName + " is not a data property of entity Place");
            
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
            throw new Error(propertyName + " is not a collection property of entity Place");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of Place");

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
            throw new Error(propertyName + " does not exist for entity Place");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity Place");
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
            throw new Error(propertyName + " does not exist for entity Place");
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
    public function get isPositionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCountAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isEntityAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRadiusAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnPosition():void
    {
        if (model_internal::_positionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPosition = null;
            model_internal::calculatePositionIsValid();
        }
    }
    public function invalidateDependentOnEntity():void
    {
        if (model_internal::_entityIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfEntity = null;
            model_internal::calculateEntityIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get positionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get positionValidator() : StyleValidator
    {
        return model_internal::_positionValidator;
    }

    model_internal function set _positionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_positionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_positionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "positionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get positionIsValid():Boolean
    {
        if (!model_internal::_positionIsValidCacheInitialized)
        {
            model_internal::calculatePositionIsValid();
        }

        return model_internal::_positionIsValid;
    }

    model_internal function calculatePositionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_positionValidator.validate(model_internal::_instance.position)
        model_internal::_positionIsValid_der = (valRes.results == null);
        model_internal::_positionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::positionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::positionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get positionValidationFailureMessages():Array
    {
        if (model_internal::_positionValidationFailureMessages == null)
            model_internal::calculatePositionIsValid();

        return _positionValidationFailureMessages;
    }

    model_internal function set positionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_positionValidationFailureMessages;

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
            model_internal::_positionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "positionValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get countStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get entityStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get entityValidator() : StyleValidator
    {
        return model_internal::_entityValidator;
    }

    model_internal function set _entityIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_entityIsValid;         
        if (oldValue !== value)
        {
            model_internal::_entityIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "entityIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get entityIsValid():Boolean
    {
        if (!model_internal::_entityIsValidCacheInitialized)
        {
            model_internal::calculateEntityIsValid();
        }

        return model_internal::_entityIsValid;
    }

    model_internal function calculateEntityIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_entityValidator.validate(model_internal::_instance.entity)
        model_internal::_entityIsValid_der = (valRes.results == null);
        model_internal::_entityIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::entityValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::entityValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get entityValidationFailureMessages():Array
    {
        if (model_internal::_entityValidationFailureMessages == null)
            model_internal::calculateEntityIsValid();

        return _entityValidationFailureMessages;
    }

    model_internal function set entityValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_entityValidationFailureMessages;

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
            model_internal::_entityValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "entityValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get radiusStyle():com.adobe.fiber.styles.Style
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
            case("position"):
            {
                return positionValidationFailureMessages;
            }
            case("entity"):
            {
                return entityValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
