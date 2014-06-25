
/**
 * This is a generated class and is not intended for modification.  
 */
package it.ht.rcs.console.evidence.model
{
import com.adobe.fiber.styles.IStyle;
import com.adobe.fiber.styles.Style;
import com.adobe.fiber.valueobjects.AbstractEntityMetadata;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import it.ht.rcs.console.evidence.model.EvidenceDataAddress;
import it.ht.rcs.console.evidence.model.EvidenceDataCell;
import it.ht.rcs.console.evidence.model.EvidenceDataWifi;
import mx.collections.ArrayCollection;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _EvidenceDataEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("window", "_grid_size", "program", "process", "service", "user", "pass", "content", "body", "resolution", "_grid", "y", "x", "name", "contact", "info", "action", "desc", "event", "type", "begin", "end", "peer", "duration", "status", "topic", "users", "spool", "access", "from", "caller", "incoming", "speed", "total", "count", "timeout", "draft", "from_display", "rcpt", "id", "rcpt_display", "thumb", "subject", "url", "title", "keywords", "ip", "latitude", "longitude", "accuracy", "address", "cell", "wifi", "path", "attr", "size", "attach", "command", "tr", "version", "encrypted", "balance", "amount", "currency");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array();
    model_internal static var allAlwaysAvailableProperties:Array = new Array("window", "_grid_size", "program", "process", "service", "user", "pass", "content", "body", "resolution", "_grid", "y", "x", "name", "contact", "info", "action", "desc", "event", "type", "begin", "end", "peer", "duration", "status", "topic", "users", "spool", "access", "from", "caller", "incoming", "speed", "total", "count", "timeout", "draft", "from_display", "rcpt", "id", "rcpt_display", "thumb", "subject", "url", "title", "keywords", "ip", "latitude", "longitude", "accuracy", "address", "cell", "wifi", "path", "attr", "size", "attach", "command", "tr", "version", "encrypted", "balance", "amount", "currency");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("window", "_grid_size", "program", "process", "service", "user", "pass", "content", "body", "resolution", "_grid", "y", "x", "name", "contact", "info", "action", "desc", "event", "type", "begin", "end", "peer", "duration", "status", "topic", "users", "spool", "access", "from", "caller", "incoming", "speed", "total", "count", "timeout", "draft", "from_display", "rcpt", "id", "rcpt_display", "thumb", "subject", "url", "title", "keywords", "ip", "latitude", "longitude", "accuracy", "address", "cell", "wifi", "path", "attr", "size", "attach", "command", "tr", "version", "encrypted", "balance", "amount", "currency");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("window", "_grid_size", "program", "process", "service", "user", "pass", "content", "body", "resolution", "_grid", "y", "x", "name", "contact", "info", "action", "desc", "event", "type", "begin", "end", "peer", "duration", "status", "topic", "users", "spool", "access", "from", "caller", "incoming", "speed", "total", "count", "timeout", "draft", "from_display", "rcpt", "id", "rcpt_display", "thumb", "subject", "url", "title", "keywords", "ip", "latitude", "longitude", "accuracy", "address", "cell", "wifi", "path", "attr", "size", "attach", "command", "tr", "version", "encrypted", "balance", "amount", "currency");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("wifi");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "EvidenceData";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;


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
            model_internal::dependentsOnMap["process"] = new Array();
            model_internal::dependentsOnMap["service"] = new Array();
            model_internal::dependentsOnMap["user"] = new Array();
            model_internal::dependentsOnMap["pass"] = new Array();
            model_internal::dependentsOnMap["content"] = new Array();
            model_internal::dependentsOnMap["body"] = new Array();
            model_internal::dependentsOnMap["resolution"] = new Array();
            model_internal::dependentsOnMap["_grid"] = new Array();
            model_internal::dependentsOnMap["y"] = new Array();
            model_internal::dependentsOnMap["x"] = new Array();
            model_internal::dependentsOnMap["name"] = new Array();
            model_internal::dependentsOnMap["contact"] = new Array();
            model_internal::dependentsOnMap["info"] = new Array();
            model_internal::dependentsOnMap["action"] = new Array();
            model_internal::dependentsOnMap["desc"] = new Array();
            model_internal::dependentsOnMap["event"] = new Array();
            model_internal::dependentsOnMap["type"] = new Array();
            model_internal::dependentsOnMap["begin"] = new Array();
            model_internal::dependentsOnMap["end"] = new Array();
            model_internal::dependentsOnMap["peer"] = new Array();
            model_internal::dependentsOnMap["duration"] = new Array();
            model_internal::dependentsOnMap["status"] = new Array();
            model_internal::dependentsOnMap["topic"] = new Array();
            model_internal::dependentsOnMap["users"] = new Array();
            model_internal::dependentsOnMap["spool"] = new Array();
            model_internal::dependentsOnMap["access"] = new Array();
            model_internal::dependentsOnMap["from"] = new Array();
            model_internal::dependentsOnMap["caller"] = new Array();
            model_internal::dependentsOnMap["incoming"] = new Array();
            model_internal::dependentsOnMap["speed"] = new Array();
            model_internal::dependentsOnMap["total"] = new Array();
            model_internal::dependentsOnMap["count"] = new Array();
            model_internal::dependentsOnMap["timeout"] = new Array();
            model_internal::dependentsOnMap["draft"] = new Array();
            model_internal::dependentsOnMap["from_display"] = new Array();
            model_internal::dependentsOnMap["rcpt"] = new Array();
            model_internal::dependentsOnMap["id"] = new Array();
            model_internal::dependentsOnMap["rcpt_display"] = new Array();
            model_internal::dependentsOnMap["thumb"] = new Array();
            model_internal::dependentsOnMap["subject"] = new Array();
            model_internal::dependentsOnMap["url"] = new Array();
            model_internal::dependentsOnMap["title"] = new Array();
            model_internal::dependentsOnMap["keywords"] = new Array();
            model_internal::dependentsOnMap["ip"] = new Array();
            model_internal::dependentsOnMap["latitude"] = new Array();
            model_internal::dependentsOnMap["longitude"] = new Array();
            model_internal::dependentsOnMap["accuracy"] = new Array();
            model_internal::dependentsOnMap["address"] = new Array();
            model_internal::dependentsOnMap["cell"] = new Array();
            model_internal::dependentsOnMap["wifi"] = new Array();
            model_internal::dependentsOnMap["path"] = new Array();
            model_internal::dependentsOnMap["attr"] = new Array();
            model_internal::dependentsOnMap["size"] = new Array();
            model_internal::dependentsOnMap["attach"] = new Array();
            model_internal::dependentsOnMap["command"] = new Array();
            model_internal::dependentsOnMap["tr"] = new Array();
            model_internal::dependentsOnMap["version"] = new Array();
            model_internal::dependentsOnMap["encrypted"] = new Array();
            model_internal::dependentsOnMap["balance"] = new Array();
            model_internal::dependentsOnMap["amount"] = new Array();
            model_internal::dependentsOnMap["currency"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
            model_internal::collectionBaseMap["wifi"] = "it.ht.rcs.console.evidence.model.EvidenceDataWifi";
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["window"] = "String";
        model_internal::propertyTypeMap["_grid_size"] = "int";
        model_internal::propertyTypeMap["program"] = "String";
        model_internal::propertyTypeMap["process"] = "String";
        model_internal::propertyTypeMap["service"] = "String";
        model_internal::propertyTypeMap["user"] = "String";
        model_internal::propertyTypeMap["pass"] = "String";
        model_internal::propertyTypeMap["content"] = "String";
        model_internal::propertyTypeMap["body"] = "String";
        model_internal::propertyTypeMap["resolution"] = "String";
        model_internal::propertyTypeMap["_grid"] = "String";
        model_internal::propertyTypeMap["y"] = "int";
        model_internal::propertyTypeMap["x"] = "int";
        model_internal::propertyTypeMap["name"] = "String";
        model_internal::propertyTypeMap["contact"] = "String";
        model_internal::propertyTypeMap["info"] = "String";
        model_internal::propertyTypeMap["action"] = "String";
        model_internal::propertyTypeMap["desc"] = "String";
        model_internal::propertyTypeMap["event"] = "String";
        model_internal::propertyTypeMap["type"] = "String";
        model_internal::propertyTypeMap["begin"] = "int";
        model_internal::propertyTypeMap["end"] = "int";
        model_internal::propertyTypeMap["peer"] = "String";
        model_internal::propertyTypeMap["duration"] = "int";
        model_internal::propertyTypeMap["status"] = "String";
        model_internal::propertyTypeMap["topic"] = "String";
        model_internal::propertyTypeMap["users"] = "String";
        model_internal::propertyTypeMap["spool"] = "String";
        model_internal::propertyTypeMap["access"] = "int";
        model_internal::propertyTypeMap["from"] = "String";
        model_internal::propertyTypeMap["caller"] = "String";
        model_internal::propertyTypeMap["incoming"] = "Boolean";
        model_internal::propertyTypeMap["speed"] = "int";
        model_internal::propertyTypeMap["total"] = "int";
        model_internal::propertyTypeMap["count"] = "int";
        model_internal::propertyTypeMap["timeout"] = "Boolean";
        model_internal::propertyTypeMap["draft"] = "Boolean";
        model_internal::propertyTypeMap["from_display"] = "String";
        model_internal::propertyTypeMap["rcpt"] = "String";
        model_internal::propertyTypeMap["id"] = "String";
        model_internal::propertyTypeMap["rcpt_display"] = "String";
        model_internal::propertyTypeMap["thumb"] = "String";
        model_internal::propertyTypeMap["subject"] = "String";
        model_internal::propertyTypeMap["url"] = "String";
        model_internal::propertyTypeMap["title"] = "String";
        model_internal::propertyTypeMap["keywords"] = "String";
        model_internal::propertyTypeMap["ip"] = "String";
        model_internal::propertyTypeMap["latitude"] = "Number";
        model_internal::propertyTypeMap["longitude"] = "Number";
        model_internal::propertyTypeMap["accuracy"] = "int";
        model_internal::propertyTypeMap["address"] = "it.ht.rcs.console.evidence.model.EvidenceDataAddress";
        model_internal::propertyTypeMap["cell"] = "it.ht.rcs.console.evidence.model.EvidenceDataCell";
        model_internal::propertyTypeMap["wifi"] = "ArrayCollection";
        model_internal::propertyTypeMap["path"] = "String";
        model_internal::propertyTypeMap["attr"] = "int";
        model_internal::propertyTypeMap["size"] = "Number";
        model_internal::propertyTypeMap["attach"] = "int";
        model_internal::propertyTypeMap["command"] = "String";
        model_internal::propertyTypeMap["tr"] = "String";
        model_internal::propertyTypeMap["version"] = "String";
        model_internal::propertyTypeMap["encrypted"] = "Boolean";
        model_internal::propertyTypeMap["balance"] = "Number";
        model_internal::propertyTypeMap["amount"] = "Number";
        model_internal::propertyTypeMap["currency"] = "String";

        model_internal::_instance = value;
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
    public function get isProcessAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isServiceAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUserAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPassAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isContentAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isBodyAvailable():Boolean
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

    [Bindable(event="propertyChange")]
    public function get isNameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isContactAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isInfoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isActionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDescAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isEventAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTypeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isBeginAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isEndAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPeerAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDurationAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isStatusAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTopicAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUsersAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSpoolAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAccessAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFromAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCallerAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIncomingAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSpeedAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTotalAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCountAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTimeoutAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDraftAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFrom_displayAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRcptAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRcpt_displayAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isThumbAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSubjectAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTitleAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isKeywordsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIpAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLatitudeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLongitudeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAccuracyAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAddressAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCellAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isWifiAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPathAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAttrAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSizeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAttachAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCommandAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTrAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isVersionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isEncryptedAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isBalanceAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAmountAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCurrencyAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get windowStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
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

    [Bindable(event="propertyChange")]   
    public function get processStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get serviceStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get userStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get passStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get contentStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get bodyStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get resolutionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get _gridStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
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

    [Bindable(event="propertyChange")]   
    public function get nameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get contactStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get infoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get actionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get descStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get eventStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get typeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get beginStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get endStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get peerStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get durationStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get statusStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get topicStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get usersStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get spoolStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get accessStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get fromStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get callerStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get incomingStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get speedStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get totalStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get countStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get timeoutStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get draftStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get from_displayStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rcptStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get idStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rcpt_displayStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get thumbStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get subjectStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get urlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get titleStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get keywordsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get ipStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get latitudeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get longitudeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get accuracyStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get addressStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get cellStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get wifiStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get pathStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get attrStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get sizeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get attachStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get commandStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get trStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get versionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get encryptedStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get balanceStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get amountStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get currencyStyle():com.adobe.fiber.styles.Style
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
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
