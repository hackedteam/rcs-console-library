
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
import it.ht.rcs.console.accounting.model.Recent_ids;
import mx.collections.ArrayCollection;
import mx.events.ValidationResultEvent;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _UserEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("not_exist", "_mid", "enabled", "password_expired", "desc", "group_ids", "locale", "contact", "pass", "timezone", "updated_at", "_id", "recent_ids", "privs", "dashboard_ids", "name", "created_at", "ext_privs");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("_mid", "enabled", "password_expired", "desc", "group_ids", "locale", "contact", "pass", "timezone", "updated_at", "_id", "recent_ids", "privs", "dashboard_ids", "name", "created_at", "ext_privs");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("not_exist", "_mid", "enabled", "password_expired", "desc", "group_ids", "locale", "contact", "pass", "timezone", "updated_at", "_id", "recent_ids", "privs", "dashboard_ids", "name", "created_at", "ext_privs");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("not_exist", "_mid", "enabled", "password_expired", "desc", "group_ids", "locale", "contact", "pass", "timezone", "updated_at", "_id", "recent_ids", "privs", "dashboard_ids", "name", "created_at", "ext_privs");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("not_exist", "_mid", "enabled", "password_expired", "desc", "group_ids", "locale", "contact", "pass", "timezone", "updated_at", "_id", "recent_ids", "privs", "dashboard_ids", "name", "created_at", "ext_privs");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("group_ids", "recent_ids", "privs", "dashboard_ids");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "User";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _descIsValid:Boolean;
    model_internal var _descValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _descIsValidCacheInitialized:Boolean = false;
    model_internal var _descValidationFailureMessages:Array;
    
    model_internal var _group_idsIsValid:Boolean;
    model_internal var _group_idsValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _group_idsIsValidCacheInitialized:Boolean = false;
    model_internal var _group_idsValidationFailureMessages:Array;
    
    model_internal var _localeIsValid:Boolean;
    model_internal var _localeValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _localeIsValidCacheInitialized:Boolean = false;
    model_internal var _localeValidationFailureMessages:Array;
    
    model_internal var _contactIsValid:Boolean;
    model_internal var _contactValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _contactIsValidCacheInitialized:Boolean = false;
    model_internal var _contactValidationFailureMessages:Array;
    
    model_internal var _passIsValid:Boolean;
    model_internal var _passValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _passIsValidCacheInitialized:Boolean = false;
    model_internal var _passValidationFailureMessages:Array;
    
    model_internal var _updated_atIsValid:Boolean;
    model_internal var _updated_atValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _updated_atIsValidCacheInitialized:Boolean = false;
    model_internal var _updated_atValidationFailureMessages:Array;
    
    model_internal var __idIsValid:Boolean;
    model_internal var __idValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var __idIsValidCacheInitialized:Boolean = false;
    model_internal var __idValidationFailureMessages:Array;
    
    model_internal var _recent_idsIsValid:Boolean;
    model_internal var _recent_idsValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _recent_idsIsValidCacheInitialized:Boolean = false;
    model_internal var _recent_idsValidationFailureMessages:Array;
    
    model_internal var _privsIsValid:Boolean;
    model_internal var _privsValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _privsIsValidCacheInitialized:Boolean = false;
    model_internal var _privsValidationFailureMessages:Array;
    
    model_internal var _dashboard_idsIsValid:Boolean;
    model_internal var _dashboard_idsValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _dashboard_idsIsValidCacheInitialized:Boolean = false;
    model_internal var _dashboard_idsValidationFailureMessages:Array;
    
    model_internal var _nameIsValid:Boolean;
    model_internal var _nameValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _nameIsValidCacheInitialized:Boolean = false;
    model_internal var _nameValidationFailureMessages:Array;
    
    model_internal var _created_atIsValid:Boolean;
    model_internal var _created_atValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _created_atIsValidCacheInitialized:Boolean = false;
    model_internal var _created_atValidationFailureMessages:Array;

    model_internal var _instance:_Super_User;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _UserEntityMetadata(value : _Super_User)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["not_exist"] = new Array();
            model_internal::dependentsOnMap["_mid"] = new Array();
            model_internal::dependentsOnMap["enabled"] = new Array();
            model_internal::dependentsOnMap["password_expired"] = new Array();
            model_internal::dependentsOnMap["desc"] = new Array();
            model_internal::dependentsOnMap["group_ids"] = new Array();
            model_internal::dependentsOnMap["locale"] = new Array();
            model_internal::dependentsOnMap["contact"] = new Array();
            model_internal::dependentsOnMap["pass"] = new Array();
            model_internal::dependentsOnMap["timezone"] = new Array();
            model_internal::dependentsOnMap["updated_at"] = new Array();
            model_internal::dependentsOnMap["_id"] = new Array();
            model_internal::dependentsOnMap["recent_ids"] = new Array();
            model_internal::dependentsOnMap["privs"] = new Array();
            model_internal::dependentsOnMap["dashboard_ids"] = new Array();
            model_internal::dependentsOnMap["name"] = new Array();
            model_internal::dependentsOnMap["created_at"] = new Array();
            model_internal::dependentsOnMap["ext_privs"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
            model_internal::collectionBaseMap["group_ids"] = "String";
            model_internal::collectionBaseMap["recent_ids"] = "it.ht.rcs.console.accounting.model.Recent_ids";
            model_internal::collectionBaseMap["privs"] = "String";
            model_internal::collectionBaseMap["dashboard_ids"] = "Object";
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["not_exist"] = "String";
        model_internal::propertyTypeMap["_mid"] = "int";
        model_internal::propertyTypeMap["enabled"] = "Boolean";
        model_internal::propertyTypeMap["password_expired"] = "Boolean";
        model_internal::propertyTypeMap["desc"] = "String";
        model_internal::propertyTypeMap["group_ids"] = "ArrayCollection";
        model_internal::propertyTypeMap["locale"] = "String";
        model_internal::propertyTypeMap["contact"] = "String";
        model_internal::propertyTypeMap["pass"] = "String";
        model_internal::propertyTypeMap["timezone"] = "int";
        model_internal::propertyTypeMap["updated_at"] = "String";
        model_internal::propertyTypeMap["_id"] = "String";
        model_internal::propertyTypeMap["recent_ids"] = "ArrayCollection";
        model_internal::propertyTypeMap["privs"] = "ArrayCollection";
        model_internal::propertyTypeMap["dashboard_ids"] = "ArrayCollection";
        model_internal::propertyTypeMap["name"] = "String";
        model_internal::propertyTypeMap["created_at"] = "String";
        model_internal::propertyTypeMap["ext_privs"] = "Boolean";

        model_internal::_instance = value;
        model_internal::_descValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForDesc);
        model_internal::_descValidator.required = true;
        model_internal::_descValidator.requiredFieldError = "desc is required";
        //model_internal::_descValidator.source = model_internal::_instance;
        //model_internal::_descValidator.property = "desc";
        model_internal::_group_idsValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForGroup_ids);
        model_internal::_group_idsValidator.required = true;
        model_internal::_group_idsValidator.requiredFieldError = "group_ids is required";
        //model_internal::_group_idsValidator.source = model_internal::_instance;
        //model_internal::_group_idsValidator.property = "group_ids";
        model_internal::_localeValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForLocale);
        model_internal::_localeValidator.required = true;
        model_internal::_localeValidator.requiredFieldError = "locale is required";
        //model_internal::_localeValidator.source = model_internal::_instance;
        //model_internal::_localeValidator.property = "locale";
        model_internal::_contactValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForContact);
        model_internal::_contactValidator.required = true;
        model_internal::_contactValidator.requiredFieldError = "contact is required";
        //model_internal::_contactValidator.source = model_internal::_instance;
        //model_internal::_contactValidator.property = "contact";
        model_internal::_passValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPass);
        model_internal::_passValidator.required = true;
        model_internal::_passValidator.requiredFieldError = "pass is required";
        //model_internal::_passValidator.source = model_internal::_instance;
        //model_internal::_passValidator.property = "pass";
        model_internal::_updated_atValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForUpdated_at);
        model_internal::_updated_atValidator.required = true;
        model_internal::_updated_atValidator.requiredFieldError = "updated_at is required";
        //model_internal::_updated_atValidator.source = model_internal::_instance;
        //model_internal::_updated_atValidator.property = "updated_at";
        model_internal::__idValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationFor_id);
        model_internal::__idValidator.required = true;
        model_internal::__idValidator.requiredFieldError = "_id is required";
        //model_internal::__idValidator.source = model_internal::_instance;
        //model_internal::__idValidator.property = "_id";
        model_internal::_recent_idsValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForRecent_ids);
        model_internal::_recent_idsValidator.required = true;
        model_internal::_recent_idsValidator.requiredFieldError = "recent_ids is required";
        //model_internal::_recent_idsValidator.source = model_internal::_instance;
        //model_internal::_recent_idsValidator.property = "recent_ids";
        model_internal::_privsValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPrivs);
        model_internal::_privsValidator.required = true;
        model_internal::_privsValidator.requiredFieldError = "privs is required";
        //model_internal::_privsValidator.source = model_internal::_instance;
        //model_internal::_privsValidator.property = "privs";
        model_internal::_dashboard_idsValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForDashboard_ids);
        model_internal::_dashboard_idsValidator.required = true;
        model_internal::_dashboard_idsValidator.requiredFieldError = "dashboard_ids is required";
        //model_internal::_dashboard_idsValidator.source = model_internal::_instance;
        //model_internal::_dashboard_idsValidator.property = "dashboard_ids";
        model_internal::_nameValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForName);
        model_internal::_nameValidator.required = true;
        model_internal::_nameValidator.requiredFieldError = "name is required";
        //model_internal::_nameValidator.source = model_internal::_instance;
        //model_internal::_nameValidator.property = "name";
        model_internal::_created_atValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCreated_at);
        model_internal::_created_atValidator.required = true;
        model_internal::_created_atValidator.requiredFieldError = "created_at is required";
        //model_internal::_created_atValidator.source = model_internal::_instance;
        //model_internal::_created_atValidator.property = "created_at";
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
            throw new Error(propertyName + " is not a data property of entity User");
            
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
            throw new Error(propertyName + " is not a collection property of entity User");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of User");

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
            throw new Error(propertyName + " does not exist for entity User");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity User");
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
            throw new Error(propertyName + " does not exist for entity User");
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
    public function get isNot_existAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get is_midAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isEnabledAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPassword_expiredAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDescAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isGroup_idsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLocaleAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isContactAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPassAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTimezoneAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUpdated_atAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get is_idAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRecent_idsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPrivsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDashboard_idsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCreated_atAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isExt_privsAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnDesc():void
    {
        if (model_internal::_descIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfDesc = null;
            model_internal::calculateDescIsValid();
        }
    }
    public function invalidateDependentOnGroup_ids():void
    {
        if (model_internal::_group_idsIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfGroup_ids = null;
            model_internal::calculateGroup_idsIsValid();
        }
    }
    public function invalidateDependentOnLocale():void
    {
        if (model_internal::_localeIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfLocale = null;
            model_internal::calculateLocaleIsValid();
        }
    }
    public function invalidateDependentOnContact():void
    {
        if (model_internal::_contactIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfContact = null;
            model_internal::calculateContactIsValid();
        }
    }
    public function invalidateDependentOnPass():void
    {
        if (model_internal::_passIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPass = null;
            model_internal::calculatePassIsValid();
        }
    }
    public function invalidateDependentOnUpdated_at():void
    {
        if (model_internal::_updated_atIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfUpdated_at = null;
            model_internal::calculateUpdated_atIsValid();
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
    public function invalidateDependentOnRecent_ids():void
    {
        if (model_internal::_recent_idsIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfRecent_ids = null;
            model_internal::calculateRecent_idsIsValid();
        }
    }
    public function invalidateDependentOnPrivs():void
    {
        if (model_internal::_privsIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPrivs = null;
            model_internal::calculatePrivsIsValid();
        }
    }
    public function invalidateDependentOnDashboard_ids():void
    {
        if (model_internal::_dashboard_idsIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfDashboard_ids = null;
            model_internal::calculateDashboard_idsIsValid();
        }
    }
    public function invalidateDependentOnName():void
    {
        if (model_internal::_nameIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfName = null;
            model_internal::calculateNameIsValid();
        }
    }
    public function invalidateDependentOnCreated_at():void
    {
        if (model_internal::_created_atIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCreated_at = null;
            model_internal::calculateCreated_atIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get not_existStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get _midStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get enabledStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get password_expiredStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get descStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get descValidator() : StyleValidator
    {
        return model_internal::_descValidator;
    }

    model_internal function set _descIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_descIsValid;         
        if (oldValue !== value)
        {
            model_internal::_descIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get descIsValid():Boolean
    {
        if (!model_internal::_descIsValidCacheInitialized)
        {
            model_internal::calculateDescIsValid();
        }

        return model_internal::_descIsValid;
    }

    model_internal function calculateDescIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_descValidator.validate(model_internal::_instance.desc)
        model_internal::_descIsValid_der = (valRes.results == null);
        model_internal::_descIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::descValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::descValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get descValidationFailureMessages():Array
    {
        if (model_internal::_descValidationFailureMessages == null)
            model_internal::calculateDescIsValid();

        return _descValidationFailureMessages;
    }

    model_internal function set descValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_descValidationFailureMessages;

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
            model_internal::_descValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get group_idsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get group_idsValidator() : StyleValidator
    {
        return model_internal::_group_idsValidator;
    }

    model_internal function set _group_idsIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_group_idsIsValid;         
        if (oldValue !== value)
        {
            model_internal::_group_idsIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "group_idsIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get group_idsIsValid():Boolean
    {
        if (!model_internal::_group_idsIsValidCacheInitialized)
        {
            model_internal::calculateGroup_idsIsValid();
        }

        return model_internal::_group_idsIsValid;
    }

    model_internal function calculateGroup_idsIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_group_idsValidator.validate(model_internal::_instance.group_ids)
        model_internal::_group_idsIsValid_der = (valRes.results == null);
        model_internal::_group_idsIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::group_idsValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::group_idsValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get group_idsValidationFailureMessages():Array
    {
        if (model_internal::_group_idsValidationFailureMessages == null)
            model_internal::calculateGroup_idsIsValid();

        return _group_idsValidationFailureMessages;
    }

    model_internal function set group_idsValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_group_idsValidationFailureMessages;

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
            model_internal::_group_idsValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "group_idsValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get localeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get localeValidator() : StyleValidator
    {
        return model_internal::_localeValidator;
    }

    model_internal function set _localeIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_localeIsValid;         
        if (oldValue !== value)
        {
            model_internal::_localeIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "localeIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get localeIsValid():Boolean
    {
        if (!model_internal::_localeIsValidCacheInitialized)
        {
            model_internal::calculateLocaleIsValid();
        }

        return model_internal::_localeIsValid;
    }

    model_internal function calculateLocaleIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_localeValidator.validate(model_internal::_instance.locale)
        model_internal::_localeIsValid_der = (valRes.results == null);
        model_internal::_localeIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::localeValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::localeValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get localeValidationFailureMessages():Array
    {
        if (model_internal::_localeValidationFailureMessages == null)
            model_internal::calculateLocaleIsValid();

        return _localeValidationFailureMessages;
    }

    model_internal function set localeValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_localeValidationFailureMessages;

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
            model_internal::_localeValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "localeValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get contactStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get contactValidator() : StyleValidator
    {
        return model_internal::_contactValidator;
    }

    model_internal function set _contactIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_contactIsValid;         
        if (oldValue !== value)
        {
            model_internal::_contactIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "contactIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get contactIsValid():Boolean
    {
        if (!model_internal::_contactIsValidCacheInitialized)
        {
            model_internal::calculateContactIsValid();
        }

        return model_internal::_contactIsValid;
    }

    model_internal function calculateContactIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_contactValidator.validate(model_internal::_instance.contact)
        model_internal::_contactIsValid_der = (valRes.results == null);
        model_internal::_contactIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::contactValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::contactValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get contactValidationFailureMessages():Array
    {
        if (model_internal::_contactValidationFailureMessages == null)
            model_internal::calculateContactIsValid();

        return _contactValidationFailureMessages;
    }

    model_internal function set contactValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_contactValidationFailureMessages;

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
            model_internal::_contactValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "contactValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get passStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get passValidator() : StyleValidator
    {
        return model_internal::_passValidator;
    }

    model_internal function set _passIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_passIsValid;         
        if (oldValue !== value)
        {
            model_internal::_passIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "passIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get passIsValid():Boolean
    {
        if (!model_internal::_passIsValidCacheInitialized)
        {
            model_internal::calculatePassIsValid();
        }

        return model_internal::_passIsValid;
    }

    model_internal function calculatePassIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_passValidator.validate(model_internal::_instance.pass)
        model_internal::_passIsValid_der = (valRes.results == null);
        model_internal::_passIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::passValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::passValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get passValidationFailureMessages():Array
    {
        if (model_internal::_passValidationFailureMessages == null)
            model_internal::calculatePassIsValid();

        return _passValidationFailureMessages;
    }

    model_internal function set passValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_passValidationFailureMessages;

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
            model_internal::_passValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "passValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get timezoneStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get updated_atStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get updated_atValidator() : StyleValidator
    {
        return model_internal::_updated_atValidator;
    }

    model_internal function set _updated_atIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_updated_atIsValid;         
        if (oldValue !== value)
        {
            model_internal::_updated_atIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "updated_atIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get updated_atIsValid():Boolean
    {
        if (!model_internal::_updated_atIsValidCacheInitialized)
        {
            model_internal::calculateUpdated_atIsValid();
        }

        return model_internal::_updated_atIsValid;
    }

    model_internal function calculateUpdated_atIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_updated_atValidator.validate(model_internal::_instance.updated_at)
        model_internal::_updated_atIsValid_der = (valRes.results == null);
        model_internal::_updated_atIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::updated_atValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::updated_atValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get updated_atValidationFailureMessages():Array
    {
        if (model_internal::_updated_atValidationFailureMessages == null)
            model_internal::calculateUpdated_atIsValid();

        return _updated_atValidationFailureMessages;
    }

    model_internal function set updated_atValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_updated_atValidationFailureMessages;

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
            model_internal::_updated_atValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "updated_atValidationFailureMessages", oldValue, value));
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
    public function get recent_idsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get recent_idsValidator() : StyleValidator
    {
        return model_internal::_recent_idsValidator;
    }

    model_internal function set _recent_idsIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_recent_idsIsValid;         
        if (oldValue !== value)
        {
            model_internal::_recent_idsIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "recent_idsIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get recent_idsIsValid():Boolean
    {
        if (!model_internal::_recent_idsIsValidCacheInitialized)
        {
            model_internal::calculateRecent_idsIsValid();
        }

        return model_internal::_recent_idsIsValid;
    }

    model_internal function calculateRecent_idsIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_recent_idsValidator.validate(model_internal::_instance.recent_ids)
        model_internal::_recent_idsIsValid_der = (valRes.results == null);
        model_internal::_recent_idsIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::recent_idsValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::recent_idsValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get recent_idsValidationFailureMessages():Array
    {
        if (model_internal::_recent_idsValidationFailureMessages == null)
            model_internal::calculateRecent_idsIsValid();

        return _recent_idsValidationFailureMessages;
    }

    model_internal function set recent_idsValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_recent_idsValidationFailureMessages;

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
            model_internal::_recent_idsValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "recent_idsValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get privsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get privsValidator() : StyleValidator
    {
        return model_internal::_privsValidator;
    }

    model_internal function set _privsIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_privsIsValid;         
        if (oldValue !== value)
        {
            model_internal::_privsIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "privsIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get privsIsValid():Boolean
    {
        if (!model_internal::_privsIsValidCacheInitialized)
        {
            model_internal::calculatePrivsIsValid();
        }

        return model_internal::_privsIsValid;
    }

    model_internal function calculatePrivsIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_privsValidator.validate(model_internal::_instance.privs)
        model_internal::_privsIsValid_der = (valRes.results == null);
        model_internal::_privsIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::privsValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::privsValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get privsValidationFailureMessages():Array
    {
        if (model_internal::_privsValidationFailureMessages == null)
            model_internal::calculatePrivsIsValid();

        return _privsValidationFailureMessages;
    }

    model_internal function set privsValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_privsValidationFailureMessages;

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
            model_internal::_privsValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "privsValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get dashboard_idsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get dashboard_idsValidator() : StyleValidator
    {
        return model_internal::_dashboard_idsValidator;
    }

    model_internal function set _dashboard_idsIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_dashboard_idsIsValid;         
        if (oldValue !== value)
        {
            model_internal::_dashboard_idsIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dashboard_idsIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get dashboard_idsIsValid():Boolean
    {
        if (!model_internal::_dashboard_idsIsValidCacheInitialized)
        {
            model_internal::calculateDashboard_idsIsValid();
        }

        return model_internal::_dashboard_idsIsValid;
    }

    model_internal function calculateDashboard_idsIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_dashboard_idsValidator.validate(model_internal::_instance.dashboard_ids)
        model_internal::_dashboard_idsIsValid_der = (valRes.results == null);
        model_internal::_dashboard_idsIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::dashboard_idsValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::dashboard_idsValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get dashboard_idsValidationFailureMessages():Array
    {
        if (model_internal::_dashboard_idsValidationFailureMessages == null)
            model_internal::calculateDashboard_idsIsValid();

        return _dashboard_idsValidationFailureMessages;
    }

    model_internal function set dashboard_idsValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_dashboard_idsValidationFailureMessages;

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
            model_internal::_dashboard_idsValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dashboard_idsValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get nameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get nameValidator() : StyleValidator
    {
        return model_internal::_nameValidator;
    }

    model_internal function set _nameIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_nameIsValid;         
        if (oldValue !== value)
        {
            model_internal::_nameIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nameIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get nameIsValid():Boolean
    {
        if (!model_internal::_nameIsValidCacheInitialized)
        {
            model_internal::calculateNameIsValid();
        }

        return model_internal::_nameIsValid;
    }

    model_internal function calculateNameIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_nameValidator.validate(model_internal::_instance.name)
        model_internal::_nameIsValid_der = (valRes.results == null);
        model_internal::_nameIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::nameValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::nameValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get nameValidationFailureMessages():Array
    {
        if (model_internal::_nameValidationFailureMessages == null)
            model_internal::calculateNameIsValid();

        return _nameValidationFailureMessages;
    }

    model_internal function set nameValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_nameValidationFailureMessages;

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
            model_internal::_nameValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nameValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get created_atStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get created_atValidator() : StyleValidator
    {
        return model_internal::_created_atValidator;
    }

    model_internal function set _created_atIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_created_atIsValid;         
        if (oldValue !== value)
        {
            model_internal::_created_atIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "created_atIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get created_atIsValid():Boolean
    {
        if (!model_internal::_created_atIsValidCacheInitialized)
        {
            model_internal::calculateCreated_atIsValid();
        }

        return model_internal::_created_atIsValid;
    }

    model_internal function calculateCreated_atIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_created_atValidator.validate(model_internal::_instance.created_at)
        model_internal::_created_atIsValid_der = (valRes.results == null);
        model_internal::_created_atIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::created_atValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::created_atValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get created_atValidationFailureMessages():Array
    {
        if (model_internal::_created_atValidationFailureMessages == null)
            model_internal::calculateCreated_atIsValid();

        return _created_atValidationFailureMessages;
    }

    model_internal function set created_atValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_created_atValidationFailureMessages;

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
            model_internal::_created_atValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "created_atValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get ext_privsStyle():com.adobe.fiber.styles.Style
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
            case("desc"):
            {
                return descValidationFailureMessages;
            }
            case("group_ids"):
            {
                return group_idsValidationFailureMessages;
            }
            case("locale"):
            {
                return localeValidationFailureMessages;
            }
            case("contact"):
            {
                return contactValidationFailureMessages;
            }
            case("pass"):
            {
                return passValidationFailureMessages;
            }
            case("updated_at"):
            {
                return updated_atValidationFailureMessages;
            }
            case("_id"):
            {
                return _idValidationFailureMessages;
            }
            case("recent_ids"):
            {
                return recent_idsValidationFailureMessages;
            }
            case("privs"):
            {
                return privsValidationFailureMessages;
            }
            case("dashboard_ids"):
            {
                return dashboard_idsValidationFailureMessages;
            }
            case("name"):
            {
                return nameValidationFailureMessages;
            }
            case("created_at"):
            {
                return created_atValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
