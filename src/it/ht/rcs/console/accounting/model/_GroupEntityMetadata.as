
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
internal class _GroupEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("updated_at", "item_ids", "_id", "alert", "name", "created_at", "user_ids");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("updated_at", "item_ids", "_id", "alert", "name", "created_at", "user_ids");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("updated_at", "item_ids", "_id", "alert", "name", "created_at", "user_ids");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("updated_at", "item_ids", "_id", "alert", "name", "created_at", "user_ids");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("updated_at", "item_ids", "_id", "alert", "name", "created_at", "user_ids");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("item_ids", "user_ids");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "Group";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _updated_atIsValid:Boolean;
    model_internal var _updated_atValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _updated_atIsValidCacheInitialized:Boolean = false;
    model_internal var _updated_atValidationFailureMessages:Array;
    
    model_internal var _item_idsIsValid:Boolean;
    model_internal var _item_idsValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _item_idsIsValidCacheInitialized:Boolean = false;
    model_internal var _item_idsValidationFailureMessages:Array;
    
    model_internal var __idIsValid:Boolean;
    model_internal var __idValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var __idIsValidCacheInitialized:Boolean = false;
    model_internal var __idValidationFailureMessages:Array;
    
    model_internal var _nameIsValid:Boolean;
    model_internal var _nameValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _nameIsValidCacheInitialized:Boolean = false;
    model_internal var _nameValidationFailureMessages:Array;
    
    model_internal var _created_atIsValid:Boolean;
    model_internal var _created_atValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _created_atIsValidCacheInitialized:Boolean = false;
    model_internal var _created_atValidationFailureMessages:Array;
    
    model_internal var _user_idsIsValid:Boolean;
    model_internal var _user_idsValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _user_idsIsValidCacheInitialized:Boolean = false;
    model_internal var _user_idsValidationFailureMessages:Array;

    model_internal var _instance:_Super_Group;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _GroupEntityMetadata(value : _Super_Group)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["updated_at"] = new Array();
            model_internal::dependentsOnMap["item_ids"] = new Array();
            model_internal::dependentsOnMap["_id"] = new Array();
            model_internal::dependentsOnMap["alert"] = new Array();
            model_internal::dependentsOnMap["name"] = new Array();
            model_internal::dependentsOnMap["created_at"] = new Array();
            model_internal::dependentsOnMap["user_ids"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
            model_internal::collectionBaseMap["item_ids"] = "String";
            model_internal::collectionBaseMap["user_ids"] = "String";
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["updated_at"] = "String";
        model_internal::propertyTypeMap["item_ids"] = "ArrayCollection";
        model_internal::propertyTypeMap["_id"] = "String";
        model_internal::propertyTypeMap["alert"] = "Boolean";
        model_internal::propertyTypeMap["name"] = "String";
        model_internal::propertyTypeMap["created_at"] = "String";
        model_internal::propertyTypeMap["user_ids"] = "ArrayCollection";

        model_internal::_instance = value;
        model_internal::_updated_atValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForUpdated_at);
        model_internal::_updated_atValidator.required = true;
        model_internal::_updated_atValidator.requiredFieldError = "updated_at is required";
        //model_internal::_updated_atValidator.source = model_internal::_instance;
        //model_internal::_updated_atValidator.property = "updated_at";
        model_internal::_item_idsValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForItem_ids);
        model_internal::_item_idsValidator.required = true;
        model_internal::_item_idsValidator.requiredFieldError = "item_ids is required";
        //model_internal::_item_idsValidator.source = model_internal::_instance;
        //model_internal::_item_idsValidator.property = "item_ids";
        model_internal::__idValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationFor_id);
        model_internal::__idValidator.required = true;
        model_internal::__idValidator.requiredFieldError = "_id is required";
        //model_internal::__idValidator.source = model_internal::_instance;
        //model_internal::__idValidator.property = "_id";
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
        model_internal::_user_idsValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForUser_ids);
        model_internal::_user_idsValidator.required = true;
        model_internal::_user_idsValidator.requiredFieldError = "user_ids is required";
        //model_internal::_user_idsValidator.source = model_internal::_instance;
        //model_internal::_user_idsValidator.property = "user_ids";
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
            throw new Error(propertyName + " is not a data property of entity Group");
            
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
            throw new Error(propertyName + " is not a collection property of entity Group");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of Group");

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
            throw new Error(propertyName + " does not exist for entity Group");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity Group");
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
            throw new Error(propertyName + " does not exist for entity Group");
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
    public function get isUpdated_atAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isItem_idsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get is_idAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAlertAvailable():Boolean
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
    public function get isUser_idsAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnUpdated_at():void
    {
        if (model_internal::_updated_atIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfUpdated_at = null;
            model_internal::calculateUpdated_atIsValid();
        }
    }
    public function invalidateDependentOnItem_ids():void
    {
        if (model_internal::_item_idsIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfItem_ids = null;
            model_internal::calculateItem_idsIsValid();
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
    public function invalidateDependentOnUser_ids():void
    {
        if (model_internal::_user_idsIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfUser_ids = null;
            model_internal::calculateUser_idsIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
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
    public function get item_idsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get item_idsValidator() : StyleValidator
    {
        return model_internal::_item_idsValidator;
    }

    model_internal function set _item_idsIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_item_idsIsValid;         
        if (oldValue !== value)
        {
            model_internal::_item_idsIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "item_idsIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get item_idsIsValid():Boolean
    {
        if (!model_internal::_item_idsIsValidCacheInitialized)
        {
            model_internal::calculateItem_idsIsValid();
        }

        return model_internal::_item_idsIsValid;
    }

    model_internal function calculateItem_idsIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_item_idsValidator.validate(model_internal::_instance.item_ids)
        model_internal::_item_idsIsValid_der = (valRes.results == null);
        model_internal::_item_idsIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::item_idsValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::item_idsValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get item_idsValidationFailureMessages():Array
    {
        if (model_internal::_item_idsValidationFailureMessages == null)
            model_internal::calculateItem_idsIsValid();

        return _item_idsValidationFailureMessages;
    }

    model_internal function set item_idsValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_item_idsValidationFailureMessages;

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
            model_internal::_item_idsValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "item_idsValidationFailureMessages", oldValue, value));
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
    public function get alertStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
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
    public function get user_idsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get user_idsValidator() : StyleValidator
    {
        return model_internal::_user_idsValidator;
    }

    model_internal function set _user_idsIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_user_idsIsValid;         
        if (oldValue !== value)
        {
            model_internal::_user_idsIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "user_idsIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get user_idsIsValid():Boolean
    {
        if (!model_internal::_user_idsIsValidCacheInitialized)
        {
            model_internal::calculateUser_idsIsValid();
        }

        return model_internal::_user_idsIsValid;
    }

    model_internal function calculateUser_idsIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_user_idsValidator.validate(model_internal::_instance.user_ids)
        model_internal::_user_idsIsValid_der = (valRes.results == null);
        model_internal::_user_idsIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::user_idsValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::user_idsValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get user_idsValidationFailureMessages():Array
    {
        if (model_internal::_user_idsValidationFailureMessages == null)
            model_internal::calculateUser_idsIsValid();

        return _user_idsValidationFailureMessages;
    }

    model_internal function set user_idsValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_user_idsValidationFailureMessages;

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
            model_internal::_user_idsValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "user_idsValidationFailureMessages", oldValue, value));
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
            case("updated_at"):
            {
                return updated_atValidationFailureMessages;
            }
            case("item_ids"):
            {
                return item_idsValidationFailureMessages;
            }
            case("_id"):
            {
                return _idValidationFailureMessages;
            }
            case("name"):
            {
                return nameValidationFailureMessages;
            }
            case("created_at"):
            {
                return created_atValidationFailureMessages;
            }
            case("user_ids"):
            {
                return user_idsValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
