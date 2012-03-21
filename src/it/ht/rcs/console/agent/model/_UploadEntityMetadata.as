
/**
 * This is a generated class and is not intended for modification.  
 */
package it.ht.rcs.console.agent.model
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
internal class _UploadEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("sent", "_id", "_grid_size", "filename", "_grid");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("sent", "_id", "_grid_size", "filename", "_grid");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("sent", "_id", "_grid_size", "filename", "_grid");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("sent", "_id", "_grid_size", "filename", "_grid");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("sent", "_id", "_grid_size", "filename", "_grid");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("_grid");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "Upload";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var __idIsValid:Boolean;
    model_internal var __idValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var __idIsValidCacheInitialized:Boolean = false;
    model_internal var __idValidationFailureMessages:Array;
    
    model_internal var _filenameIsValid:Boolean;
    model_internal var _filenameValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _filenameIsValidCacheInitialized:Boolean = false;
    model_internal var _filenameValidationFailureMessages:Array;
    
    model_internal var __gridIsValid:Boolean;
    model_internal var __gridValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var __gridIsValidCacheInitialized:Boolean = false;
    model_internal var __gridValidationFailureMessages:Array;

    model_internal var _instance:_Super_Upload;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _UploadEntityMetadata(value : _Super_Upload)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["sent"] = new Array();
            model_internal::dependentsOnMap["_id"] = new Array();
            model_internal::dependentsOnMap["_grid_size"] = new Array();
            model_internal::dependentsOnMap["filename"] = new Array();
            model_internal::dependentsOnMap["_grid"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
            model_internal::collectionBaseMap["_grid"] = "String";
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["sent"] = "Number";
        model_internal::propertyTypeMap["_id"] = "String";
        model_internal::propertyTypeMap["_grid_size"] = "int";
        model_internal::propertyTypeMap["filename"] = "String";
        model_internal::propertyTypeMap["_grid"] = "ArrayCollection";

        model_internal::_instance = value;
        model_internal::__idValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationFor_id);
        model_internal::__idValidator.required = true;
        model_internal::__idValidator.requiredFieldError = "_id is required";
        //model_internal::__idValidator.source = model_internal::_instance;
        //model_internal::__idValidator.property = "_id";
        model_internal::_filenameValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForFilename);
        model_internal::_filenameValidator.required = true;
        model_internal::_filenameValidator.requiredFieldError = "filename is required";
        //model_internal::_filenameValidator.source = model_internal::_instance;
        //model_internal::_filenameValidator.property = "filename";
        model_internal::__gridValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationFor_grid);
        model_internal::__gridValidator.required = true;
        model_internal::__gridValidator.requiredFieldError = "_grid is required";
        //model_internal::__gridValidator.source = model_internal::_instance;
        //model_internal::__gridValidator.property = "_grid";
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
            throw new Error(propertyName + " is not a data property of entity Upload");
            
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
            throw new Error(propertyName + " is not a collection property of entity Upload");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of Upload");

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
            throw new Error(propertyName + " does not exist for entity Upload");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity Upload");
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
            throw new Error(propertyName + " does not exist for entity Upload");
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
    public function get isSentAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get is_idAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get is_grid_sizeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFilenameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get is_gridAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOn_id():void
    {
        if (model_internal::__idIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOf_id = null;
            model_internal::calculate_idIsValid();
        }
    }
    public function invalidateDependentOnFilename():void
    {
        if (model_internal::_filenameIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfFilename = null;
            model_internal::calculateFilenameIsValid();
        }
    }
    public function invalidateDependentOn_grid():void
    {
        if (model_internal::__gridIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOf_grid = null;
            model_internal::calculate_gridIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get sentStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
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
    public function get _grid_sizeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get filenameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get filenameValidator() : StyleValidator
    {
        return model_internal::_filenameValidator;
    }

    model_internal function set _filenameIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_filenameIsValid;         
        if (oldValue !== value)
        {
            model_internal::_filenameIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "filenameIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get filenameIsValid():Boolean
    {
        if (!model_internal::_filenameIsValidCacheInitialized)
        {
            model_internal::calculateFilenameIsValid();
        }

        return model_internal::_filenameIsValid;
    }

    model_internal function calculateFilenameIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_filenameValidator.validate(model_internal::_instance.filename)
        model_internal::_filenameIsValid_der = (valRes.results == null);
        model_internal::_filenameIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::filenameValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::filenameValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get filenameValidationFailureMessages():Array
    {
        if (model_internal::_filenameValidationFailureMessages == null)
            model_internal::calculateFilenameIsValid();

        return _filenameValidationFailureMessages;
    }

    model_internal function set filenameValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_filenameValidationFailureMessages;

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
            model_internal::_filenameValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "filenameValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get _gridStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get _gridValidator() : StyleValidator
    {
        return model_internal::__gridValidator;
    }

    model_internal function set __gridIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::__gridIsValid;         
        if (oldValue !== value)
        {
            model_internal::__gridIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_gridIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get _gridIsValid():Boolean
    {
        if (!model_internal::__gridIsValidCacheInitialized)
        {
            model_internal::calculate_gridIsValid();
        }

        return model_internal::__gridIsValid;
    }

    model_internal function calculate_gridIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::__gridValidator.validate(model_internal::_instance._grid)
        model_internal::__gridIsValid_der = (valRes.results == null);
        model_internal::__gridIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::_gridValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::_gridValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get _gridValidationFailureMessages():Array
    {
        if (model_internal::__gridValidationFailureMessages == null)
            model_internal::calculate_gridIsValid();

        return __gridValidationFailureMessages;
    }

    model_internal function set _gridValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::__gridValidationFailureMessages;

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
            model_internal::__gridValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_gridValidationFailureMessages", oldValue, value));
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
            case("_id"):
            {
                return _idValidationFailureMessages;
            }
            case("filename"):
            {
                return filenameValidationFailureMessages;
            }
            case("_grid"):
            {
                return _gridValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
