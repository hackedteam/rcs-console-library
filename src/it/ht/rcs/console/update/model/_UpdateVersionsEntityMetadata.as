
/**
 * This is a generated class and is not intended for modification.  
 */
package it.ht.rcs.console.update.model
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
internal class _UpdateVersionsEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("db", "console");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("db", "console");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("db", "console");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("db", "console");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("db", "console");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "UpdateVersions";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _dbIsValid:Boolean;
    model_internal var _dbValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _dbIsValidCacheInitialized:Boolean = false;
    model_internal var _dbValidationFailureMessages:Array;
    
    model_internal var _consoleIsValid:Boolean;
    model_internal var _consoleValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _consoleIsValidCacheInitialized:Boolean = false;
    model_internal var _consoleValidationFailureMessages:Array;

    model_internal var _instance:_Super_UpdateVersions;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _UpdateVersionsEntityMetadata(value : _Super_UpdateVersions)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["db"] = new Array();
            model_internal::dependentsOnMap["console"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["db"] = "String";
        model_internal::propertyTypeMap["console"] = "String";

        model_internal::_instance = value;
        model_internal::_dbValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForDb);
        model_internal::_dbValidator.required = true;
        model_internal::_dbValidator.requiredFieldError = "db is required";
        //model_internal::_dbValidator.source = model_internal::_instance;
        //model_internal::_dbValidator.property = "db";
        model_internal::_consoleValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForConsole);
        model_internal::_consoleValidator.required = true;
        model_internal::_consoleValidator.requiredFieldError = "console is required";
        //model_internal::_consoleValidator.source = model_internal::_instance;
        //model_internal::_consoleValidator.property = "console";
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
            throw new Error(propertyName + " is not a data property of entity UpdateVersions");
            
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
            throw new Error(propertyName + " is not a collection property of entity UpdateVersions");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of UpdateVersions");

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
            throw new Error(propertyName + " does not exist for entity UpdateVersions");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity UpdateVersions");
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
            throw new Error(propertyName + " does not exist for entity UpdateVersions");
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
    public function get isDbAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isConsoleAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnDb():void
    {
        if (model_internal::_dbIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfDb = null;
            model_internal::calculateDbIsValid();
        }
    }
    public function invalidateDependentOnConsole():void
    {
        if (model_internal::_consoleIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfConsole = null;
            model_internal::calculateConsoleIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get dbStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get dbValidator() : StyleValidator
    {
        return model_internal::_dbValidator;
    }

    model_internal function set _dbIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_dbIsValid;         
        if (oldValue !== value)
        {
            model_internal::_dbIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dbIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get dbIsValid():Boolean
    {
        if (!model_internal::_dbIsValidCacheInitialized)
        {
            model_internal::calculateDbIsValid();
        }

        return model_internal::_dbIsValid;
    }

    model_internal function calculateDbIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_dbValidator.validate(model_internal::_instance.db)
        model_internal::_dbIsValid_der = (valRes.results == null);
        model_internal::_dbIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::dbValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::dbValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get dbValidationFailureMessages():Array
    {
        if (model_internal::_dbValidationFailureMessages == null)
            model_internal::calculateDbIsValid();

        return _dbValidationFailureMessages;
    }

    model_internal function set dbValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_dbValidationFailureMessages;

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
            model_internal::_dbValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dbValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get consoleStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get consoleValidator() : StyleValidator
    {
        return model_internal::_consoleValidator;
    }

    model_internal function set _consoleIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_consoleIsValid;         
        if (oldValue !== value)
        {
            model_internal::_consoleIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "consoleIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get consoleIsValid():Boolean
    {
        if (!model_internal::_consoleIsValidCacheInitialized)
        {
            model_internal::calculateConsoleIsValid();
        }

        return model_internal::_consoleIsValid;
    }

    model_internal function calculateConsoleIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_consoleValidator.validate(model_internal::_instance.console)
        model_internal::_consoleIsValid_der = (valRes.results == null);
        model_internal::_consoleIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::consoleValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::consoleValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get consoleValidationFailureMessages():Array
    {
        if (model_internal::_consoleValidationFailureMessages == null)
            model_internal::calculateConsoleIsValid();

        return _consoleValidationFailureMessages;
    }

    model_internal function set consoleValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_consoleValidationFailureMessages;

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
            model_internal::_consoleValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "consoleValidationFailureMessages", oldValue, value));
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
            case("db"):
            {
                return dbValidationFailureMessages;
            }
            case("console"):
            {
                return consoleValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
