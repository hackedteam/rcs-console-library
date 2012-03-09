
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
import mx.collections.ArrayCollection;
import mx.events.ValidationResultEvent;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _LicenseAgentsEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
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
    model_internal static var collectionProperties:Array = new Array("symbian", "blackberry", "osx", "android", "ios", "windows", "winmo", "linux");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "LicenseAgents";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _symbianIsValid:Boolean;
    model_internal var _symbianValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _symbianIsValidCacheInitialized:Boolean = false;
    model_internal var _symbianValidationFailureMessages:Array;
    
    model_internal var _blackberryIsValid:Boolean;
    model_internal var _blackberryValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _blackberryIsValidCacheInitialized:Boolean = false;
    model_internal var _blackberryValidationFailureMessages:Array;
    
    model_internal var _osxIsValid:Boolean;
    model_internal var _osxValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _osxIsValidCacheInitialized:Boolean = false;
    model_internal var _osxValidationFailureMessages:Array;
    
    model_internal var _totalIsValid:Boolean;
    model_internal var _totalValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _totalIsValidCacheInitialized:Boolean = false;
    model_internal var _totalValidationFailureMessages:Array;
    
    model_internal var _androidIsValid:Boolean;
    model_internal var _androidValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _androidIsValidCacheInitialized:Boolean = false;
    model_internal var _androidValidationFailureMessages:Array;
    
    model_internal var _iosIsValid:Boolean;
    model_internal var _iosValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _iosIsValidCacheInitialized:Boolean = false;
    model_internal var _iosValidationFailureMessages:Array;
    
    model_internal var _desktopIsValid:Boolean;
    model_internal var _desktopValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _desktopIsValidCacheInitialized:Boolean = false;
    model_internal var _desktopValidationFailureMessages:Array;
    
    model_internal var _windowsIsValid:Boolean;
    model_internal var _windowsValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _windowsIsValidCacheInitialized:Boolean = false;
    model_internal var _windowsValidationFailureMessages:Array;
    
    model_internal var _winmoIsValid:Boolean;
    model_internal var _winmoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _winmoIsValidCacheInitialized:Boolean = false;
    model_internal var _winmoValidationFailureMessages:Array;
    
    model_internal var _linuxIsValid:Boolean;
    model_internal var _linuxValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _linuxIsValidCacheInitialized:Boolean = false;
    model_internal var _linuxValidationFailureMessages:Array;
    
    model_internal var _mobileIsValid:Boolean;
    model_internal var _mobileValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _mobileIsValidCacheInitialized:Boolean = false;
    model_internal var _mobileValidationFailureMessages:Array;

    model_internal var _instance:_Super_LicenseAgents;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _LicenseAgentsEntityMetadata(value : _Super_LicenseAgents)
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
            model_internal::collectionBaseMap["symbian"] = "Boolean";
            model_internal::collectionBaseMap["blackberry"] = "Boolean";
            model_internal::collectionBaseMap["osx"] = "Boolean";
            model_internal::collectionBaseMap["android"] = "Boolean";
            model_internal::collectionBaseMap["ios"] = "Boolean";
            model_internal::collectionBaseMap["windows"] = "Boolean";
            model_internal::collectionBaseMap["winmo"] = "Boolean";
            model_internal::collectionBaseMap["linux"] = "Boolean";
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["symbian"] = "ArrayCollection";
        model_internal::propertyTypeMap["blackberry"] = "ArrayCollection";
        model_internal::propertyTypeMap["osx"] = "ArrayCollection";
        model_internal::propertyTypeMap["total"] = "Object";
        model_internal::propertyTypeMap["android"] = "ArrayCollection";
        model_internal::propertyTypeMap["ios"] = "ArrayCollection";
        model_internal::propertyTypeMap["desktop"] = "Object";
        model_internal::propertyTypeMap["windows"] = "ArrayCollection";
        model_internal::propertyTypeMap["winmo"] = "ArrayCollection";
        model_internal::propertyTypeMap["linux"] = "ArrayCollection";
        model_internal::propertyTypeMap["mobile"] = "Object";

        model_internal::_instance = value;
        model_internal::_symbianValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForSymbian);
        model_internal::_symbianValidator.required = true;
        model_internal::_symbianValidator.requiredFieldError = "symbian is required";
        //model_internal::_symbianValidator.source = model_internal::_instance;
        //model_internal::_symbianValidator.property = "symbian";
        model_internal::_blackberryValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForBlackberry);
        model_internal::_blackberryValidator.required = true;
        model_internal::_blackberryValidator.requiredFieldError = "blackberry is required";
        //model_internal::_blackberryValidator.source = model_internal::_instance;
        //model_internal::_blackberryValidator.property = "blackberry";
        model_internal::_osxValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForOsx);
        model_internal::_osxValidator.required = true;
        model_internal::_osxValidator.requiredFieldError = "osx is required";
        //model_internal::_osxValidator.source = model_internal::_instance;
        //model_internal::_osxValidator.property = "osx";
        model_internal::_totalValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForTotal);
        model_internal::_totalValidator.required = true;
        model_internal::_totalValidator.requiredFieldError = "total is required";
        //model_internal::_totalValidator.source = model_internal::_instance;
        //model_internal::_totalValidator.property = "total";
        model_internal::_androidValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForAndroid);
        model_internal::_androidValidator.required = true;
        model_internal::_androidValidator.requiredFieldError = "android is required";
        //model_internal::_androidValidator.source = model_internal::_instance;
        //model_internal::_androidValidator.property = "android";
        model_internal::_iosValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForIos);
        model_internal::_iosValidator.required = true;
        model_internal::_iosValidator.requiredFieldError = "ios is required";
        //model_internal::_iosValidator.source = model_internal::_instance;
        //model_internal::_iosValidator.property = "ios";
        model_internal::_desktopValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForDesktop);
        model_internal::_desktopValidator.required = true;
        model_internal::_desktopValidator.requiredFieldError = "desktop is required";
        //model_internal::_desktopValidator.source = model_internal::_instance;
        //model_internal::_desktopValidator.property = "desktop";
        model_internal::_windowsValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForWindows);
        model_internal::_windowsValidator.required = true;
        model_internal::_windowsValidator.requiredFieldError = "windows is required";
        //model_internal::_windowsValidator.source = model_internal::_instance;
        //model_internal::_windowsValidator.property = "windows";
        model_internal::_winmoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForWinmo);
        model_internal::_winmoValidator.required = true;
        model_internal::_winmoValidator.requiredFieldError = "winmo is required";
        //model_internal::_winmoValidator.source = model_internal::_instance;
        //model_internal::_winmoValidator.property = "winmo";
        model_internal::_linuxValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForLinux);
        model_internal::_linuxValidator.required = true;
        model_internal::_linuxValidator.requiredFieldError = "linux is required";
        //model_internal::_linuxValidator.source = model_internal::_instance;
        //model_internal::_linuxValidator.property = "linux";
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
            throw new Error(propertyName + " is not a data property of entity LicenseAgents");
            
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
            throw new Error(propertyName + " is not a collection property of entity LicenseAgents");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of LicenseAgents");

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
            throw new Error(propertyName + " does not exist for entity LicenseAgents");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity LicenseAgents");
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
            throw new Error(propertyName + " does not exist for entity LicenseAgents");
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
    public function invalidateDependentOnSymbian():void
    {
        if (model_internal::_symbianIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfSymbian = null;
            model_internal::calculateSymbianIsValid();
        }
    }
    public function invalidateDependentOnBlackberry():void
    {
        if (model_internal::_blackberryIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfBlackberry = null;
            model_internal::calculateBlackberryIsValid();
        }
    }
    public function invalidateDependentOnOsx():void
    {
        if (model_internal::_osxIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfOsx = null;
            model_internal::calculateOsxIsValid();
        }
    }
    public function invalidateDependentOnTotal():void
    {
        if (model_internal::_totalIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfTotal = null;
            model_internal::calculateTotalIsValid();
        }
    }
    public function invalidateDependentOnAndroid():void
    {
        if (model_internal::_androidIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfAndroid = null;
            model_internal::calculateAndroidIsValid();
        }
    }
    public function invalidateDependentOnIos():void
    {
        if (model_internal::_iosIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfIos = null;
            model_internal::calculateIosIsValid();
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
    public function invalidateDependentOnWindows():void
    {
        if (model_internal::_windowsIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfWindows = null;
            model_internal::calculateWindowsIsValid();
        }
    }
    public function invalidateDependentOnWinmo():void
    {
        if (model_internal::_winmoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfWinmo = null;
            model_internal::calculateWinmoIsValid();
        }
    }
    public function invalidateDependentOnLinux():void
    {
        if (model_internal::_linuxIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfLinux = null;
            model_internal::calculateLinuxIsValid();
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

    public function get symbianValidator() : StyleValidator
    {
        return model_internal::_symbianValidator;
    }

    model_internal function set _symbianIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_symbianIsValid;         
        if (oldValue !== value)
        {
            model_internal::_symbianIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "symbianIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get symbianIsValid():Boolean
    {
        if (!model_internal::_symbianIsValidCacheInitialized)
        {
            model_internal::calculateSymbianIsValid();
        }

        return model_internal::_symbianIsValid;
    }

    model_internal function calculateSymbianIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_symbianValidator.validate(model_internal::_instance.symbian)
        model_internal::_symbianIsValid_der = (valRes.results == null);
        model_internal::_symbianIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::symbianValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::symbianValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get symbianValidationFailureMessages():Array
    {
        if (model_internal::_symbianValidationFailureMessages == null)
            model_internal::calculateSymbianIsValid();

        return _symbianValidationFailureMessages;
    }

    model_internal function set symbianValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_symbianValidationFailureMessages;

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
            model_internal::_symbianValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "symbianValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get blackberryStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get blackberryValidator() : StyleValidator
    {
        return model_internal::_blackberryValidator;
    }

    model_internal function set _blackberryIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_blackberryIsValid;         
        if (oldValue !== value)
        {
            model_internal::_blackberryIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "blackberryIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get blackberryIsValid():Boolean
    {
        if (!model_internal::_blackberryIsValidCacheInitialized)
        {
            model_internal::calculateBlackberryIsValid();
        }

        return model_internal::_blackberryIsValid;
    }

    model_internal function calculateBlackberryIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_blackberryValidator.validate(model_internal::_instance.blackberry)
        model_internal::_blackberryIsValid_der = (valRes.results == null);
        model_internal::_blackberryIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::blackberryValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::blackberryValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get blackberryValidationFailureMessages():Array
    {
        if (model_internal::_blackberryValidationFailureMessages == null)
            model_internal::calculateBlackberryIsValid();

        return _blackberryValidationFailureMessages;
    }

    model_internal function set blackberryValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_blackberryValidationFailureMessages;

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
            model_internal::_blackberryValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "blackberryValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get osxStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get osxValidator() : StyleValidator
    {
        return model_internal::_osxValidator;
    }

    model_internal function set _osxIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_osxIsValid;         
        if (oldValue !== value)
        {
            model_internal::_osxIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "osxIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get osxIsValid():Boolean
    {
        if (!model_internal::_osxIsValidCacheInitialized)
        {
            model_internal::calculateOsxIsValid();
        }

        return model_internal::_osxIsValid;
    }

    model_internal function calculateOsxIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_osxValidator.validate(model_internal::_instance.osx)
        model_internal::_osxIsValid_der = (valRes.results == null);
        model_internal::_osxIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::osxValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::osxValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get osxValidationFailureMessages():Array
    {
        if (model_internal::_osxValidationFailureMessages == null)
            model_internal::calculateOsxIsValid();

        return _osxValidationFailureMessages;
    }

    model_internal function set osxValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_osxValidationFailureMessages;

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
            model_internal::_osxValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "osxValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
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

    public function get androidValidator() : StyleValidator
    {
        return model_internal::_androidValidator;
    }

    model_internal function set _androidIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_androidIsValid;         
        if (oldValue !== value)
        {
            model_internal::_androidIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "androidIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get androidIsValid():Boolean
    {
        if (!model_internal::_androidIsValidCacheInitialized)
        {
            model_internal::calculateAndroidIsValid();
        }

        return model_internal::_androidIsValid;
    }

    model_internal function calculateAndroidIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_androidValidator.validate(model_internal::_instance.android)
        model_internal::_androidIsValid_der = (valRes.results == null);
        model_internal::_androidIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::androidValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::androidValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get androidValidationFailureMessages():Array
    {
        if (model_internal::_androidValidationFailureMessages == null)
            model_internal::calculateAndroidIsValid();

        return _androidValidationFailureMessages;
    }

    model_internal function set androidValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_androidValidationFailureMessages;

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
            model_internal::_androidValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "androidValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get iosStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get iosValidator() : StyleValidator
    {
        return model_internal::_iosValidator;
    }

    model_internal function set _iosIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_iosIsValid;         
        if (oldValue !== value)
        {
            model_internal::_iosIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "iosIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get iosIsValid():Boolean
    {
        if (!model_internal::_iosIsValidCacheInitialized)
        {
            model_internal::calculateIosIsValid();
        }

        return model_internal::_iosIsValid;
    }

    model_internal function calculateIosIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_iosValidator.validate(model_internal::_instance.ios)
        model_internal::_iosIsValid_der = (valRes.results == null);
        model_internal::_iosIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::iosValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::iosValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get iosValidationFailureMessages():Array
    {
        if (model_internal::_iosValidationFailureMessages == null)
            model_internal::calculateIosIsValid();

        return _iosValidationFailureMessages;
    }

    model_internal function set iosValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_iosValidationFailureMessages;

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
            model_internal::_iosValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "iosValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
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

    public function get windowsValidator() : StyleValidator
    {
        return model_internal::_windowsValidator;
    }

    model_internal function set _windowsIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_windowsIsValid;         
        if (oldValue !== value)
        {
            model_internal::_windowsIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "windowsIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get windowsIsValid():Boolean
    {
        if (!model_internal::_windowsIsValidCacheInitialized)
        {
            model_internal::calculateWindowsIsValid();
        }

        return model_internal::_windowsIsValid;
    }

    model_internal function calculateWindowsIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_windowsValidator.validate(model_internal::_instance.windows)
        model_internal::_windowsIsValid_der = (valRes.results == null);
        model_internal::_windowsIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::windowsValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::windowsValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get windowsValidationFailureMessages():Array
    {
        if (model_internal::_windowsValidationFailureMessages == null)
            model_internal::calculateWindowsIsValid();

        return _windowsValidationFailureMessages;
    }

    model_internal function set windowsValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_windowsValidationFailureMessages;

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
            model_internal::_windowsValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "windowsValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get winmoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get winmoValidator() : StyleValidator
    {
        return model_internal::_winmoValidator;
    }

    model_internal function set _winmoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_winmoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_winmoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "winmoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get winmoIsValid():Boolean
    {
        if (!model_internal::_winmoIsValidCacheInitialized)
        {
            model_internal::calculateWinmoIsValid();
        }

        return model_internal::_winmoIsValid;
    }

    model_internal function calculateWinmoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_winmoValidator.validate(model_internal::_instance.winmo)
        model_internal::_winmoIsValid_der = (valRes.results == null);
        model_internal::_winmoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::winmoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::winmoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get winmoValidationFailureMessages():Array
    {
        if (model_internal::_winmoValidationFailureMessages == null)
            model_internal::calculateWinmoIsValid();

        return _winmoValidationFailureMessages;
    }

    model_internal function set winmoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_winmoValidationFailureMessages;

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
            model_internal::_winmoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "winmoValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get linuxStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get linuxValidator() : StyleValidator
    {
        return model_internal::_linuxValidator;
    }

    model_internal function set _linuxIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_linuxIsValid;         
        if (oldValue !== value)
        {
            model_internal::_linuxIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "linuxIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get linuxIsValid():Boolean
    {
        if (!model_internal::_linuxIsValidCacheInitialized)
        {
            model_internal::calculateLinuxIsValid();
        }

        return model_internal::_linuxIsValid;
    }

    model_internal function calculateLinuxIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_linuxValidator.validate(model_internal::_instance.linux)
        model_internal::_linuxIsValid_der = (valRes.results == null);
        model_internal::_linuxIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::linuxValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::linuxValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get linuxValidationFailureMessages():Array
    {
        if (model_internal::_linuxValidationFailureMessages == null)
            model_internal::calculateLinuxIsValid();

        return _linuxValidationFailureMessages;
    }

    model_internal function set linuxValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_linuxValidationFailureMessages;

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
            model_internal::_linuxValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "linuxValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
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
            case("symbian"):
            {
                return symbianValidationFailureMessages;
            }
            case("blackberry"):
            {
                return blackberryValidationFailureMessages;
            }
            case("osx"):
            {
                return osxValidationFailureMessages;
            }
            case("total"):
            {
                return totalValidationFailureMessages;
            }
            case("android"):
            {
                return androidValidationFailureMessages;
            }
            case("ios"):
            {
                return iosValidationFailureMessages;
            }
            case("desktop"):
            {
                return desktopValidationFailureMessages;
            }
            case("windows"):
            {
                return windowsValidationFailureMessages;
            }
            case("winmo"):
            {
                return winmoValidationFailureMessages;
            }
            case("linux"):
            {
                return linuxValidationFailureMessages;
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
