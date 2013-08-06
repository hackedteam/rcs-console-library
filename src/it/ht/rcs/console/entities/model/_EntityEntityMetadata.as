
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
import it.ht.rcs.console.entities.model.Handle;
import it.ht.rcs.console.entities.model.Link;
import it.ht.rcs.console.entities.model.Position;
import it.ht.rcs.console.entities.model.Position_attr;
import mx.collections.ArrayCollection;
import mx.events.ValidationResultEvent;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _EntityEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("position", "desc", "links", "type", "user_ids", "photos", "level", "updated_at", "position_attr", "analyzed", "path", "created_at", "handles", "num_links", "_id", "name");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("position", "desc", "links", "type", "user_ids", "photos", "level", "updated_at", "position_attr", "analyzed", "path", "created_at", "handles", "num_links", "_id", "name");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("position", "desc", "links", "type", "user_ids", "photos", "level", "updated_at", "position_attr", "analyzed", "path", "created_at", "handles", "num_links", "_id", "name");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("position", "desc", "links", "type", "user_ids", "photos", "level", "updated_at", "position_attr", "analyzed", "path", "created_at", "handles", "num_links", "_id", "name");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("position", "desc", "links", "type", "user_ids", "photos", "level", "updated_at", "position_attr", "analyzed", "path", "created_at", "handles", "num_links", "_id", "name");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("links", "user_ids", "photos", "path", "handles");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "Entity";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _positionIsValid:Boolean;
    model_internal var _positionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _positionIsValidCacheInitialized:Boolean = false;
    model_internal var _positionValidationFailureMessages:Array;
    
    model_internal var _descIsValid:Boolean;
    model_internal var _descValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _descIsValidCacheInitialized:Boolean = false;
    model_internal var _descValidationFailureMessages:Array;
    
    model_internal var _linksIsValid:Boolean;
    model_internal var _linksValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _linksIsValidCacheInitialized:Boolean = false;
    model_internal var _linksValidationFailureMessages:Array;
    
    model_internal var _typeIsValid:Boolean;
    model_internal var _typeValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _typeIsValidCacheInitialized:Boolean = false;
    model_internal var _typeValidationFailureMessages:Array;
    
    model_internal var _user_idsIsValid:Boolean;
    model_internal var _user_idsValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _user_idsIsValidCacheInitialized:Boolean = false;
    model_internal var _user_idsValidationFailureMessages:Array;
    
    model_internal var _photosIsValid:Boolean;
    model_internal var _photosValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _photosIsValidCacheInitialized:Boolean = false;
    model_internal var _photosValidationFailureMessages:Array;
    
    model_internal var _levelIsValid:Boolean;
    model_internal var _levelValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _levelIsValidCacheInitialized:Boolean = false;
    model_internal var _levelValidationFailureMessages:Array;
    
    model_internal var _updated_atIsValid:Boolean;
    model_internal var _updated_atValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _updated_atIsValidCacheInitialized:Boolean = false;
    model_internal var _updated_atValidationFailureMessages:Array;
    
    model_internal var _position_attrIsValid:Boolean;
    model_internal var _position_attrValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _position_attrIsValidCacheInitialized:Boolean = false;
    model_internal var _position_attrValidationFailureMessages:Array;
    
    model_internal var _analyzedIsValid:Boolean;
    model_internal var _analyzedValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _analyzedIsValidCacheInitialized:Boolean = false;
    model_internal var _analyzedValidationFailureMessages:Array;
    
    model_internal var _pathIsValid:Boolean;
    model_internal var _pathValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _pathIsValidCacheInitialized:Boolean = false;
    model_internal var _pathValidationFailureMessages:Array;
    
    model_internal var _created_atIsValid:Boolean;
    model_internal var _created_atValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _created_atIsValidCacheInitialized:Boolean = false;
    model_internal var _created_atValidationFailureMessages:Array;
    
    model_internal var _handlesIsValid:Boolean;
    model_internal var _handlesValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _handlesIsValidCacheInitialized:Boolean = false;
    model_internal var _handlesValidationFailureMessages:Array;
    
    model_internal var _num_linksIsValid:Boolean;
    model_internal var _num_linksValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _num_linksIsValidCacheInitialized:Boolean = false;
    model_internal var _num_linksValidationFailureMessages:Array;
    
    model_internal var __idIsValid:Boolean;
    model_internal var __idValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var __idIsValidCacheInitialized:Boolean = false;
    model_internal var __idValidationFailureMessages:Array;
    
    model_internal var _nameIsValid:Boolean;
    model_internal var _nameValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _nameIsValidCacheInitialized:Boolean = false;
    model_internal var _nameValidationFailureMessages:Array;

    model_internal var _instance:_Super_Entity;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _EntityEntityMetadata(value : _Super_Entity)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["position"] = new Array();
            model_internal::dependentsOnMap["desc"] = new Array();
            model_internal::dependentsOnMap["links"] = new Array();
            model_internal::dependentsOnMap["type"] = new Array();
            model_internal::dependentsOnMap["user_ids"] = new Array();
            model_internal::dependentsOnMap["photos"] = new Array();
            model_internal::dependentsOnMap["level"] = new Array();
            model_internal::dependentsOnMap["updated_at"] = new Array();
            model_internal::dependentsOnMap["position_attr"] = new Array();
            model_internal::dependentsOnMap["analyzed"] = new Array();
            model_internal::dependentsOnMap["path"] = new Array();
            model_internal::dependentsOnMap["created_at"] = new Array();
            model_internal::dependentsOnMap["handles"] = new Array();
            model_internal::dependentsOnMap["num_links"] = new Array();
            model_internal::dependentsOnMap["_id"] = new Array();
            model_internal::dependentsOnMap["name"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
            model_internal::collectionBaseMap["links"] = "it.ht.rcs.console.entities.model.Link";
            model_internal::collectionBaseMap["user_ids"] = "String";
            model_internal::collectionBaseMap["photos"] = "Object";
            model_internal::collectionBaseMap["path"] = "String";
            model_internal::collectionBaseMap["handles"] = "it.ht.rcs.console.entities.model.Handle";
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["position"] = "it.ht.rcs.console.entities.model.Position";
        model_internal::propertyTypeMap["desc"] = "String";
        model_internal::propertyTypeMap["links"] = "ArrayCollection";
        model_internal::propertyTypeMap["type"] = "String";
        model_internal::propertyTypeMap["user_ids"] = "ArrayCollection";
        model_internal::propertyTypeMap["photos"] = "ArrayCollection";
        model_internal::propertyTypeMap["level"] = "String";
        model_internal::propertyTypeMap["updated_at"] = "String";
        model_internal::propertyTypeMap["position_attr"] = "it.ht.rcs.console.entities.model.Position_attr";
        model_internal::propertyTypeMap["analyzed"] = "Object";
        model_internal::propertyTypeMap["path"] = "ArrayCollection";
        model_internal::propertyTypeMap["created_at"] = "String";
        model_internal::propertyTypeMap["handles"] = "ArrayCollection";
        model_internal::propertyTypeMap["num_links"] = "String";
        model_internal::propertyTypeMap["_id"] = "String";
        model_internal::propertyTypeMap["name"] = "String";

        model_internal::_instance = value;
        model_internal::_positionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPosition);
        model_internal::_positionValidator.required = true;
        model_internal::_positionValidator.requiredFieldError = "position is required";
        //model_internal::_positionValidator.source = model_internal::_instance;
        //model_internal::_positionValidator.property = "position";
        model_internal::_descValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForDesc);
        model_internal::_descValidator.required = true;
        model_internal::_descValidator.requiredFieldError = "desc is required";
        //model_internal::_descValidator.source = model_internal::_instance;
        //model_internal::_descValidator.property = "desc";
        model_internal::_linksValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForLinks);
        model_internal::_linksValidator.required = true;
        model_internal::_linksValidator.requiredFieldError = "links is required";
        //model_internal::_linksValidator.source = model_internal::_instance;
        //model_internal::_linksValidator.property = "links";
        model_internal::_typeValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForType);
        model_internal::_typeValidator.required = true;
        model_internal::_typeValidator.requiredFieldError = "type is required";
        //model_internal::_typeValidator.source = model_internal::_instance;
        //model_internal::_typeValidator.property = "type";
        model_internal::_user_idsValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForUser_ids);
        model_internal::_user_idsValidator.required = true;
        model_internal::_user_idsValidator.requiredFieldError = "user_ids is required";
        //model_internal::_user_idsValidator.source = model_internal::_instance;
        //model_internal::_user_idsValidator.property = "user_ids";
        model_internal::_photosValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPhotos);
        model_internal::_photosValidator.required = true;
        model_internal::_photosValidator.requiredFieldError = "photos is required";
        //model_internal::_photosValidator.source = model_internal::_instance;
        //model_internal::_photosValidator.property = "photos";
        model_internal::_levelValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForLevel);
        model_internal::_levelValidator.required = true;
        model_internal::_levelValidator.requiredFieldError = "level is required";
        //model_internal::_levelValidator.source = model_internal::_instance;
        //model_internal::_levelValidator.property = "level";
        model_internal::_updated_atValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForUpdated_at);
        model_internal::_updated_atValidator.required = true;
        model_internal::_updated_atValidator.requiredFieldError = "updated_at is required";
        //model_internal::_updated_atValidator.source = model_internal::_instance;
        //model_internal::_updated_atValidator.property = "updated_at";
        model_internal::_position_attrValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPosition_attr);
        model_internal::_position_attrValidator.required = true;
        model_internal::_position_attrValidator.requiredFieldError = "position_attr is required";
        //model_internal::_position_attrValidator.source = model_internal::_instance;
        //model_internal::_position_attrValidator.property = "position_attr";
        model_internal::_analyzedValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForAnalyzed);
        model_internal::_analyzedValidator.required = true;
        model_internal::_analyzedValidator.requiredFieldError = "analyzed is required";
        //model_internal::_analyzedValidator.source = model_internal::_instance;
        //model_internal::_analyzedValidator.property = "analyzed";
        model_internal::_pathValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPath);
        model_internal::_pathValidator.required = true;
        model_internal::_pathValidator.requiredFieldError = "path is required";
        //model_internal::_pathValidator.source = model_internal::_instance;
        //model_internal::_pathValidator.property = "path";
        model_internal::_created_atValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCreated_at);
        model_internal::_created_atValidator.required = true;
        model_internal::_created_atValidator.requiredFieldError = "created_at is required";
        //model_internal::_created_atValidator.source = model_internal::_instance;
        //model_internal::_created_atValidator.property = "created_at";
        model_internal::_handlesValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForHandles);
        model_internal::_handlesValidator.required = true;
        model_internal::_handlesValidator.requiredFieldError = "handles is required";
        //model_internal::_handlesValidator.source = model_internal::_instance;
        //model_internal::_handlesValidator.property = "handles";
        model_internal::_num_linksValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForNum_links);
        model_internal::_num_linksValidator.required = true;
        model_internal::_num_linksValidator.requiredFieldError = "num_links is required";
        //model_internal::_num_linksValidator.source = model_internal::_instance;
        //model_internal::_num_linksValidator.property = "num_links";
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
            throw new Error(propertyName + " is not a data property of entity Entity");
            
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
            throw new Error(propertyName + " is not a collection property of entity Entity");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of Entity");

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
            throw new Error(propertyName + " does not exist for entity Entity");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity Entity");
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
            throw new Error(propertyName + " does not exist for entity Entity");
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
    public function get isDescAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLinksAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTypeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUser_idsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPhotosAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLevelAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUpdated_atAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPosition_attrAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAnalyzedAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPathAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCreated_atAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isHandlesAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNum_linksAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get is_idAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNameAvailable():Boolean
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
    public function invalidateDependentOnDesc():void
    {
        if (model_internal::_descIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfDesc = null;
            model_internal::calculateDescIsValid();
        }
    }
    public function invalidateDependentOnLinks():void
    {
        if (model_internal::_linksIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfLinks = null;
            model_internal::calculateLinksIsValid();
        }
    }
    public function invalidateDependentOnType():void
    {
        if (model_internal::_typeIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfType = null;
            model_internal::calculateTypeIsValid();
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
    public function invalidateDependentOnPhotos():void
    {
        if (model_internal::_photosIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPhotos = null;
            model_internal::calculatePhotosIsValid();
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
    public function invalidateDependentOnUpdated_at():void
    {
        if (model_internal::_updated_atIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfUpdated_at = null;
            model_internal::calculateUpdated_atIsValid();
        }
    }
    public function invalidateDependentOnPosition_attr():void
    {
        if (model_internal::_position_attrIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPosition_attr = null;
            model_internal::calculatePosition_attrIsValid();
        }
    }
    public function invalidateDependentOnAnalyzed():void
    {
        if (model_internal::_analyzedIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfAnalyzed = null;
            model_internal::calculateAnalyzedIsValid();
        }
    }
    public function invalidateDependentOnPath():void
    {
        if (model_internal::_pathIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPath = null;
            model_internal::calculatePathIsValid();
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
    public function invalidateDependentOnHandles():void
    {
        if (model_internal::_handlesIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfHandles = null;
            model_internal::calculateHandlesIsValid();
        }
    }
    public function invalidateDependentOnNum_links():void
    {
        if (model_internal::_num_linksIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfNum_links = null;
            model_internal::calculateNum_linksIsValid();
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
    public function get linksStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get linksValidator() : StyleValidator
    {
        return model_internal::_linksValidator;
    }

    model_internal function set _linksIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_linksIsValid;         
        if (oldValue !== value)
        {
            model_internal::_linksIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "linksIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get linksIsValid():Boolean
    {
        if (!model_internal::_linksIsValidCacheInitialized)
        {
            model_internal::calculateLinksIsValid();
        }

        return model_internal::_linksIsValid;
    }

    model_internal function calculateLinksIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_linksValidator.validate(model_internal::_instance.links)
        model_internal::_linksIsValid_der = (valRes.results == null);
        model_internal::_linksIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::linksValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::linksValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get linksValidationFailureMessages():Array
    {
        if (model_internal::_linksValidationFailureMessages == null)
            model_internal::calculateLinksIsValid();

        return _linksValidationFailureMessages;
    }

    model_internal function set linksValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_linksValidationFailureMessages;

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
            model_internal::_linksValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "linksValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get typeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get typeValidator() : StyleValidator
    {
        return model_internal::_typeValidator;
    }

    model_internal function set _typeIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_typeIsValid;         
        if (oldValue !== value)
        {
            model_internal::_typeIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "typeIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get typeIsValid():Boolean
    {
        if (!model_internal::_typeIsValidCacheInitialized)
        {
            model_internal::calculateTypeIsValid();
        }

        return model_internal::_typeIsValid;
    }

    model_internal function calculateTypeIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_typeValidator.validate(model_internal::_instance.type)
        model_internal::_typeIsValid_der = (valRes.results == null);
        model_internal::_typeIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::typeValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::typeValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get typeValidationFailureMessages():Array
    {
        if (model_internal::_typeValidationFailureMessages == null)
            model_internal::calculateTypeIsValid();

        return _typeValidationFailureMessages;
    }

    model_internal function set typeValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_typeValidationFailureMessages;

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
            model_internal::_typeValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "typeValidationFailureMessages", oldValue, value));
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

    [Bindable(event="propertyChange")]   
    public function get photosStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get photosValidator() : StyleValidator
    {
        return model_internal::_photosValidator;
    }

    model_internal function set _photosIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_photosIsValid;         
        if (oldValue !== value)
        {
            model_internal::_photosIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "photosIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get photosIsValid():Boolean
    {
        if (!model_internal::_photosIsValidCacheInitialized)
        {
            model_internal::calculatePhotosIsValid();
        }

        return model_internal::_photosIsValid;
    }

    model_internal function calculatePhotosIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_photosValidator.validate(model_internal::_instance.photos)
        model_internal::_photosIsValid_der = (valRes.results == null);
        model_internal::_photosIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::photosValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::photosValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get photosValidationFailureMessages():Array
    {
        if (model_internal::_photosValidationFailureMessages == null)
            model_internal::calculatePhotosIsValid();

        return _photosValidationFailureMessages;
    }

    model_internal function set photosValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_photosValidationFailureMessages;

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
            model_internal::_photosValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "photosValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
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
    public function get position_attrStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get position_attrValidator() : StyleValidator
    {
        return model_internal::_position_attrValidator;
    }

    model_internal function set _position_attrIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_position_attrIsValid;         
        if (oldValue !== value)
        {
            model_internal::_position_attrIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "position_attrIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get position_attrIsValid():Boolean
    {
        if (!model_internal::_position_attrIsValidCacheInitialized)
        {
            model_internal::calculatePosition_attrIsValid();
        }

        return model_internal::_position_attrIsValid;
    }

    model_internal function calculatePosition_attrIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_position_attrValidator.validate(model_internal::_instance.position_attr)
        model_internal::_position_attrIsValid_der = (valRes.results == null);
        model_internal::_position_attrIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::position_attrValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::position_attrValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get position_attrValidationFailureMessages():Array
    {
        if (model_internal::_position_attrValidationFailureMessages == null)
            model_internal::calculatePosition_attrIsValid();

        return _position_attrValidationFailureMessages;
    }

    model_internal function set position_attrValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_position_attrValidationFailureMessages;

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
            model_internal::_position_attrValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "position_attrValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get analyzedStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get analyzedValidator() : StyleValidator
    {
        return model_internal::_analyzedValidator;
    }

    model_internal function set _analyzedIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_analyzedIsValid;         
        if (oldValue !== value)
        {
            model_internal::_analyzedIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "analyzedIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get analyzedIsValid():Boolean
    {
        if (!model_internal::_analyzedIsValidCacheInitialized)
        {
            model_internal::calculateAnalyzedIsValid();
        }

        return model_internal::_analyzedIsValid;
    }

    model_internal function calculateAnalyzedIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_analyzedValidator.validate(model_internal::_instance.analyzed)
        model_internal::_analyzedIsValid_der = (valRes.results == null);
        model_internal::_analyzedIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::analyzedValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::analyzedValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get analyzedValidationFailureMessages():Array
    {
        if (model_internal::_analyzedValidationFailureMessages == null)
            model_internal::calculateAnalyzedIsValid();

        return _analyzedValidationFailureMessages;
    }

    model_internal function set analyzedValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_analyzedValidationFailureMessages;

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
            model_internal::_analyzedValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "analyzedValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get pathStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get pathValidator() : StyleValidator
    {
        return model_internal::_pathValidator;
    }

    model_internal function set _pathIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_pathIsValid;         
        if (oldValue !== value)
        {
            model_internal::_pathIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "pathIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get pathIsValid():Boolean
    {
        if (!model_internal::_pathIsValidCacheInitialized)
        {
            model_internal::calculatePathIsValid();
        }

        return model_internal::_pathIsValid;
    }

    model_internal function calculatePathIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_pathValidator.validate(model_internal::_instance.path)
        model_internal::_pathIsValid_der = (valRes.results == null);
        model_internal::_pathIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::pathValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::pathValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get pathValidationFailureMessages():Array
    {
        if (model_internal::_pathValidationFailureMessages == null)
            model_internal::calculatePathIsValid();

        return _pathValidationFailureMessages;
    }

    model_internal function set pathValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_pathValidationFailureMessages;

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
            model_internal::_pathValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "pathValidationFailureMessages", oldValue, value));
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
    public function get handlesStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get handlesValidator() : StyleValidator
    {
        return model_internal::_handlesValidator;
    }

    model_internal function set _handlesIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_handlesIsValid;         
        if (oldValue !== value)
        {
            model_internal::_handlesIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "handlesIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get handlesIsValid():Boolean
    {
        if (!model_internal::_handlesIsValidCacheInitialized)
        {
            model_internal::calculateHandlesIsValid();
        }

        return model_internal::_handlesIsValid;
    }

    model_internal function calculateHandlesIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_handlesValidator.validate(model_internal::_instance.handles)
        model_internal::_handlesIsValid_der = (valRes.results == null);
        model_internal::_handlesIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::handlesValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::handlesValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get handlesValidationFailureMessages():Array
    {
        if (model_internal::_handlesValidationFailureMessages == null)
            model_internal::calculateHandlesIsValid();

        return _handlesValidationFailureMessages;
    }

    model_internal function set handlesValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_handlesValidationFailureMessages;

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
            model_internal::_handlesValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "handlesValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get num_linksStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get num_linksValidator() : StyleValidator
    {
        return model_internal::_num_linksValidator;
    }

    model_internal function set _num_linksIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_num_linksIsValid;         
        if (oldValue !== value)
        {
            model_internal::_num_linksIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "num_linksIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get num_linksIsValid():Boolean
    {
        if (!model_internal::_num_linksIsValidCacheInitialized)
        {
            model_internal::calculateNum_linksIsValid();
        }

        return model_internal::_num_linksIsValid;
    }

    model_internal function calculateNum_linksIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_num_linksValidator.validate(model_internal::_instance.num_links)
        model_internal::_num_linksIsValid_der = (valRes.results == null);
        model_internal::_num_linksIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::num_linksValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::num_linksValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get num_linksValidationFailureMessages():Array
    {
        if (model_internal::_num_linksValidationFailureMessages == null)
            model_internal::calculateNum_linksIsValid();

        return _num_linksValidationFailureMessages;
    }

    model_internal function set num_linksValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_num_linksValidationFailureMessages;

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
            model_internal::_num_linksValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "num_linksValidationFailureMessages", oldValue, value));
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
            case("desc"):
            {
                return descValidationFailureMessages;
            }
            case("links"):
            {
                return linksValidationFailureMessages;
            }
            case("type"):
            {
                return typeValidationFailureMessages;
            }
            case("user_ids"):
            {
                return user_idsValidationFailureMessages;
            }
            case("photos"):
            {
                return photosValidationFailureMessages;
            }
            case("level"):
            {
                return levelValidationFailureMessages;
            }
            case("updated_at"):
            {
                return updated_atValidationFailureMessages;
            }
            case("position_attr"):
            {
                return position_attrValidationFailureMessages;
            }
            case("analyzed"):
            {
                return analyzedValidationFailureMessages;
            }
            case("path"):
            {
                return pathValidationFailureMessages;
            }
            case("created_at"):
            {
                return created_atValidationFailureMessages;
            }
            case("handles"):
            {
                return handlesValidationFailureMessages;
            }
            case("num_links"):
            {
                return num_linksValidationFailureMessages;
            }
            case("_id"):
            {
                return _idValidationFailureMessages;
            }
            case("name"):
            {
                return nameValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
