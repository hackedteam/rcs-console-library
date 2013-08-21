
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
internal class _FlowsEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("count", "rcpt", "from");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("count", "rcpt", "from");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("count", "rcpt", "from");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("count", "rcpt", "from");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("count", "rcpt", "from");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "Flows";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _rcptIsValid:Boolean;
    model_internal var _rcptValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _rcptIsValidCacheInitialized:Boolean = false;
    model_internal var _rcptValidationFailureMessages:Array;
    
    model_internal var _fromIsValid:Boolean;
    model_internal var _fromValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _fromIsValidCacheInitialized:Boolean = false;
    model_internal var _fromValidationFailureMessages:Array;

    model_internal var _instance:_Super_Flows;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _FlowsEntityMetadata(value : _Super_Flows)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["count"] = new Array();
            model_internal::dependentsOnMap["rcpt"] = new Array();
            model_internal::dependentsOnMap["from"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["count"] = "int";
        model_internal::propertyTypeMap["rcpt"] = "String";
        model_internal::propertyTypeMap["from"] = "String";

        model_internal::_instance = value;
        model_internal::_rcptValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForRcpt);
        model_internal::_rcptValidator.required = true;
        model_internal::_rcptValidator.requiredFieldError = "rcpt is required";
        //model_internal::_rcptValidator.source = model_internal::_instance;
        //model_internal::_rcptValidator.property = "rcpt";
        model_internal::_fromValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForFrom);
        model_internal::_fromValidator.required = true;
        model_internal::_fromValidator.requiredFieldError = "from is required";
        //model_internal::_fromValidator.source = model_internal::_instance;
        //model_internal::_fromValidator.property = "from";
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
            throw new Error(propertyName + " is not a data property of entity Flows");
            
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
            throw new Error(propertyName + " is not a collection property of entity Flows");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of Flows");

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
            throw new Error(propertyName + " does not exist for entity Flows");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity Flows");
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
            throw new Error(propertyName + " does not exist for entity Flows");
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
    public function get isCountAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRcptAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFromAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnRcpt():void
    {
        if (model_internal::_rcptIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfRcpt = null;
            model_internal::calculateRcptIsValid();
        }
    }
    public function invalidateDependentOnFrom():void
    {
        if (model_internal::_fromIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfFrom = null;
            model_internal::calculateFromIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get countStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rcptStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get rcptValidator() : StyleValidator
    {
        return model_internal::_rcptValidator;
    }

    model_internal function set _rcptIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_rcptIsValid;         
        if (oldValue !== value)
        {
            model_internal::_rcptIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rcptIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get rcptIsValid():Boolean
    {
        if (!model_internal::_rcptIsValidCacheInitialized)
        {
            model_internal::calculateRcptIsValid();
        }

        return model_internal::_rcptIsValid;
    }

    model_internal function calculateRcptIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_rcptValidator.validate(model_internal::_instance.rcpt)
        model_internal::_rcptIsValid_der = (valRes.results == null);
        model_internal::_rcptIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::rcptValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::rcptValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get rcptValidationFailureMessages():Array
    {
        if (model_internal::_rcptValidationFailureMessages == null)
            model_internal::calculateRcptIsValid();

        return _rcptValidationFailureMessages;
    }

    model_internal function set rcptValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_rcptValidationFailureMessages;

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
            model_internal::_rcptValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rcptValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get fromStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get fromValidator() : StyleValidator
    {
        return model_internal::_fromValidator;
    }

    model_internal function set _fromIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_fromIsValid;         
        if (oldValue !== value)
        {
            model_internal::_fromIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fromIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get fromIsValid():Boolean
    {
        if (!model_internal::_fromIsValidCacheInitialized)
        {
            model_internal::calculateFromIsValid();
        }

        return model_internal::_fromIsValid;
    }

    model_internal function calculateFromIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_fromValidator.validate(model_internal::_instance.from)
        model_internal::_fromIsValid_der = (valRes.results == null);
        model_internal::_fromIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::fromValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::fromValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get fromValidationFailureMessages():Array
    {
        if (model_internal::_fromValidationFailureMessages == null)
            model_internal::calculateFromIsValid();

        return _fromValidationFailureMessages;
    }

    model_internal function set fromValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_fromValidationFailureMessages;

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
            model_internal::_fromValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fromValidationFailureMessages", oldValue, value));
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
            case("rcpt"):
            {
                return rcptValidationFailureMessages;
            }
            case("from"):
            {
                return fromValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
