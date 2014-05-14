
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
import it.ht.rcs.console.monitor.model.LicenseAgents;
import it.ht.rcs.console.monitor.model.LicenseCollectors;
import mx.collections.ArrayCollection;
import mx.events.ValidationResultEvent;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _LicenseEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("users", "exploits", "deletion", "archive", "maintenance", "agents", "alerting", "nia", "correlation", "type", "expiry", "collectors", "shards", "connectors", "serial", "rmi", "scout", "ocr", "hostname_sync", "translation", "modify", "intelligence");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("users", "exploits", "deletion", "archive", "maintenance", "agents", "alerting", "nia", "correlation", "type", "expiry", "collectors", "shards", "connectors", "serial", "rmi", "scout", "ocr", "hostname_sync", "translation", "modify", "intelligence");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("users", "exploits", "deletion", "archive", "maintenance", "agents", "alerting", "nia", "correlation", "type", "expiry", "collectors", "shards", "connectors", "serial", "rmi", "scout", "ocr", "hostname_sync", "translation", "modify", "intelligence");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("users", "exploits", "deletion", "archive", "maintenance", "agents", "alerting", "nia", "correlation", "type", "expiry", "collectors", "shards", "connectors", "serial", "rmi", "scout", "ocr", "hostname_sync", "translation", "modify", "intelligence");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("users", "exploits", "deletion", "archive", "maintenance", "agents", "alerting", "nia", "correlation", "type", "expiry", "collectors", "shards", "connectors", "serial", "rmi", "scout", "ocr", "hostname_sync", "translation", "modify", "intelligence");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("nia", "rmi");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "License";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _usersIsValid:Boolean;
    model_internal var _usersValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _usersIsValidCacheInitialized:Boolean = false;
    model_internal var _usersValidationFailureMessages:Array;
    
    model_internal var _agentsIsValid:Boolean;
    model_internal var _agentsValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _agentsIsValidCacheInitialized:Boolean = false;
    model_internal var _agentsValidationFailureMessages:Array;
    
    model_internal var _niaIsValid:Boolean;
    model_internal var _niaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _niaIsValidCacheInitialized:Boolean = false;
    model_internal var _niaValidationFailureMessages:Array;
    
    model_internal var _typeIsValid:Boolean;
    model_internal var _typeValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _typeIsValidCacheInitialized:Boolean = false;
    model_internal var _typeValidationFailureMessages:Array;
    
    model_internal var _collectorsIsValid:Boolean;
    model_internal var _collectorsValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _collectorsIsValidCacheInitialized:Boolean = false;
    model_internal var _collectorsValidationFailureMessages:Array;
    
    model_internal var _shardsIsValid:Boolean;
    model_internal var _shardsValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _shardsIsValidCacheInitialized:Boolean = false;
    model_internal var _shardsValidationFailureMessages:Array;
    
    model_internal var _serialIsValid:Boolean;
    model_internal var _serialValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _serialIsValidCacheInitialized:Boolean = false;
    model_internal var _serialValidationFailureMessages:Array;
    
    model_internal var _rmiIsValid:Boolean;
    model_internal var _rmiValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _rmiIsValidCacheInitialized:Boolean = false;
    model_internal var _rmiValidationFailureMessages:Array;

    model_internal var _instance:_Super_License;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _LicenseEntityMetadata(value : _Super_License)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["users"] = new Array();
            model_internal::dependentsOnMap["exploits"] = new Array();
            model_internal::dependentsOnMap["deletion"] = new Array();
            model_internal::dependentsOnMap["archive"] = new Array();
            model_internal::dependentsOnMap["maintenance"] = new Array();
            model_internal::dependentsOnMap["agents"] = new Array();
            model_internal::dependentsOnMap["alerting"] = new Array();
            model_internal::dependentsOnMap["nia"] = new Array();
            model_internal::dependentsOnMap["correlation"] = new Array();
            model_internal::dependentsOnMap["type"] = new Array();
            model_internal::dependentsOnMap["expiry"] = new Array();
            model_internal::dependentsOnMap["collectors"] = new Array();
            model_internal::dependentsOnMap["shards"] = new Array();
            model_internal::dependentsOnMap["connectors"] = new Array();
            model_internal::dependentsOnMap["serial"] = new Array();
            model_internal::dependentsOnMap["rmi"] = new Array();
            model_internal::dependentsOnMap["scout"] = new Array();
            model_internal::dependentsOnMap["ocr"] = new Array();
            model_internal::dependentsOnMap["hostname_sync"] = new Array();
            model_internal::dependentsOnMap["translation"] = new Array();
            model_internal::dependentsOnMap["modify"] = new Array();
            model_internal::dependentsOnMap["intelligence"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
            model_internal::collectionBaseMap["nia"] = "Object";
            model_internal::collectionBaseMap["rmi"] = "Boolean";
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["users"] = "Object";
        model_internal::propertyTypeMap["exploits"] = "Boolean";
        model_internal::propertyTypeMap["deletion"] = "Boolean";
        model_internal::propertyTypeMap["archive"] = "int";
        model_internal::propertyTypeMap["maintenance"] = "int";
        model_internal::propertyTypeMap["agents"] = "it.ht.rcs.console.monitor.model.LicenseAgents";
        model_internal::propertyTypeMap["alerting"] = "Boolean";
        model_internal::propertyTypeMap["nia"] = "ArrayCollection";
        model_internal::propertyTypeMap["correlation"] = "Boolean";
        model_internal::propertyTypeMap["type"] = "String";
        model_internal::propertyTypeMap["expiry"] = "int";
        model_internal::propertyTypeMap["collectors"] = "it.ht.rcs.console.monitor.model.LicenseCollectors";
        model_internal::propertyTypeMap["shards"] = "Object";
        model_internal::propertyTypeMap["connectors"] = "Boolean";
        model_internal::propertyTypeMap["serial"] = "String";
        model_internal::propertyTypeMap["rmi"] = "ArrayCollection";
        model_internal::propertyTypeMap["scout"] = "Boolean";
        model_internal::propertyTypeMap["ocr"] = "Boolean";
        model_internal::propertyTypeMap["hostname_sync"] = "Boolean";
        model_internal::propertyTypeMap["translation"] = "Boolean";
        model_internal::propertyTypeMap["modify"] = "Boolean";
        model_internal::propertyTypeMap["intelligence"] = "Boolean";

        model_internal::_instance = value;
        model_internal::_usersValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForUsers);
        model_internal::_usersValidator.required = true;
        model_internal::_usersValidator.requiredFieldError = "users is required";
        //model_internal::_usersValidator.source = model_internal::_instance;
        //model_internal::_usersValidator.property = "users";
        model_internal::_agentsValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForAgents);
        model_internal::_agentsValidator.required = true;
        model_internal::_agentsValidator.requiredFieldError = "agents is required";
        //model_internal::_agentsValidator.source = model_internal::_instance;
        //model_internal::_agentsValidator.property = "agents";
        model_internal::_niaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForNia);
        model_internal::_niaValidator.required = true;
        model_internal::_niaValidator.requiredFieldError = "nia is required";
        //model_internal::_niaValidator.source = model_internal::_instance;
        //model_internal::_niaValidator.property = "nia";
        model_internal::_typeValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForType);
        model_internal::_typeValidator.required = true;
        model_internal::_typeValidator.requiredFieldError = "type is required";
        //model_internal::_typeValidator.source = model_internal::_instance;
        //model_internal::_typeValidator.property = "type";
        model_internal::_collectorsValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCollectors);
        model_internal::_collectorsValidator.required = true;
        model_internal::_collectorsValidator.requiredFieldError = "collectors is required";
        //model_internal::_collectorsValidator.source = model_internal::_instance;
        //model_internal::_collectorsValidator.property = "collectors";
        model_internal::_shardsValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForShards);
        model_internal::_shardsValidator.required = true;
        model_internal::_shardsValidator.requiredFieldError = "shards is required";
        //model_internal::_shardsValidator.source = model_internal::_instance;
        //model_internal::_shardsValidator.property = "shards";
        model_internal::_serialValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForSerial);
        model_internal::_serialValidator.required = true;
        model_internal::_serialValidator.requiredFieldError = "serial is required";
        //model_internal::_serialValidator.source = model_internal::_instance;
        //model_internal::_serialValidator.property = "serial";
        model_internal::_rmiValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForRmi);
        model_internal::_rmiValidator.required = true;
        model_internal::_rmiValidator.requiredFieldError = "rmi is required";
        //model_internal::_rmiValidator.source = model_internal::_instance;
        //model_internal::_rmiValidator.property = "rmi";
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
            throw new Error(propertyName + " is not a data property of entity License");
            
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
            throw new Error(propertyName + " is not a collection property of entity License");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of License");

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
            throw new Error(propertyName + " does not exist for entity License");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity License");
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
            throw new Error(propertyName + " does not exist for entity License");
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
    public function get isUsersAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isExploitsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDeletionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isArchiveAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isMaintenanceAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAgentsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAlertingAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNiaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCorrelationAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTypeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isExpiryAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCollectorsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isShardsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isConnectorsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSerialAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRmiAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isScoutAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isOcrAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isHostname_syncAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTranslationAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isModifyAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIntelligenceAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnUsers():void
    {
        if (model_internal::_usersIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfUsers = null;
            model_internal::calculateUsersIsValid();
        }
    }
    public function invalidateDependentOnAgents():void
    {
        if (model_internal::_agentsIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfAgents = null;
            model_internal::calculateAgentsIsValid();
        }
    }
    public function invalidateDependentOnNia():void
    {
        if (model_internal::_niaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfNia = null;
            model_internal::calculateNiaIsValid();
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
    public function invalidateDependentOnCollectors():void
    {
        if (model_internal::_collectorsIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCollectors = null;
            model_internal::calculateCollectorsIsValid();
        }
    }
    public function invalidateDependentOnShards():void
    {
        if (model_internal::_shardsIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfShards = null;
            model_internal::calculateShardsIsValid();
        }
    }
    public function invalidateDependentOnSerial():void
    {
        if (model_internal::_serialIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfSerial = null;
            model_internal::calculateSerialIsValid();
        }
    }
    public function invalidateDependentOnRmi():void
    {
        if (model_internal::_rmiIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfRmi = null;
            model_internal::calculateRmiIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get usersStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get usersValidator() : StyleValidator
    {
        return model_internal::_usersValidator;
    }

    model_internal function set _usersIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_usersIsValid;         
        if (oldValue !== value)
        {
            model_internal::_usersIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "usersIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get usersIsValid():Boolean
    {
        if (!model_internal::_usersIsValidCacheInitialized)
        {
            model_internal::calculateUsersIsValid();
        }

        return model_internal::_usersIsValid;
    }

    model_internal function calculateUsersIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_usersValidator.validate(model_internal::_instance.users)
        model_internal::_usersIsValid_der = (valRes.results == null);
        model_internal::_usersIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::usersValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::usersValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get usersValidationFailureMessages():Array
    {
        if (model_internal::_usersValidationFailureMessages == null)
            model_internal::calculateUsersIsValid();

        return _usersValidationFailureMessages;
    }

    model_internal function set usersValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_usersValidationFailureMessages;

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
            model_internal::_usersValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "usersValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get exploitsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get deletionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get archiveStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get maintenanceStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get agentsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get agentsValidator() : StyleValidator
    {
        return model_internal::_agentsValidator;
    }

    model_internal function set _agentsIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_agentsIsValid;         
        if (oldValue !== value)
        {
            model_internal::_agentsIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "agentsIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get agentsIsValid():Boolean
    {
        if (!model_internal::_agentsIsValidCacheInitialized)
        {
            model_internal::calculateAgentsIsValid();
        }

        return model_internal::_agentsIsValid;
    }

    model_internal function calculateAgentsIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_agentsValidator.validate(model_internal::_instance.agents)
        model_internal::_agentsIsValid_der = (valRes.results == null);
        model_internal::_agentsIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::agentsValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::agentsValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get agentsValidationFailureMessages():Array
    {
        if (model_internal::_agentsValidationFailureMessages == null)
            model_internal::calculateAgentsIsValid();

        return _agentsValidationFailureMessages;
    }

    model_internal function set agentsValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_agentsValidationFailureMessages;

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
            model_internal::_agentsValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "agentsValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get alertingStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get niaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get niaValidator() : StyleValidator
    {
        return model_internal::_niaValidator;
    }

    model_internal function set _niaIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_niaIsValid;         
        if (oldValue !== value)
        {
            model_internal::_niaIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "niaIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get niaIsValid():Boolean
    {
        if (!model_internal::_niaIsValidCacheInitialized)
        {
            model_internal::calculateNiaIsValid();
        }

        return model_internal::_niaIsValid;
    }

    model_internal function calculateNiaIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_niaValidator.validate(model_internal::_instance.nia)
        model_internal::_niaIsValid_der = (valRes.results == null);
        model_internal::_niaIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::niaValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::niaValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get niaValidationFailureMessages():Array
    {
        if (model_internal::_niaValidationFailureMessages == null)
            model_internal::calculateNiaIsValid();

        return _niaValidationFailureMessages;
    }

    model_internal function set niaValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_niaValidationFailureMessages;

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
            model_internal::_niaValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "niaValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get correlationStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
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
    public function get expiryStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get collectorsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get collectorsValidator() : StyleValidator
    {
        return model_internal::_collectorsValidator;
    }

    model_internal function set _collectorsIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_collectorsIsValid;         
        if (oldValue !== value)
        {
            model_internal::_collectorsIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "collectorsIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get collectorsIsValid():Boolean
    {
        if (!model_internal::_collectorsIsValidCacheInitialized)
        {
            model_internal::calculateCollectorsIsValid();
        }

        return model_internal::_collectorsIsValid;
    }

    model_internal function calculateCollectorsIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_collectorsValidator.validate(model_internal::_instance.collectors)
        model_internal::_collectorsIsValid_der = (valRes.results == null);
        model_internal::_collectorsIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::collectorsValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::collectorsValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get collectorsValidationFailureMessages():Array
    {
        if (model_internal::_collectorsValidationFailureMessages == null)
            model_internal::calculateCollectorsIsValid();

        return _collectorsValidationFailureMessages;
    }

    model_internal function set collectorsValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_collectorsValidationFailureMessages;

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
            model_internal::_collectorsValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "collectorsValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get shardsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get shardsValidator() : StyleValidator
    {
        return model_internal::_shardsValidator;
    }

    model_internal function set _shardsIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_shardsIsValid;         
        if (oldValue !== value)
        {
            model_internal::_shardsIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "shardsIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get shardsIsValid():Boolean
    {
        if (!model_internal::_shardsIsValidCacheInitialized)
        {
            model_internal::calculateShardsIsValid();
        }

        return model_internal::_shardsIsValid;
    }

    model_internal function calculateShardsIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_shardsValidator.validate(model_internal::_instance.shards)
        model_internal::_shardsIsValid_der = (valRes.results == null);
        model_internal::_shardsIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::shardsValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::shardsValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get shardsValidationFailureMessages():Array
    {
        if (model_internal::_shardsValidationFailureMessages == null)
            model_internal::calculateShardsIsValid();

        return _shardsValidationFailureMessages;
    }

    model_internal function set shardsValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_shardsValidationFailureMessages;

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
            model_internal::_shardsValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "shardsValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get connectorsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get serialStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get serialValidator() : StyleValidator
    {
        return model_internal::_serialValidator;
    }

    model_internal function set _serialIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_serialIsValid;         
        if (oldValue !== value)
        {
            model_internal::_serialIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "serialIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get serialIsValid():Boolean
    {
        if (!model_internal::_serialIsValidCacheInitialized)
        {
            model_internal::calculateSerialIsValid();
        }

        return model_internal::_serialIsValid;
    }

    model_internal function calculateSerialIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_serialValidator.validate(model_internal::_instance.serial)
        model_internal::_serialIsValid_der = (valRes.results == null);
        model_internal::_serialIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::serialValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::serialValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get serialValidationFailureMessages():Array
    {
        if (model_internal::_serialValidationFailureMessages == null)
            model_internal::calculateSerialIsValid();

        return _serialValidationFailureMessages;
    }

    model_internal function set serialValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_serialValidationFailureMessages;

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
            model_internal::_serialValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "serialValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get rmiStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get rmiValidator() : StyleValidator
    {
        return model_internal::_rmiValidator;
    }

    model_internal function set _rmiIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_rmiIsValid;         
        if (oldValue !== value)
        {
            model_internal::_rmiIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rmiIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get rmiIsValid():Boolean
    {
        if (!model_internal::_rmiIsValidCacheInitialized)
        {
            model_internal::calculateRmiIsValid();
        }

        return model_internal::_rmiIsValid;
    }

    model_internal function calculateRmiIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_rmiValidator.validate(model_internal::_instance.rmi)
        model_internal::_rmiIsValid_der = (valRes.results == null);
        model_internal::_rmiIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::rmiValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::rmiValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get rmiValidationFailureMessages():Array
    {
        if (model_internal::_rmiValidationFailureMessages == null)
            model_internal::calculateRmiIsValid();

        return _rmiValidationFailureMessages;
    }

    model_internal function set rmiValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_rmiValidationFailureMessages;

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
            model_internal::_rmiValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rmiValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get scoutStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get ocrStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get hostname_syncStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get translationStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get modifyStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get intelligenceStyle():com.adobe.fiber.styles.Style
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
            case("users"):
            {
                return usersValidationFailureMessages;
            }
            case("agents"):
            {
                return agentsValidationFailureMessages;
            }
            case("nia"):
            {
                return niaValidationFailureMessages;
            }
            case("type"):
            {
                return typeValidationFailureMessages;
            }
            case("collectors"):
            {
                return collectorsValidationFailureMessages;
            }
            case("shards"):
            {
                return shardsValidationFailureMessages;
            }
            case("serial"):
            {
                return serialValidationFailureMessages;
            }
            case("rmi"):
            {
                return rmiValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
