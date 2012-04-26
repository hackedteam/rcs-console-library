
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

    model_internal static var allProperties:Array = new Array("not_exist", "enabled", "desc", "group_ids", "locale", "contact", "pass", "timezone", "updated_at", "_id", "recent_ids", "privs", "dashboard_ids", "name", "created_at", "_mid");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("recent_ids", "_mid");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("not_exist", "enabled", "desc", "group_ids", "locale", "contact", "pass", "timezone", "updated_at", "_id", "recent_ids", "privs", "dashboard_ids", "name", "created_at", "_mid");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("not_exist", "enabled", "desc", "group_ids", "locale", "contact", "pass", "timezone", "updated_at", "_id", "recent_ids", "privs", "dashboard_ids", "name", "created_at", "_mid");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("not_exist", "enabled", "desc", "group_ids", "locale", "contact", "pass", "timezone", "updated_at", "_id", "recent_ids", "privs", "dashboard_ids", "name", "created_at", "_mid");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("group_ids", "recent_ids", "privs", "dashboard_ids");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "User";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _recent_idsIsValid:Boolean;
    model_internal var _recent_idsValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _recent_idsIsValidCacheInitialized:Boolean = false;
    model_internal var _recent_idsValidationFailureMessages:Array;

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
            model_internal::dependentsOnMap["enabled"] = new Array();
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
            model_internal::dependentsOnMap["_mid"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
            model_internal::collectionBaseMap["group_ids"] = "String";
            model_internal::collectionBaseMap["recent_ids"] = "String";
            model_internal::collectionBaseMap["privs"] = "String";
            model_internal::collectionBaseMap["dashboard_ids"] = "String";
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["not_exist"] = "String";
        model_internal::propertyTypeMap["enabled"] = "Boolean";
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
        model_internal::propertyTypeMap["_mid"] = "int";

        model_internal::_instance = value;
        model_internal::_recent_idsValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForRecent_ids);
        model_internal::_recent_idsValidator.required = true;
        model_internal::_recent_idsValidator.requiredFieldError = "recent_ids is required";
        //model_internal::_recent_idsValidator.source = model_internal::_instance;
        //model_internal::_recent_idsValidator.property = "recent_ids";
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
    public function get isEnabledAvailable():Boolean
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
    public function get is_midAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnRecent_ids():void
    {
        if (model_internal::_recent_idsIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfRecent_ids = null;
            model_internal::calculateRecent_idsIsValid();
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
    public function get enabledStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get descStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get group_idsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get localeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get contactStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get passStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
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

    [Bindable(event="propertyChange")]   
    public function get _idStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
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

    [Bindable(event="propertyChange")]   
    public function get dashboard_idsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get nameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get created_atStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get _midStyle():com.adobe.fiber.styles.Style
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
            case("recent_ids"):
            {
                return recent_idsValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
