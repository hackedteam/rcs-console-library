
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
internal class _BackdoorsEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("symbian", "blackberry", "osx", "total", "android", "ios", "desktop", "windows", "winmo", "linux", "mobile");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("symbian", "blackberry", "osx", "total", "android", "ios", "desktop", "windows", "winmo", "linux", "mobile");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("symbian", "blackberry", "osx", "total", "android", "ios", "desktop", "windows", "winmo", "linux", "mobile");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("symbian", "blackberry", "osx", "total", "android", "ios", "desktop", "windows", "winmo", "linux", "mobile");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("symbian", "blackberry", "osx", "total", "android", "ios", "desktop", "windows", "winmo", "linux", "mobile");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "Backdoors";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _totalIsValid:Boolean;
    model_internal var _totalValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _totalIsValidCacheInitialized:Boolean = false;
    model_internal var _totalValidationFailureMessages:Array;
    
    model_internal var _desktopIsValid:Boolean;
    model_internal var _desktopValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _desktopIsValidCacheInitialized:Boolean = false;
    model_internal var _desktopValidationFailureMessages:Array;
    
    model_internal var _mobileIsValid:Boolean;
    model_internal var _mobileValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _mobileIsValidCacheInitialized:Boolean = false;
    model_internal var _mobileValidationFailureMessages:Array;

    model_internal var _instance:_Super_Backdoors;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _BackdoorsEntityMetadata(value : _Super_Backdoors)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["symbian"] = new Array();
            model_internal::dependentsOnMap["blackberry"] = new Array();
            model_internal::dependentsOnMap["osx"] = new Array();
            model_internal::dependentsOnMap["total"] = new Array();
            model_internal::dependentsOnMap["android"] = new Array();
            model_internal::dependentsOnMap["ios"] = new Array();
            model_internal::dependentsOnMap["desktop"] = new Array();
            model_internal::dependentsOnMap["windows"] = new Array();
            model_internal::dependentsOnMap["winmo"] = new Array();
            model_internal::dependentsOnMap["linux"] = new Array();
            model_internal::dependentsOnMap["mobile"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["symbian"] = "Boolean";
        model_internal::propertyTypeMap["blackberry"] = "Boolean";
        model_internal::propertyTypeMap["osx"] = "Boolean";
        model_internal::propertyTypeMap["total"] = "Object";
        model_internal::propertyTypeMap["android"] = "Boolean";
        model_internal::propertyTypeMap["ios"] = "Boolean";
        model_internal::propertyTypeMap["desktop"] = "Object";
        model_internal::propertyTypeMap["windows"] = "Boolean";
        model_internal::propertyTypeMap["winmo"] = "Boolean";
        model_internal::propertyTypeMap["linux"] = "Boolean";
        model_internal::propertyTypeMap["mobile"] = "Object";

        model_internal::_instance = value;
        model_internal::_totalValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForTotal);
        model_internal::_totalValidator.required = true;
        model_internal::_totalValidator.requiredFieldError = "total is required";
        //model_internal::_totalValidator.source = model_internal::_instance;
        //model_internal::_totalValidator.property = "total";
        model_internal::_desktopValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForDesktop);
        model_internal::_desktopValidator.required = true;
        model_internal::_desktopValidator.requiredFieldError = "desktop is required";
        //model_internal::_desktopValidator.source = model_internal::_instance;
        //model_internal::_desktopValidator.property = "desktop";
        model_internal::_mobileValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForMobile);
        model_internal::_mobileValidator.required = true;
        model_internal::_mobileValidator.requiredFieldError = "mobile is required";
        //model_internal::_mobileValidator.source = model_internal::_instance;
        //model_internal::_mobileValidator.property = "mobile";
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
            throw new Error(propertyName + " is not a data property of entity Backdoors");
            
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
            throw new Error(propertyName + " is not a collection property of entity Backdoors");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of Backdoors");

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
            throw new Error(propertyName + " does not exist for entity Backdoors");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity Backdoors");
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
            throw new Error(propertyName + " does not exist for entity Backdoors");
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
    public function get isSymbianAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isBlackberryAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isOsxAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTotalAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAndroidAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIosAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDesktopAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isWindowsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isWinmoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLinuxAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isMobileAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnTotal():void
    {
        if (model_internal::_totalIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfTotal = null;
            model_internal::calculateTotalIsValid();
        }
    }
    public function invalidateDependentOnDesktop():void
    {
        if (model_internal::_desktopIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfDesktop = null;
            model_internal::calculateDesktopIsValid();
        }
    }
    public function invalidateDependentOnMobile():void
    {
        if (model_internal::_mobileIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfMobile = null;
            model_internal::calculateMobileIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get symbianStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get blackberryStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get osxStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get totalStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get totalValidator() : StyleValidator
    {
        return model_internal::_totalValidator;
    }

    model_internal function set _totalIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_totalIsValid;         
        if (oldValue !== value)
        {
            model_internal::_totalIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "totalIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get totalIsValid():Boolean
    {
        if (!model_internal::_totalIsValidCacheInitialized)
        {
            model_internal::calculateTotalIsValid();
        }

        return model_internal::_totalIsValid;
    }

    model_internal function calculateTotalIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_totalValidator.validate(model_internal::_instance.total)
        model_internal::_totalIsValid_der = (valRes.results == null);
        model_internal::_totalIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::totalValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::totalValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get totalValidationFailureMessages():Array
    {
        if (model_internal::_totalValidationFailureMessages == null)
            model_internal::calculateTotalIsValid();

        return _totalValidationFailureMessages;
    }

    model_internal function set totalValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_totalValidationFailureMessages;

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
            model_internal::_totalValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "totalValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get androidStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get iosStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get desktopStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get desktopValidator() : StyleValidator
    {
        return model_internal::_desktopValidator;
    }

    model_internal function set _desktopIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_desktopIsValid;         
        if (oldValue !== value)
        {
            model_internal::_desktopIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "desktopIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get desktopIsValid():Boolean
    {
        if (!model_internal::_desktopIsValidCacheInitialized)
        {
            model_internal::calculateDesktopIsValid();
        }

        return model_internal::_desktopIsValid;
    }

    model_internal function calculateDesktopIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_desktopValidator.validate(model_internal::_instance.desktop)
        model_internal::_desktopIsValid_der = (valRes.results == null);
        model_internal::_desktopIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::desktopValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::desktopValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get desktopValidationFailureMessages():Array
    {
        if (model_internal::_desktopValidationFailureMessages == null)
            model_internal::calculateDesktopIsValid();

        return _desktopValidationFailureMessages;
    }

    model_internal function set desktopValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_desktopValidationFailureMessages;

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
            model_internal::_desktopValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "desktopValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get windowsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get winmoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get linuxStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get mobileStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get mobileValidator() : StyleValidator
    {
        return model_internal::_mobileValidator;
    }

    model_internal function set _mobileIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_mobileIsValid;         
        if (oldValue !== value)
        {
            model_internal::_mobileIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "mobileIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get mobileIsValid():Boolean
    {
        if (!model_internal::_mobileIsValidCacheInitialized)
        {
            model_internal::calculateMobileIsValid();
        }

        return model_internal::_mobileIsValid;
    }

    model_internal function calculateMobileIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_mobileValidator.validate(model_internal::_instance.mobile)
        model_internal::_mobileIsValid_der = (valRes.results == null);
        model_internal::_mobileIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::mobileValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::mobileValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get mobileValidationFailureMessages():Array
    {
        if (model_internal::_mobileValidationFailureMessages == null)
            model_internal::calculateMobileIsValid();

        return _mobileValidationFailureMessages;
    }

    model_internal function set mobileValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_mobileValidationFailureMessages;

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
            model_internal::_mobileValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "mobileValidationFailureMessages", oldValue, value));
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
            case("total"):
            {
                return totalValidationFailureMessages;
            }
            case("desktop"):
            {
                return desktopValidationFailureMessages;
            }
            case("mobile"):
            {
                return mobileValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
