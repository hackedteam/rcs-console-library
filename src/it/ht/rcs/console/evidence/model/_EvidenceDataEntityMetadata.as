
/**
 * This is a generated class and is not intended for modification.  
 */
package it.ht.rcs.console.evidence.model
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
internal class _EvidenceDataEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("window", "_grid_size", "program", "resolution", "_grid", "y", "x");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("window", "_grid_size", "program", "resolution", "_grid", "y", "x");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("window", "_grid_size", "program", "resolution", "_grid", "y", "x");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("window", "_grid_size", "program", "resolution", "_grid", "y", "x");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("window", "_grid_size", "program", "resolution", "_grid", "y", "x");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "EvidenceData";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _windowIsValid:Boolean;
    model_internal var _windowValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _windowIsValidCacheInitialized:Boolean = false;
    model_internal var _windowValidationFailureMessages:Array;
    
    model_internal var _programIsValid:Boolean;
    model_internal var _programValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _programIsValidCacheInitialized:Boolean = false;
    model_internal var _programValidationFailureMessages:Array;
    
    model_internal var _resolutionIsValid:Boolean;
    model_internal var _resolutionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _resolutionIsValidCacheInitialized:Boolean = false;
    model_internal var _resolutionValidationFailureMessages:Array;
    
    model_internal var __gridIsValid:Boolean;
    model_internal var __gridValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var __gridIsValidCacheInitialized:Boolean = false;
    model_internal var __gridValidationFailureMessages:Array;

    model_internal var _instance:_Super_EvidenceData;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _EvidenceDataEntityMetadata(value : _Super_EvidenceData)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["window"] = new Array();
            model_internal::dependentsOnMap["_grid_size"] = new Array();
            model_internal::dependentsOnMap["program"] = new Array();
            model_internal::dependentsOnMap["resolution"] = new Array();
            model_internal::dependentsOnMap["_grid"] = new Array();
            model_internal::dependentsOnMap["y"] = new Array();
            model_internal::dependentsOnMap["x"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["window"] = "String";
        model_internal::propertyTypeMap["_grid_size"] = "int";
        model_internal::propertyTypeMap["program"] = "String";
        model_internal::propertyTypeMap["resolution"] = "String";
        model_internal::propertyTypeMap["_grid"] = "String";
        model_internal::propertyTypeMap["y"] = "int";
        model_internal::propertyTypeMap["x"] = "int";

        model_internal::_instance = value;
        model_internal::_windowValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForWindow);
        model_internal::_windowValidator.required = true;
        model_internal::_windowValidator.requiredFieldError = "window is required";
        //model_internal::_windowValidator.source = model_internal::_instance;
        //model_internal::_windowValidator.property = "window";
        model_internal::_programValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForProgram);
        model_internal::_programValidator.required = true;
        model_internal::_programValidator.requiredFieldError = "program is required";
        //model_internal::_programValidator.source = model_internal::_instance;
        //model_internal::_programValidator.property = "program";
        model_internal::_resolutionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForResolution);
        model_internal::_resolutionValidator.required = true;
        model_internal::_resolutionValidator.requiredFieldError = "resolution is required";
        //model_internal::_resolutionValidator.source = model_internal::_instance;
        //model_internal::_resolutionValidator.property = "resolution";
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
            throw new Error(propertyName + " is not a data property of entity EvidenceData");
            
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
            throw new Error(propertyName + " is not a collection property of entity EvidenceData");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of EvidenceData");

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
            throw new Error(propertyName + " does not exist for entity EvidenceData");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity EvidenceData");
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
            throw new Error(propertyName + " does not exist for entity EvidenceData");
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
    public function get isWindowAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get is_grid_sizeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isProgramAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isResolutionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get is_gridAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isYAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isXAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnWindow():void
    {
        if (model_internal::_windowIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfWindow = null;
            model_internal::calculateWindowIsValid();
        }
    }
    public function invalidateDependentOnProgram():void
    {
        if (model_internal::_programIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfProgram = null;
            model_internal::calculateProgramIsValid();
        }
    }
    public function invalidateDependentOnResolution():void
    {
        if (model_internal::_resolutionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfResolution = null;
            model_internal::calculateResolutionIsValid();
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
    public function get windowStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get windowValidator() : StyleValidator
    {
        return model_internal::_windowValidator;
    }

    model_internal function set _windowIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_windowIsValid;         
        if (oldValue !== value)
        {
            model_internal::_windowIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "windowIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get windowIsValid():Boolean
    {
        if (!model_internal::_windowIsValidCacheInitialized)
        {
            model_internal::calculateWindowIsValid();
        }

        return model_internal::_windowIsValid;
    }

    model_internal function calculateWindowIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_windowValidator.validate(model_internal::_instance.window)
        model_internal::_windowIsValid_der = (valRes.results == null);
        model_internal::_windowIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::windowValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::windowValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get windowValidationFailureMessages():Array
    {
        if (model_internal::_windowValidationFailureMessages == null)
            model_internal::calculateWindowIsValid();

        return _windowValidationFailureMessages;
    }

    model_internal function set windowValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_windowValidationFailureMessages;

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
            model_internal::_windowValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "windowValidationFailureMessages", oldValue, value));
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
    public function get programStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get programValidator() : StyleValidator
    {
        return model_internal::_programValidator;
    }

    model_internal function set _programIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_programIsValid;         
        if (oldValue !== value)
        {
            model_internal::_programIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "programIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get programIsValid():Boolean
    {
        if (!model_internal::_programIsValidCacheInitialized)
        {
            model_internal::calculateProgramIsValid();
        }

        return model_internal::_programIsValid;
    }

    model_internal function calculateProgramIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_programValidator.validate(model_internal::_instance.program)
        model_internal::_programIsValid_der = (valRes.results == null);
        model_internal::_programIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::programValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::programValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get programValidationFailureMessages():Array
    {
        if (model_internal::_programValidationFailureMessages == null)
            model_internal::calculateProgramIsValid();

        return _programValidationFailureMessages;
    }

    model_internal function set programValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_programValidationFailureMessages;

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
            model_internal::_programValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "programValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get resolutionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get resolutionValidator() : StyleValidator
    {
        return model_internal::_resolutionValidator;
    }

    model_internal function set _resolutionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_resolutionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_resolutionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "resolutionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get resolutionIsValid():Boolean
    {
        if (!model_internal::_resolutionIsValidCacheInitialized)
        {
            model_internal::calculateResolutionIsValid();
        }

        return model_internal::_resolutionIsValid;
    }

    model_internal function calculateResolutionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_resolutionValidator.validate(model_internal::_instance.resolution)
        model_internal::_resolutionIsValid_der = (valRes.results == null);
        model_internal::_resolutionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::resolutionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::resolutionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get resolutionValidationFailureMessages():Array
    {
        if (model_internal::_resolutionValidationFailureMessages == null)
            model_internal::calculateResolutionIsValid();

        return _resolutionValidationFailureMessages;
    }

    model_internal function set resolutionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_resolutionValidationFailureMessages;

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
            model_internal::_resolutionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "resolutionValidationFailureMessages", oldValue, value));
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

    [Bindable(event="propertyChange")]   
    public function get yStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get xStyle():com.adobe.fiber.styles.Style
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
            case("window"):
            {
                return windowValidationFailureMessages;
            }
            case("program"):
            {
                return programValidationFailureMessages;
            }
            case("resolution"):
            {
                return resolutionValidationFailureMessages;
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
