
/**
 * This is a generated class and is not intended for modification.  
 */
package it.ht.rcs.console.accounting.model
{
import com.adobe.fiber.styles.IStyle;
import com.adobe.fiber.styles.Style;
import com.adobe.fiber.styles.StyleValidator;
import com.adobe.fiber.valueobjects.AbstractEntityMetadata;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import it.ht.rcs.console.accounting.model.User;
import mx.collections.ArrayCollection;
import mx.events.ValidationResultEvent;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _SessionEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("user", "cookie", "time", "level", "_id", "address", "user_id", "login_at", "version");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("cookie", "time", "level", "_id", "address", "user_id", "login_at", "version");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("user", "cookie", "time", "level", "_id", "address", "user_id", "login_at", "version");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("user", "cookie", "time", "level", "_id", "address", "user_id", "login_at", "version");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("user", "cookie", "time", "level", "_id", "address", "user_id", "login_at", "version");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("level");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "Session";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _cookieIsValid:Boolean;
    model_internal var _cookieValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _cookieIsValidCacheInitialized:Boolean = false;
    model_internal var _cookieValidationFailureMessages:Array;
    
    model_internal var _levelIsValid:Boolean;
    model_internal var _levelValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _levelIsValidCacheInitialized:Boolean = false;
    model_internal var _levelValidationFailureMessages:Array;
    
    model_internal var __idIsValid:Boolean;
    model_internal var __idValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var __idIsValidCacheInitialized:Boolean = false;
    model_internal var __idValidationFailureMessages:Array;
    
    model_internal var _addressIsValid:Boolean;
    model_internal var _addressValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _addressIsValidCacheInitialized:Boolean = false;
    model_internal var _addressValidationFailureMessages:Array;
    
    model_internal var _user_idIsValid:Boolean;
    model_internal var _user_idValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _user_idIsValidCacheInitialized:Boolean = false;
    model_internal var _user_idValidationFailureMessages:Array;
    
    model_internal var _versionIsValid:Boolean;
    model_internal var _versionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _versionIsValidCacheInitialized:Boolean = false;
    model_internal var _versionValidationFailureMessages:Array;

    model_internal var _instance:_Super_Session;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _SessionEntityMetadata(value : _Super_Session)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["user"] = new Array();
            model_internal::dependentsOnMap["cookie"] = new Array();
            model_internal::dependentsOnMap["time"] = new Array();
            model_internal::dependentsOnMap["level"] = new Array();
            model_internal::dependentsOnMap["_id"] = new Array();
            model_internal::dependentsOnMap["address"] = new Array();
            model_internal::dependentsOnMap["user_id"] = new Array();
            model_internal::dependentsOnMap["login_at"] = new Array();
            model_internal::dependentsOnMap["version"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
            model_internal::collectionBaseMap["level"] = "String";
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["user"] = "it.ht.rcs.console.accounting.model.User";
        model_internal::propertyTypeMap["cookie"] = "String";
        model_internal::propertyTypeMap["time"] = "int";
        model_internal::propertyTypeMap["level"] = "ArrayCollection";
        model_internal::propertyTypeMap["_id"] = "String";
        model_internal::propertyTypeMap["address"] = "String";
        model_internal::propertyTypeMap["user_id"] = "String";
        model_internal::propertyTypeMap["login_at"] = "int";
        model_internal::propertyTypeMap["version"] = "String";

        model_internal::_instance = value;
        model_internal::_cookieValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCookie);
        model_internal::_cookieValidator.required = true;
        model_internal::_cookieValidator.requiredFieldError = "cookie is required";
        //model_internal::_cookieValidator.source = model_internal::_instance;
        //model_internal::_cookieValidator.property = "cookie";
        model_internal::_levelValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForLevel);
        model_internal::_levelValidator.required = true;
        model_internal::_levelValidator.requiredFieldError = "level is required";
        //model_internal::_levelValidator.source = model_internal::_instance;
        //model_internal::_levelValidator.property = "level";
        model_internal::__idValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationFor_id);
        model_internal::__idValidator.required = true;
        model_internal::__idValidator.requiredFieldError = "_id is required";
        //model_internal::__idValidator.source = model_internal::_instance;
        //model_internal::__idValidator.property = "_id";
        model_internal::_addressValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForAddress);
        model_internal::_addressValidator.required = true;
        model_internal::_addressValidator.requiredFieldError = "address is required";
        //model_internal::_addressValidator.source = model_internal::_instance;
        //model_internal::_addressValidator.property = "address";
        model_internal::_user_idValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForUser_id);
        model_internal::_user_idValidator.required = true;
        model_internal::_user_idValidator.requiredFieldError = "user_id is required";
        //model_internal::_user_idValidator.source = model_internal::_instance;
        //model_internal::_user_idValidator.property = "user_id";
        model_internal::_versionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForVersion);
        model_internal::_versionValidator.required = true;
        model_internal::_versionValidator.requiredFieldError = "version is required";
        //model_internal::_versionValidator.source = model_internal::_instance;
        //model_internal::_versionValidator.property = "version";
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
            throw new Error(propertyName + " is not a data property of entity Session");
            
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
            throw new Error(propertyName + " is not a collection property of entity Session");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of Session");

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
            throw new Error(propertyName + " does not exist for entity Session");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity Session");
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
            throw new Error(propertyName + " does not exist for entity Session");
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
    public function get isUserAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCookieAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTimeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLevelAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get is_idAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAddressAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUser_idAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLogin_atAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isVersionAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnCookie():void
    {
        if (model_internal::_cookieIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCookie = null;
            model_internal::calculateCookieIsValid();
        }
    }
    public function invalidateDependentOnLevel():void
    {
        if (model_internal::_levelIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfLevel = null;
            model_internal::calculateLevelIsValid();
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
    public function invalidateDependentOnAddress():void
    {
        if (model_internal::_addressIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfAddress = null;
            model_internal::calculateAddressIsValid();
        }
    }
    public function invalidateDependentOnUser_id():void
    {
        if (model_internal::_user_idIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfUser_id = null;
            model_internal::calculateUser_idIsValid();
        }
    }
    public function invalidateDependentOnVersion():void
    {
        if (model_internal::_versionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfVersion = null;
            model_internal::calculateVersionIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get userStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get cookieStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get cookieValidator() : StyleValidator
    {
        return model_internal::_cookieValidator;
    }

    model_internal function set _cookieIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_cookieIsValid;         
        if (oldValue !== value)
        {
            model_internal::_cookieIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cookieIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get cookieIsValid():Boolean
    {
        if (!model_internal::_cookieIsValidCacheInitialized)
        {
            model_internal::calculateCookieIsValid();
        }

        return model_internal::_cookieIsValid;
    }

    model_internal function calculateCookieIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_cookieValidator.validate(model_internal::_instance.cookie)
        model_internal::_cookieIsValid_der = (valRes.results == null);
        model_internal::_cookieIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::cookieValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::cookieValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get cookieValidationFailureMessages():Array
    {
        if (model_internal::_cookieValidationFailureMessages == null)
            model_internal::calculateCookieIsValid();

        return _cookieValidationFailureMessages;
    }

    model_internal function set cookieValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_cookieValidationFailureMessages;

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
            model_internal::_cookieValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cookieValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get timeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get levelStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get levelValidator() : StyleValidator
    {
        return model_internal::_levelValidator;
    }

    model_internal function set _levelIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_levelIsValid;         
        if (oldValue !== value)
        {
            model_internal::_levelIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "levelIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get levelIsValid():Boolean
    {
        if (!model_internal::_levelIsValidCacheInitialized)
        {
            model_internal::calculateLevelIsValid();
        }

        return model_internal::_levelIsValid;
    }

    model_internal function calculateLevelIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_levelValidator.validate(model_internal::_instance.level)
        model_internal::_levelIsValid_der = (valRes.results == null);
        model_internal::_levelIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::levelValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::levelValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get levelValidationFailureMessages():Array
    {
        if (model_internal::_levelValidationFailureMessages == null)
            model_internal::calculateLevelIsValid();

        return _levelValidationFailureMessages;
    }

    model_internal function set levelValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_levelValidationFailureMessages;

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
            model_internal::_levelValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "levelValidationFailureMessages", oldValue, value));
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
    public function get addressStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get addressValidator() : StyleValidator
    {
        return model_internal::_addressValidator;
    }

    model_internal function set _addressIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_addressIsValid;         
        if (oldValue !== value)
        {
            model_internal::_addressIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "addressIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get addressIsValid():Boolean
    {
        if (!model_internal::_addressIsValidCacheInitialized)
        {
            model_internal::calculateAddressIsValid();
        }

        return model_internal::_addressIsValid;
    }

    model_internal function calculateAddressIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_addressValidator.validate(model_internal::_instance.address)
        model_internal::_addressIsValid_der = (valRes.results == null);
        model_internal::_addressIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::addressValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::addressValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get addressValidationFailureMessages():Array
    {
        if (model_internal::_addressValidationFailureMessages == null)
            model_internal::calculateAddressIsValid();

        return _addressValidationFailureMessages;
    }

    model_internal function set addressValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_addressValidationFailureMessages;

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
            model_internal::_addressValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "addressValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get user_idStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get user_idValidator() : StyleValidator
    {
        return model_internal::_user_idValidator;
    }

    model_internal function set _user_idIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_user_idIsValid;         
        if (oldValue !== value)
        {
            model_internal::_user_idIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "user_idIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get user_idIsValid():Boolean
    {
        if (!model_internal::_user_idIsValidCacheInitialized)
        {
            model_internal::calculateUser_idIsValid();
        }

        return model_internal::_user_idIsValid;
    }

    model_internal function calculateUser_idIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_user_idValidator.validate(model_internal::_instance.user_id)
        model_internal::_user_idIsValid_der = (valRes.results == null);
        model_internal::_user_idIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::user_idValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::user_idValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get user_idValidationFailureMessages():Array
    {
        if (model_internal::_user_idValidationFailureMessages == null)
            model_internal::calculateUser_idIsValid();

        return _user_idValidationFailureMessages;
    }

    model_internal function set user_idValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_user_idValidationFailureMessages;

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
            model_internal::_user_idValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "user_idValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get login_atStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get versionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get versionValidator() : StyleValidator
    {
        return model_internal::_versionValidator;
    }

    model_internal function set _versionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_versionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_versionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "versionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get versionIsValid():Boolean
    {
        if (!model_internal::_versionIsValidCacheInitialized)
        {
            model_internal::calculateVersionIsValid();
        }

        return model_internal::_versionIsValid;
    }

    model_internal function calculateVersionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_versionValidator.validate(model_internal::_instance.version)
        model_internal::_versionIsValid_der = (valRes.results == null);
        model_internal::_versionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::versionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::versionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get versionValidationFailureMessages():Array
    {
        if (model_internal::_versionValidationFailureMessages == null)
            model_internal::calculateVersionIsValid();

        return _versionValidationFailureMessages;
    }

    model_internal function set versionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_versionValidationFailureMessages;

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
            model_internal::_versionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "versionValidationFailureMessages", oldValue, value));
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
            case("cookie"):
            {
                return cookieValidationFailureMessages;
            }
            case("level"):
            {
                return levelValidationFailureMessages;
            }
            case("_id"):
            {
                return _idValidationFailureMessages;
            }
            case("address"):
            {
                return addressValidationFailureMessages;
            }
            case("user_id"):
            {
                return user_idValidationFailureMessages;
            }
            case("version"):
            {
                return versionValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
