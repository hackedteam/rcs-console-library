
/**
 * This is a generated class and is not intended for modification.  
 */
package it.ht.rcs.console.network.model
{
import com.adobe.fiber.styles.IStyle;
import com.adobe.fiber.styles.Style;
import com.adobe.fiber.styles.StyleValidator;
import com.adobe.fiber.valueobjects.AbstractEntityMetadata;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import it.ht.rcs.console.network.model.ProxyRule;
import mx.collections.ArrayCollection;
import mx.events.ValidationResultEvent;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _ProxyEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("rules", "version", "_mid", "redirection_tag", "desc", "address", "port", "updated_at", "poll", "_id", "configured", "name", "created_at", "redirect");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("rules", "version", "_mid", "redirection_tag");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("rules", "version", "_mid", "redirection_tag", "desc", "address", "port", "updated_at", "poll", "_id", "configured", "name", "created_at", "redirect");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("rules", "version", "_mid", "redirection_tag", "desc", "address", "port", "updated_at", "poll", "_id", "configured", "name", "created_at", "redirect");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("rules", "version", "_mid", "redirection_tag", "desc", "address", "port", "updated_at", "poll", "_id", "configured", "name", "created_at", "redirect");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("rules");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "Proxy";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _rulesIsValid:Boolean;
    model_internal var _rulesValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _rulesIsValidCacheInitialized:Boolean = false;
    model_internal var _rulesValidationFailureMessages:Array;
    
    model_internal var _redirection_tagIsValid:Boolean;
    model_internal var _redirection_tagValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _redirection_tagIsValidCacheInitialized:Boolean = false;
    model_internal var _redirection_tagValidationFailureMessages:Array;

    model_internal var _instance:_Super_Proxy;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _ProxyEntityMetadata(value : _Super_Proxy)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["rules"] = new Array();
            model_internal::dependentsOnMap["version"] = new Array();
            model_internal::dependentsOnMap["_mid"] = new Array();
            model_internal::dependentsOnMap["redirection_tag"] = new Array();
            model_internal::dependentsOnMap["desc"] = new Array();
            model_internal::dependentsOnMap["address"] = new Array();
            model_internal::dependentsOnMap["port"] = new Array();
            model_internal::dependentsOnMap["updated_at"] = new Array();
            model_internal::dependentsOnMap["poll"] = new Array();
            model_internal::dependentsOnMap["_id"] = new Array();
            model_internal::dependentsOnMap["configured"] = new Array();
            model_internal::dependentsOnMap["name"] = new Array();
            model_internal::dependentsOnMap["created_at"] = new Array();
            model_internal::dependentsOnMap["redirect"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
            model_internal::collectionBaseMap["rules"] = "it.ht.rcs.console.network.model.ProxyRule";
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["rules"] = "ArrayCollection";
        model_internal::propertyTypeMap["version"] = "int";
        model_internal::propertyTypeMap["_mid"] = "int";
        model_internal::propertyTypeMap["redirection_tag"] = "String";
        model_internal::propertyTypeMap["desc"] = "String";
        model_internal::propertyTypeMap["address"] = "String";
        model_internal::propertyTypeMap["port"] = "int";
        model_internal::propertyTypeMap["updated_at"] = "String";
        model_internal::propertyTypeMap["poll"] = "Boolean";
        model_internal::propertyTypeMap["_id"] = "String";
        model_internal::propertyTypeMap["configured"] = "Boolean";
        model_internal::propertyTypeMap["name"] = "String";
        model_internal::propertyTypeMap["created_at"] = "String";
        model_internal::propertyTypeMap["redirect"] = "String";

        model_internal::_instance = value;
        model_internal::_rulesValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForRules);
        model_internal::_rulesValidator.required = true;
        model_internal::_rulesValidator.requiredFieldError = "rules is required";
        //model_internal::_rulesValidator.source = model_internal::_instance;
        //model_internal::_rulesValidator.property = "rules";
        model_internal::_redirection_tagValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForRedirection_tag);
        model_internal::_redirection_tagValidator.required = true;
        model_internal::_redirection_tagValidator.requiredFieldError = "redirection_tag is required";
        //model_internal::_redirection_tagValidator.source = model_internal::_instance;
        //model_internal::_redirection_tagValidator.property = "redirection_tag";
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
            throw new Error(propertyName + " is not a data property of entity Proxy");
            
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
            throw new Error(propertyName + " is not a collection property of entity Proxy");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of Proxy");

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
            throw new Error(propertyName + " does not exist for entity Proxy");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity Proxy");
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
            throw new Error(propertyName + " does not exist for entity Proxy");
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
    public function get isRulesAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isVersionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get is_midAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRedirection_tagAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDescAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAddressAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPortAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUpdated_atAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPollAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get is_idAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isConfiguredAvailable():Boolean
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
    public function get isRedirectAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnRules():void
    {
        if (model_internal::_rulesIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfRules = null;
            model_internal::calculateRulesIsValid();
        }
    }
    public function invalidateDependentOnRedirection_tag():void
    {
        if (model_internal::_redirection_tagIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfRedirection_tag = null;
            model_internal::calculateRedirection_tagIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get rulesStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get rulesValidator() : StyleValidator
    {
        return model_internal::_rulesValidator;
    }

    model_internal function set _rulesIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_rulesIsValid;         
        if (oldValue !== value)
        {
            model_internal::_rulesIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rulesIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get rulesIsValid():Boolean
    {
        if (!model_internal::_rulesIsValidCacheInitialized)
        {
            model_internal::calculateRulesIsValid();
        }

        return model_internal::_rulesIsValid;
    }

    model_internal function calculateRulesIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_rulesValidator.validate(model_internal::_instance.rules)
        model_internal::_rulesIsValid_der = (valRes.results == null);
        model_internal::_rulesIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::rulesValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::rulesValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get rulesValidationFailureMessages():Array
    {
        if (model_internal::_rulesValidationFailureMessages == null)
            model_internal::calculateRulesIsValid();

        return _rulesValidationFailureMessages;
    }

    model_internal function set rulesValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_rulesValidationFailureMessages;

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
            model_internal::_rulesValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rulesValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get versionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get _midStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get redirection_tagStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get redirection_tagValidator() : StyleValidator
    {
        return model_internal::_redirection_tagValidator;
    }

    model_internal function set _redirection_tagIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_redirection_tagIsValid;         
        if (oldValue !== value)
        {
            model_internal::_redirection_tagIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "redirection_tagIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get redirection_tagIsValid():Boolean
    {
        if (!model_internal::_redirection_tagIsValidCacheInitialized)
        {
            model_internal::calculateRedirection_tagIsValid();
        }

        return model_internal::_redirection_tagIsValid;
    }

    model_internal function calculateRedirection_tagIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_redirection_tagValidator.validate(model_internal::_instance.redirection_tag)
        model_internal::_redirection_tagIsValid_der = (valRes.results == null);
        model_internal::_redirection_tagIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::redirection_tagValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::redirection_tagValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get redirection_tagValidationFailureMessages():Array
    {
        if (model_internal::_redirection_tagValidationFailureMessages == null)
            model_internal::calculateRedirection_tagIsValid();

        return _redirection_tagValidationFailureMessages;
    }

    model_internal function set redirection_tagValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_redirection_tagValidationFailureMessages;

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
            model_internal::_redirection_tagValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "redirection_tagValidationFailureMessages", oldValue, value));
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

    [Bindable(event="propertyChange")]   
    public function get addressStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get portStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get updated_atStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get pollStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get _idStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get configuredStyle():com.adobe.fiber.styles.Style
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
    public function get redirectStyle():com.adobe.fiber.styles.Style
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
            case("rules"):
            {
                return rulesValidationFailureMessages;
            }
            case("redirection_tag"):
            {
                return redirection_tagValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
