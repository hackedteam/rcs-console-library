
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
import it.ht.rcs.console.monitor.model.LicenseBackdoors;
import it.ht.rcs.console.monitor.model.LicenseCollectors;
import mx.events.ValidationResultEvent;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _LicenseCountEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("collectors", "users", "ipa", "backdoors");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("collectors", "users", "ipa", "backdoors");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("collectors", "users", "ipa", "backdoors");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("collectors", "users", "ipa", "backdoors");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("collectors", "users", "ipa", "backdoors");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "LicenseCount";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _collectorsIsValid:Boolean;
    model_internal var _collectorsValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _collectorsIsValidCacheInitialized:Boolean = false;
    model_internal var _collectorsValidationFailureMessages:Array;
    
    model_internal var _backdoorsIsValid:Boolean;
    model_internal var _backdoorsValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _backdoorsIsValidCacheInitialized:Boolean = false;
    model_internal var _backdoorsValidationFailureMessages:Array;

    model_internal var _instance:_Super_LicenseCount;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _LicenseCountEntityMetadata(value : _Super_LicenseCount)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["collectors"] = new Array();
            model_internal::dependentsOnMap["users"] = new Array();
            model_internal::dependentsOnMap["ipa"] = new Array();
            model_internal::dependentsOnMap["backdoors"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["collectors"] = "it.ht.rcs.console.monitor.model.LicenseCollectors";
        model_internal::propertyTypeMap["users"] = "int";
        model_internal::propertyTypeMap["ipa"] = "int";
        model_internal::propertyTypeMap["backdoors"] = "it.ht.rcs.console.monitor.model.LicenseBackdoors";

        model_internal::_instance = value;
        model_internal::_collectorsValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCollectors);
        model_internal::_collectorsValidator.required = true;
        model_internal::_collectorsValidator.requiredFieldError = "collectors is required";
        //model_internal::_collectorsValidator.source = model_internal::_instance;
        //model_internal::_collectorsValidator.property = "collectors";
        model_internal::_backdoorsValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForBackdoors);
        model_internal::_backdoorsValidator.required = true;
        model_internal::_backdoorsValidator.requiredFieldError = "backdoors is required";
        //model_internal::_backdoorsValidator.source = model_internal::_instance;
        //model_internal::_backdoorsValidator.property = "backdoors";
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
            throw new Error(propertyName + " is not a data property of entity LicenseCount");
            
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
            throw new Error(propertyName + " is not a collection property of entity LicenseCount");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of LicenseCount");

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
            throw new Error(propertyName + " does not exist for entity LicenseCount");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity LicenseCount");
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
            throw new Error(propertyName + " does not exist for entity LicenseCount");
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
    public function get isIpaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isBackdoorsAvailable():Boolean
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
    public function invalidateDependentOnBackdoors():void
    {
        if (model_internal::_backdoorsIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfBackdoors = null;
            model_internal::calculateBackdoorsIsValid();
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
    public function get usersStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get ipaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get backdoorsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get backdoorsValidator() : StyleValidator
    {
        return model_internal::_backdoorsValidator;
    }

    model_internal function set _backdoorsIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_backdoorsIsValid;         
        if (oldValue !== value)
        {
            model_internal::_backdoorsIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "backdoorsIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get backdoorsIsValid():Boolean
    {
        if (!model_internal::_backdoorsIsValidCacheInitialized)
        {
            model_internal::calculateBackdoorsIsValid();
        }

        return model_internal::_backdoorsIsValid;
    }

    model_internal function calculateBackdoorsIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_backdoorsValidator.validate(model_internal::_instance.backdoors)
        model_internal::_backdoorsIsValid_der = (valRes.results == null);
        model_internal::_backdoorsIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::backdoorsValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::backdoorsValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get backdoorsValidationFailureMessages():Array
    {
        if (model_internal::_backdoorsValidationFailureMessages == null)
            model_internal::calculateBackdoorsIsValid();

        return _backdoorsValidationFailureMessages;
    }

    model_internal function set backdoorsValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_backdoorsValidationFailureMessages;

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
            model_internal::_backdoorsValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "backdoorsValidationFailureMessages", oldValue, value));
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
            case("backdoors"):
            {
                return backdoorsValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
