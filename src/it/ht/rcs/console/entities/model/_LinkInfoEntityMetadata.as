
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
import mx.collections.ArrayCollection;
import mx.events.ValidationResultEvent;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _LinkInfoEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("viber", "mail", "bbm", "phone", "msn", "gtalk", "line", "telegram", "url", "whatsapp", "twitter", "facebook", "money", "gmail", "adium", "wechat", "skype", "yahoo");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("viber", "mail", "bbm", "phone", "msn", "gtalk", "line", "telegram", "url", "whatsapp", "twitter", "facebook", "money", "gmail", "adium", "wechat", "skype", "yahoo");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("viber", "mail", "bbm", "phone", "msn", "gtalk", "line", "telegram", "url", "whatsapp", "twitter", "facebook", "money", "gmail", "adium", "wechat", "skype", "yahoo");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("viber", "mail", "bbm", "phone", "msn", "gtalk", "line", "telegram", "url", "whatsapp", "twitter", "facebook", "money", "gmail", "adium", "wechat", "skype", "yahoo");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("viber", "mail", "bbm", "phone", "msn", "gtalk", "line", "telegram", "url", "whatsapp", "twitter", "facebook", "money", "gmail", "adium", "wechat", "skype", "yahoo");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("viber", "mail", "bbm", "phone", "msn", "gtalk", "line", "telegram", "url", "whatsapp", "twitter", "facebook", "money", "gmail", "adium", "wechat", "skype", "yahoo");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "LinkInfo";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _viberIsValid:Boolean;
    model_internal var _viberValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _viberIsValidCacheInitialized:Boolean = false;
    model_internal var _viberValidationFailureMessages:Array;
    
    model_internal var _mailIsValid:Boolean;
    model_internal var _mailValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _mailIsValidCacheInitialized:Boolean = false;
    model_internal var _mailValidationFailureMessages:Array;
    
    model_internal var _bbmIsValid:Boolean;
    model_internal var _bbmValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _bbmIsValidCacheInitialized:Boolean = false;
    model_internal var _bbmValidationFailureMessages:Array;
    
    model_internal var _phoneIsValid:Boolean;
    model_internal var _phoneValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _phoneIsValidCacheInitialized:Boolean = false;
    model_internal var _phoneValidationFailureMessages:Array;
    
    model_internal var _msnIsValid:Boolean;
    model_internal var _msnValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _msnIsValidCacheInitialized:Boolean = false;
    model_internal var _msnValidationFailureMessages:Array;
    
    model_internal var _gtalkIsValid:Boolean;
    model_internal var _gtalkValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _gtalkIsValidCacheInitialized:Boolean = false;
    model_internal var _gtalkValidationFailureMessages:Array;
    
    model_internal var _lineIsValid:Boolean;
    model_internal var _lineValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _lineIsValidCacheInitialized:Boolean = false;
    model_internal var _lineValidationFailureMessages:Array;
    
    model_internal var _telegramIsValid:Boolean;
    model_internal var _telegramValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _telegramIsValidCacheInitialized:Boolean = false;
    model_internal var _telegramValidationFailureMessages:Array;
    
    model_internal var _urlIsValid:Boolean;
    model_internal var _urlValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _urlIsValidCacheInitialized:Boolean = false;
    model_internal var _urlValidationFailureMessages:Array;
    
    model_internal var _whatsappIsValid:Boolean;
    model_internal var _whatsappValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _whatsappIsValidCacheInitialized:Boolean = false;
    model_internal var _whatsappValidationFailureMessages:Array;
    
    model_internal var _twitterIsValid:Boolean;
    model_internal var _twitterValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _twitterIsValidCacheInitialized:Boolean = false;
    model_internal var _twitterValidationFailureMessages:Array;
    
    model_internal var _facebookIsValid:Boolean;
    model_internal var _facebookValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _facebookIsValidCacheInitialized:Boolean = false;
    model_internal var _facebookValidationFailureMessages:Array;
    
    model_internal var _moneyIsValid:Boolean;
    model_internal var _moneyValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _moneyIsValidCacheInitialized:Boolean = false;
    model_internal var _moneyValidationFailureMessages:Array;
    
    model_internal var _gmailIsValid:Boolean;
    model_internal var _gmailValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _gmailIsValidCacheInitialized:Boolean = false;
    model_internal var _gmailValidationFailureMessages:Array;
    
    model_internal var _adiumIsValid:Boolean;
    model_internal var _adiumValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _adiumIsValidCacheInitialized:Boolean = false;
    model_internal var _adiumValidationFailureMessages:Array;
    
    model_internal var _wechatIsValid:Boolean;
    model_internal var _wechatValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _wechatIsValidCacheInitialized:Boolean = false;
    model_internal var _wechatValidationFailureMessages:Array;
    
    model_internal var _skypeIsValid:Boolean;
    model_internal var _skypeValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _skypeIsValidCacheInitialized:Boolean = false;
    model_internal var _skypeValidationFailureMessages:Array;
    
    model_internal var _yahooIsValid:Boolean;
    model_internal var _yahooValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _yahooIsValidCacheInitialized:Boolean = false;
    model_internal var _yahooValidationFailureMessages:Array;

    model_internal var _instance:_Super_LinkInfo;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _LinkInfoEntityMetadata(value : _Super_LinkInfo)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["viber"] = new Array();
            model_internal::dependentsOnMap["mail"] = new Array();
            model_internal::dependentsOnMap["bbm"] = new Array();
            model_internal::dependentsOnMap["phone"] = new Array();
            model_internal::dependentsOnMap["msn"] = new Array();
            model_internal::dependentsOnMap["gtalk"] = new Array();
            model_internal::dependentsOnMap["line"] = new Array();
            model_internal::dependentsOnMap["telegram"] = new Array();
            model_internal::dependentsOnMap["url"] = new Array();
            model_internal::dependentsOnMap["whatsapp"] = new Array();
            model_internal::dependentsOnMap["twitter"] = new Array();
            model_internal::dependentsOnMap["facebook"] = new Array();
            model_internal::dependentsOnMap["money"] = new Array();
            model_internal::dependentsOnMap["gmail"] = new Array();
            model_internal::dependentsOnMap["adium"] = new Array();
            model_internal::dependentsOnMap["wechat"] = new Array();
            model_internal::dependentsOnMap["skype"] = new Array();
            model_internal::dependentsOnMap["yahoo"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
            model_internal::collectionBaseMap["viber"] = "Object";
            model_internal::collectionBaseMap["mail"] = "Object";
            model_internal::collectionBaseMap["bbm"] = "Object";
            model_internal::collectionBaseMap["phone"] = "Object";
            model_internal::collectionBaseMap["msn"] = "Object";
            model_internal::collectionBaseMap["gtalk"] = "Object";
            model_internal::collectionBaseMap["line"] = "Object";
            model_internal::collectionBaseMap["telegram"] = "Object";
            model_internal::collectionBaseMap["url"] = "Object";
            model_internal::collectionBaseMap["whatsapp"] = "Object";
            model_internal::collectionBaseMap["twitter"] = "Object";
            model_internal::collectionBaseMap["facebook"] = "Object";
            model_internal::collectionBaseMap["money"] = "Object";
            model_internal::collectionBaseMap["gmail"] = "Object";
            model_internal::collectionBaseMap["adium"] = "Object";
            model_internal::collectionBaseMap["wechat"] = "Object";
            model_internal::collectionBaseMap["skype"] = "Object";
            model_internal::collectionBaseMap["yahoo"] = "Object";
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["viber"] = "ArrayCollection";
        model_internal::propertyTypeMap["mail"] = "ArrayCollection";
        model_internal::propertyTypeMap["bbm"] = "ArrayCollection";
        model_internal::propertyTypeMap["phone"] = "ArrayCollection";
        model_internal::propertyTypeMap["msn"] = "ArrayCollection";
        model_internal::propertyTypeMap["gtalk"] = "ArrayCollection";
        model_internal::propertyTypeMap["line"] = "ArrayCollection";
        model_internal::propertyTypeMap["telegram"] = "ArrayCollection";
        model_internal::propertyTypeMap["url"] = "ArrayCollection";
        model_internal::propertyTypeMap["whatsapp"] = "ArrayCollection";
        model_internal::propertyTypeMap["twitter"] = "ArrayCollection";
        model_internal::propertyTypeMap["facebook"] = "ArrayCollection";
        model_internal::propertyTypeMap["money"] = "ArrayCollection";
        model_internal::propertyTypeMap["gmail"] = "ArrayCollection";
        model_internal::propertyTypeMap["adium"] = "ArrayCollection";
        model_internal::propertyTypeMap["wechat"] = "ArrayCollection";
        model_internal::propertyTypeMap["skype"] = "ArrayCollection";
        model_internal::propertyTypeMap["yahoo"] = "ArrayCollection";

        model_internal::_instance = value;
        model_internal::_viberValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForViber);
        model_internal::_viberValidator.required = true;
        model_internal::_viberValidator.requiredFieldError = "viber is required";
        //model_internal::_viberValidator.source = model_internal::_instance;
        //model_internal::_viberValidator.property = "viber";
        model_internal::_mailValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForMail);
        model_internal::_mailValidator.required = true;
        model_internal::_mailValidator.requiredFieldError = "mail is required";
        //model_internal::_mailValidator.source = model_internal::_instance;
        //model_internal::_mailValidator.property = "mail";
        model_internal::_bbmValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForBbm);
        model_internal::_bbmValidator.required = true;
        model_internal::_bbmValidator.requiredFieldError = "bbm is required";
        //model_internal::_bbmValidator.source = model_internal::_instance;
        //model_internal::_bbmValidator.property = "bbm";
        model_internal::_phoneValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPhone);
        model_internal::_phoneValidator.required = true;
        model_internal::_phoneValidator.requiredFieldError = "phone is required";
        //model_internal::_phoneValidator.source = model_internal::_instance;
        //model_internal::_phoneValidator.property = "phone";
        model_internal::_msnValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForMsn);
        model_internal::_msnValidator.required = true;
        model_internal::_msnValidator.requiredFieldError = "msn is required";
        //model_internal::_msnValidator.source = model_internal::_instance;
        //model_internal::_msnValidator.property = "msn";
        model_internal::_gtalkValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForGtalk);
        model_internal::_gtalkValidator.required = true;
        model_internal::_gtalkValidator.requiredFieldError = "gtalk is required";
        //model_internal::_gtalkValidator.source = model_internal::_instance;
        //model_internal::_gtalkValidator.property = "gtalk";
        model_internal::_lineValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForLine);
        model_internal::_lineValidator.required = true;
        model_internal::_lineValidator.requiredFieldError = "line is required";
        //model_internal::_lineValidator.source = model_internal::_instance;
        //model_internal::_lineValidator.property = "line";
        model_internal::_telegramValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForTelegram);
        model_internal::_telegramValidator.required = true;
        model_internal::_telegramValidator.requiredFieldError = "telegram is required";
        //model_internal::_telegramValidator.source = model_internal::_instance;
        //model_internal::_telegramValidator.property = "telegram";
        model_internal::_urlValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForUrl);
        model_internal::_urlValidator.required = true;
        model_internal::_urlValidator.requiredFieldError = "url is required";
        //model_internal::_urlValidator.source = model_internal::_instance;
        //model_internal::_urlValidator.property = "url";
        model_internal::_whatsappValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForWhatsapp);
        model_internal::_whatsappValidator.required = true;
        model_internal::_whatsappValidator.requiredFieldError = "whatsapp is required";
        //model_internal::_whatsappValidator.source = model_internal::_instance;
        //model_internal::_whatsappValidator.property = "whatsapp";
        model_internal::_twitterValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForTwitter);
        model_internal::_twitterValidator.required = true;
        model_internal::_twitterValidator.requiredFieldError = "twitter is required";
        //model_internal::_twitterValidator.source = model_internal::_instance;
        //model_internal::_twitterValidator.property = "twitter";
        model_internal::_facebookValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForFacebook);
        model_internal::_facebookValidator.required = true;
        model_internal::_facebookValidator.requiredFieldError = "facebook is required";
        //model_internal::_facebookValidator.source = model_internal::_instance;
        //model_internal::_facebookValidator.property = "facebook";
        model_internal::_moneyValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForMoney);
        model_internal::_moneyValidator.required = true;
        model_internal::_moneyValidator.requiredFieldError = "money is required";
        //model_internal::_moneyValidator.source = model_internal::_instance;
        //model_internal::_moneyValidator.property = "money";
        model_internal::_gmailValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForGmail);
        model_internal::_gmailValidator.required = true;
        model_internal::_gmailValidator.requiredFieldError = "gmail is required";
        //model_internal::_gmailValidator.source = model_internal::_instance;
        //model_internal::_gmailValidator.property = "gmail";
        model_internal::_adiumValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForAdium);
        model_internal::_adiumValidator.required = true;
        model_internal::_adiumValidator.requiredFieldError = "adium is required";
        //model_internal::_adiumValidator.source = model_internal::_instance;
        //model_internal::_adiumValidator.property = "adium";
        model_internal::_wechatValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForWechat);
        model_internal::_wechatValidator.required = true;
        model_internal::_wechatValidator.requiredFieldError = "wechat is required";
        //model_internal::_wechatValidator.source = model_internal::_instance;
        //model_internal::_wechatValidator.property = "wechat";
        model_internal::_skypeValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForSkype);
        model_internal::_skypeValidator.required = true;
        model_internal::_skypeValidator.requiredFieldError = "skype is required";
        //model_internal::_skypeValidator.source = model_internal::_instance;
        //model_internal::_skypeValidator.property = "skype";
        model_internal::_yahooValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForYahoo);
        model_internal::_yahooValidator.required = true;
        model_internal::_yahooValidator.requiredFieldError = "yahoo is required";
        //model_internal::_yahooValidator.source = model_internal::_instance;
        //model_internal::_yahooValidator.property = "yahoo";
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
            throw new Error(propertyName + " is not a data property of entity LinkInfo");
            
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
            throw new Error(propertyName + " is not a collection property of entity LinkInfo");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of LinkInfo");

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
            throw new Error(propertyName + " does not exist for entity LinkInfo");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity LinkInfo");
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
            throw new Error(propertyName + " does not exist for entity LinkInfo");
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
    public function get isViberAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isMailAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isBbmAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPhoneAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isMsnAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isGtalkAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLineAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTelegramAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isWhatsappAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTwitterAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFacebookAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isMoneyAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isGmailAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAdiumAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isWechatAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSkypeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isYahooAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnViber():void
    {
        if (model_internal::_viberIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfViber = null;
            model_internal::calculateViberIsValid();
        }
    }
    public function invalidateDependentOnMail():void
    {
        if (model_internal::_mailIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfMail = null;
            model_internal::calculateMailIsValid();
        }
    }
    public function invalidateDependentOnBbm():void
    {
        if (model_internal::_bbmIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfBbm = null;
            model_internal::calculateBbmIsValid();
        }
    }
    public function invalidateDependentOnPhone():void
    {
        if (model_internal::_phoneIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPhone = null;
            model_internal::calculatePhoneIsValid();
        }
    }
    public function invalidateDependentOnMsn():void
    {
        if (model_internal::_msnIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfMsn = null;
            model_internal::calculateMsnIsValid();
        }
    }
    public function invalidateDependentOnGtalk():void
    {
        if (model_internal::_gtalkIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfGtalk = null;
            model_internal::calculateGtalkIsValid();
        }
    }
    public function invalidateDependentOnLine():void
    {
        if (model_internal::_lineIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfLine = null;
            model_internal::calculateLineIsValid();
        }
    }
    public function invalidateDependentOnTelegram():void
    {
        if (model_internal::_telegramIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfTelegram = null;
            model_internal::calculateTelegramIsValid();
        }
    }
    public function invalidateDependentOnUrl():void
    {
        if (model_internal::_urlIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfUrl = null;
            model_internal::calculateUrlIsValid();
        }
    }
    public function invalidateDependentOnWhatsapp():void
    {
        if (model_internal::_whatsappIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfWhatsapp = null;
            model_internal::calculateWhatsappIsValid();
        }
    }
    public function invalidateDependentOnTwitter():void
    {
        if (model_internal::_twitterIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfTwitter = null;
            model_internal::calculateTwitterIsValid();
        }
    }
    public function invalidateDependentOnFacebook():void
    {
        if (model_internal::_facebookIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfFacebook = null;
            model_internal::calculateFacebookIsValid();
        }
    }
    public function invalidateDependentOnMoney():void
    {
        if (model_internal::_moneyIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfMoney = null;
            model_internal::calculateMoneyIsValid();
        }
    }
    public function invalidateDependentOnGmail():void
    {
        if (model_internal::_gmailIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfGmail = null;
            model_internal::calculateGmailIsValid();
        }
    }
    public function invalidateDependentOnAdium():void
    {
        if (model_internal::_adiumIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfAdium = null;
            model_internal::calculateAdiumIsValid();
        }
    }
    public function invalidateDependentOnWechat():void
    {
        if (model_internal::_wechatIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfWechat = null;
            model_internal::calculateWechatIsValid();
        }
    }
    public function invalidateDependentOnSkype():void
    {
        if (model_internal::_skypeIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfSkype = null;
            model_internal::calculateSkypeIsValid();
        }
    }
    public function invalidateDependentOnYahoo():void
    {
        if (model_internal::_yahooIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfYahoo = null;
            model_internal::calculateYahooIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get viberStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get viberValidator() : StyleValidator
    {
        return model_internal::_viberValidator;
    }

    model_internal function set _viberIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_viberIsValid;         
        if (oldValue !== value)
        {
            model_internal::_viberIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "viberIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get viberIsValid():Boolean
    {
        if (!model_internal::_viberIsValidCacheInitialized)
        {
            model_internal::calculateViberIsValid();
        }

        return model_internal::_viberIsValid;
    }

    model_internal function calculateViberIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_viberValidator.validate(model_internal::_instance.viber)
        model_internal::_viberIsValid_der = (valRes.results == null);
        model_internal::_viberIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::viberValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::viberValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get viberValidationFailureMessages():Array
    {
        if (model_internal::_viberValidationFailureMessages == null)
            model_internal::calculateViberIsValid();

        return _viberValidationFailureMessages;
    }

    model_internal function set viberValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_viberValidationFailureMessages;

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
            model_internal::_viberValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "viberValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get mailStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get mailValidator() : StyleValidator
    {
        return model_internal::_mailValidator;
    }

    model_internal function set _mailIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_mailIsValid;         
        if (oldValue !== value)
        {
            model_internal::_mailIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "mailIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get mailIsValid():Boolean
    {
        if (!model_internal::_mailIsValidCacheInitialized)
        {
            model_internal::calculateMailIsValid();
        }

        return model_internal::_mailIsValid;
    }

    model_internal function calculateMailIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_mailValidator.validate(model_internal::_instance.mail)
        model_internal::_mailIsValid_der = (valRes.results == null);
        model_internal::_mailIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::mailValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::mailValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get mailValidationFailureMessages():Array
    {
        if (model_internal::_mailValidationFailureMessages == null)
            model_internal::calculateMailIsValid();

        return _mailValidationFailureMessages;
    }

    model_internal function set mailValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_mailValidationFailureMessages;

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
            model_internal::_mailValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "mailValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get bbmStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get bbmValidator() : StyleValidator
    {
        return model_internal::_bbmValidator;
    }

    model_internal function set _bbmIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_bbmIsValid;         
        if (oldValue !== value)
        {
            model_internal::_bbmIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "bbmIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get bbmIsValid():Boolean
    {
        if (!model_internal::_bbmIsValidCacheInitialized)
        {
            model_internal::calculateBbmIsValid();
        }

        return model_internal::_bbmIsValid;
    }

    model_internal function calculateBbmIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_bbmValidator.validate(model_internal::_instance.bbm)
        model_internal::_bbmIsValid_der = (valRes.results == null);
        model_internal::_bbmIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::bbmValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::bbmValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get bbmValidationFailureMessages():Array
    {
        if (model_internal::_bbmValidationFailureMessages == null)
            model_internal::calculateBbmIsValid();

        return _bbmValidationFailureMessages;
    }

    model_internal function set bbmValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_bbmValidationFailureMessages;

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
            model_internal::_bbmValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "bbmValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get phoneStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get phoneValidator() : StyleValidator
    {
        return model_internal::_phoneValidator;
    }

    model_internal function set _phoneIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_phoneIsValid;         
        if (oldValue !== value)
        {
            model_internal::_phoneIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "phoneIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get phoneIsValid():Boolean
    {
        if (!model_internal::_phoneIsValidCacheInitialized)
        {
            model_internal::calculatePhoneIsValid();
        }

        return model_internal::_phoneIsValid;
    }

    model_internal function calculatePhoneIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_phoneValidator.validate(model_internal::_instance.phone)
        model_internal::_phoneIsValid_der = (valRes.results == null);
        model_internal::_phoneIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::phoneValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::phoneValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get phoneValidationFailureMessages():Array
    {
        if (model_internal::_phoneValidationFailureMessages == null)
            model_internal::calculatePhoneIsValid();

        return _phoneValidationFailureMessages;
    }

    model_internal function set phoneValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_phoneValidationFailureMessages;

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
            model_internal::_phoneValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "phoneValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get msnStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get msnValidator() : StyleValidator
    {
        return model_internal::_msnValidator;
    }

    model_internal function set _msnIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_msnIsValid;         
        if (oldValue !== value)
        {
            model_internal::_msnIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "msnIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get msnIsValid():Boolean
    {
        if (!model_internal::_msnIsValidCacheInitialized)
        {
            model_internal::calculateMsnIsValid();
        }

        return model_internal::_msnIsValid;
    }

    model_internal function calculateMsnIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_msnValidator.validate(model_internal::_instance.msn)
        model_internal::_msnIsValid_der = (valRes.results == null);
        model_internal::_msnIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::msnValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::msnValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get msnValidationFailureMessages():Array
    {
        if (model_internal::_msnValidationFailureMessages == null)
            model_internal::calculateMsnIsValid();

        return _msnValidationFailureMessages;
    }

    model_internal function set msnValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_msnValidationFailureMessages;

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
            model_internal::_msnValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "msnValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get gtalkStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get gtalkValidator() : StyleValidator
    {
        return model_internal::_gtalkValidator;
    }

    model_internal function set _gtalkIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_gtalkIsValid;         
        if (oldValue !== value)
        {
            model_internal::_gtalkIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "gtalkIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get gtalkIsValid():Boolean
    {
        if (!model_internal::_gtalkIsValidCacheInitialized)
        {
            model_internal::calculateGtalkIsValid();
        }

        return model_internal::_gtalkIsValid;
    }

    model_internal function calculateGtalkIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_gtalkValidator.validate(model_internal::_instance.gtalk)
        model_internal::_gtalkIsValid_der = (valRes.results == null);
        model_internal::_gtalkIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::gtalkValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::gtalkValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get gtalkValidationFailureMessages():Array
    {
        if (model_internal::_gtalkValidationFailureMessages == null)
            model_internal::calculateGtalkIsValid();

        return _gtalkValidationFailureMessages;
    }

    model_internal function set gtalkValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_gtalkValidationFailureMessages;

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
            model_internal::_gtalkValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "gtalkValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get lineStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get lineValidator() : StyleValidator
    {
        return model_internal::_lineValidator;
    }

    model_internal function set _lineIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_lineIsValid;         
        if (oldValue !== value)
        {
            model_internal::_lineIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "lineIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get lineIsValid():Boolean
    {
        if (!model_internal::_lineIsValidCacheInitialized)
        {
            model_internal::calculateLineIsValid();
        }

        return model_internal::_lineIsValid;
    }

    model_internal function calculateLineIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_lineValidator.validate(model_internal::_instance.line)
        model_internal::_lineIsValid_der = (valRes.results == null);
        model_internal::_lineIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::lineValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::lineValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get lineValidationFailureMessages():Array
    {
        if (model_internal::_lineValidationFailureMessages == null)
            model_internal::calculateLineIsValid();

        return _lineValidationFailureMessages;
    }

    model_internal function set lineValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_lineValidationFailureMessages;

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
            model_internal::_lineValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "lineValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get telegramStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get telegramValidator() : StyleValidator
    {
        return model_internal::_telegramValidator;
    }

    model_internal function set _telegramIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_telegramIsValid;         
        if (oldValue !== value)
        {
            model_internal::_telegramIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "telegramIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get telegramIsValid():Boolean
    {
        if (!model_internal::_telegramIsValidCacheInitialized)
        {
            model_internal::calculateTelegramIsValid();
        }

        return model_internal::_telegramIsValid;
    }

    model_internal function calculateTelegramIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_telegramValidator.validate(model_internal::_instance.telegram)
        model_internal::_telegramIsValid_der = (valRes.results == null);
        model_internal::_telegramIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::telegramValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::telegramValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get telegramValidationFailureMessages():Array
    {
        if (model_internal::_telegramValidationFailureMessages == null)
            model_internal::calculateTelegramIsValid();

        return _telegramValidationFailureMessages;
    }

    model_internal function set telegramValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_telegramValidationFailureMessages;

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
            model_internal::_telegramValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "telegramValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get urlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get urlValidator() : StyleValidator
    {
        return model_internal::_urlValidator;
    }

    model_internal function set _urlIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_urlIsValid;         
        if (oldValue !== value)
        {
            model_internal::_urlIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "urlIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get urlIsValid():Boolean
    {
        if (!model_internal::_urlIsValidCacheInitialized)
        {
            model_internal::calculateUrlIsValid();
        }

        return model_internal::_urlIsValid;
    }

    model_internal function calculateUrlIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_urlValidator.validate(model_internal::_instance.url)
        model_internal::_urlIsValid_der = (valRes.results == null);
        model_internal::_urlIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::urlValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::urlValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get urlValidationFailureMessages():Array
    {
        if (model_internal::_urlValidationFailureMessages == null)
            model_internal::calculateUrlIsValid();

        return _urlValidationFailureMessages;
    }

    model_internal function set urlValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_urlValidationFailureMessages;

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
            model_internal::_urlValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "urlValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get whatsappStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get whatsappValidator() : StyleValidator
    {
        return model_internal::_whatsappValidator;
    }

    model_internal function set _whatsappIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_whatsappIsValid;         
        if (oldValue !== value)
        {
            model_internal::_whatsappIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "whatsappIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get whatsappIsValid():Boolean
    {
        if (!model_internal::_whatsappIsValidCacheInitialized)
        {
            model_internal::calculateWhatsappIsValid();
        }

        return model_internal::_whatsappIsValid;
    }

    model_internal function calculateWhatsappIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_whatsappValidator.validate(model_internal::_instance.whatsapp)
        model_internal::_whatsappIsValid_der = (valRes.results == null);
        model_internal::_whatsappIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::whatsappValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::whatsappValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get whatsappValidationFailureMessages():Array
    {
        if (model_internal::_whatsappValidationFailureMessages == null)
            model_internal::calculateWhatsappIsValid();

        return _whatsappValidationFailureMessages;
    }

    model_internal function set whatsappValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_whatsappValidationFailureMessages;

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
            model_internal::_whatsappValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "whatsappValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get twitterStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get twitterValidator() : StyleValidator
    {
        return model_internal::_twitterValidator;
    }

    model_internal function set _twitterIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_twitterIsValid;         
        if (oldValue !== value)
        {
            model_internal::_twitterIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "twitterIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get twitterIsValid():Boolean
    {
        if (!model_internal::_twitterIsValidCacheInitialized)
        {
            model_internal::calculateTwitterIsValid();
        }

        return model_internal::_twitterIsValid;
    }

    model_internal function calculateTwitterIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_twitterValidator.validate(model_internal::_instance.twitter)
        model_internal::_twitterIsValid_der = (valRes.results == null);
        model_internal::_twitterIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::twitterValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::twitterValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get twitterValidationFailureMessages():Array
    {
        if (model_internal::_twitterValidationFailureMessages == null)
            model_internal::calculateTwitterIsValid();

        return _twitterValidationFailureMessages;
    }

    model_internal function set twitterValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_twitterValidationFailureMessages;

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
            model_internal::_twitterValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "twitterValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get facebookStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get facebookValidator() : StyleValidator
    {
        return model_internal::_facebookValidator;
    }

    model_internal function set _facebookIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_facebookIsValid;         
        if (oldValue !== value)
        {
            model_internal::_facebookIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "facebookIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get facebookIsValid():Boolean
    {
        if (!model_internal::_facebookIsValidCacheInitialized)
        {
            model_internal::calculateFacebookIsValid();
        }

        return model_internal::_facebookIsValid;
    }

    model_internal function calculateFacebookIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_facebookValidator.validate(model_internal::_instance.facebook)
        model_internal::_facebookIsValid_der = (valRes.results == null);
        model_internal::_facebookIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::facebookValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::facebookValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get facebookValidationFailureMessages():Array
    {
        if (model_internal::_facebookValidationFailureMessages == null)
            model_internal::calculateFacebookIsValid();

        return _facebookValidationFailureMessages;
    }

    model_internal function set facebookValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_facebookValidationFailureMessages;

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
            model_internal::_facebookValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "facebookValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get moneyStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get moneyValidator() : StyleValidator
    {
        return model_internal::_moneyValidator;
    }

    model_internal function set _moneyIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_moneyIsValid;         
        if (oldValue !== value)
        {
            model_internal::_moneyIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "moneyIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get moneyIsValid():Boolean
    {
        if (!model_internal::_moneyIsValidCacheInitialized)
        {
            model_internal::calculateMoneyIsValid();
        }

        return model_internal::_moneyIsValid;
    }

    model_internal function calculateMoneyIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_moneyValidator.validate(model_internal::_instance.money)
        model_internal::_moneyIsValid_der = (valRes.results == null);
        model_internal::_moneyIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::moneyValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::moneyValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get moneyValidationFailureMessages():Array
    {
        if (model_internal::_moneyValidationFailureMessages == null)
            model_internal::calculateMoneyIsValid();

        return _moneyValidationFailureMessages;
    }

    model_internal function set moneyValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_moneyValidationFailureMessages;

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
            model_internal::_moneyValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "moneyValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get gmailStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get gmailValidator() : StyleValidator
    {
        return model_internal::_gmailValidator;
    }

    model_internal function set _gmailIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_gmailIsValid;         
        if (oldValue !== value)
        {
            model_internal::_gmailIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "gmailIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get gmailIsValid():Boolean
    {
        if (!model_internal::_gmailIsValidCacheInitialized)
        {
            model_internal::calculateGmailIsValid();
        }

        return model_internal::_gmailIsValid;
    }

    model_internal function calculateGmailIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_gmailValidator.validate(model_internal::_instance.gmail)
        model_internal::_gmailIsValid_der = (valRes.results == null);
        model_internal::_gmailIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::gmailValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::gmailValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get gmailValidationFailureMessages():Array
    {
        if (model_internal::_gmailValidationFailureMessages == null)
            model_internal::calculateGmailIsValid();

        return _gmailValidationFailureMessages;
    }

    model_internal function set gmailValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_gmailValidationFailureMessages;

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
            model_internal::_gmailValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "gmailValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get adiumStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get adiumValidator() : StyleValidator
    {
        return model_internal::_adiumValidator;
    }

    model_internal function set _adiumIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_adiumIsValid;         
        if (oldValue !== value)
        {
            model_internal::_adiumIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "adiumIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get adiumIsValid():Boolean
    {
        if (!model_internal::_adiumIsValidCacheInitialized)
        {
            model_internal::calculateAdiumIsValid();
        }

        return model_internal::_adiumIsValid;
    }

    model_internal function calculateAdiumIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_adiumValidator.validate(model_internal::_instance.adium)
        model_internal::_adiumIsValid_der = (valRes.results == null);
        model_internal::_adiumIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::adiumValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::adiumValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get adiumValidationFailureMessages():Array
    {
        if (model_internal::_adiumValidationFailureMessages == null)
            model_internal::calculateAdiumIsValid();

        return _adiumValidationFailureMessages;
    }

    model_internal function set adiumValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_adiumValidationFailureMessages;

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
            model_internal::_adiumValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "adiumValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get wechatStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get wechatValidator() : StyleValidator
    {
        return model_internal::_wechatValidator;
    }

    model_internal function set _wechatIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_wechatIsValid;         
        if (oldValue !== value)
        {
            model_internal::_wechatIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "wechatIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get wechatIsValid():Boolean
    {
        if (!model_internal::_wechatIsValidCacheInitialized)
        {
            model_internal::calculateWechatIsValid();
        }

        return model_internal::_wechatIsValid;
    }

    model_internal function calculateWechatIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_wechatValidator.validate(model_internal::_instance.wechat)
        model_internal::_wechatIsValid_der = (valRes.results == null);
        model_internal::_wechatIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::wechatValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::wechatValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get wechatValidationFailureMessages():Array
    {
        if (model_internal::_wechatValidationFailureMessages == null)
            model_internal::calculateWechatIsValid();

        return _wechatValidationFailureMessages;
    }

    model_internal function set wechatValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_wechatValidationFailureMessages;

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
            model_internal::_wechatValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "wechatValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get skypeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get skypeValidator() : StyleValidator
    {
        return model_internal::_skypeValidator;
    }

    model_internal function set _skypeIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_skypeIsValid;         
        if (oldValue !== value)
        {
            model_internal::_skypeIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "skypeIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get skypeIsValid():Boolean
    {
        if (!model_internal::_skypeIsValidCacheInitialized)
        {
            model_internal::calculateSkypeIsValid();
        }

        return model_internal::_skypeIsValid;
    }

    model_internal function calculateSkypeIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_skypeValidator.validate(model_internal::_instance.skype)
        model_internal::_skypeIsValid_der = (valRes.results == null);
        model_internal::_skypeIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::skypeValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::skypeValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get skypeValidationFailureMessages():Array
    {
        if (model_internal::_skypeValidationFailureMessages == null)
            model_internal::calculateSkypeIsValid();

        return _skypeValidationFailureMessages;
    }

    model_internal function set skypeValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_skypeValidationFailureMessages;

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
            model_internal::_skypeValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "skypeValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get yahooStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get yahooValidator() : StyleValidator
    {
        return model_internal::_yahooValidator;
    }

    model_internal function set _yahooIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_yahooIsValid;         
        if (oldValue !== value)
        {
            model_internal::_yahooIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "yahooIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get yahooIsValid():Boolean
    {
        if (!model_internal::_yahooIsValidCacheInitialized)
        {
            model_internal::calculateYahooIsValid();
        }

        return model_internal::_yahooIsValid;
    }

    model_internal function calculateYahooIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_yahooValidator.validate(model_internal::_instance.yahoo)
        model_internal::_yahooIsValid_der = (valRes.results == null);
        model_internal::_yahooIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::yahooValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::yahooValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get yahooValidationFailureMessages():Array
    {
        if (model_internal::_yahooValidationFailureMessages == null)
            model_internal::calculateYahooIsValid();

        return _yahooValidationFailureMessages;
    }

    model_internal function set yahooValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_yahooValidationFailureMessages;

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
            model_internal::_yahooValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "yahooValidationFailureMessages", oldValue, value));
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
            case("viber"):
            {
                return viberValidationFailureMessages;
            }
            case("mail"):
            {
                return mailValidationFailureMessages;
            }
            case("bbm"):
            {
                return bbmValidationFailureMessages;
            }
            case("phone"):
            {
                return phoneValidationFailureMessages;
            }
            case("msn"):
            {
                return msnValidationFailureMessages;
            }
            case("gtalk"):
            {
                return gtalkValidationFailureMessages;
            }
            case("line"):
            {
                return lineValidationFailureMessages;
            }
            case("telegram"):
            {
                return telegramValidationFailureMessages;
            }
            case("url"):
            {
                return urlValidationFailureMessages;
            }
            case("whatsapp"):
            {
                return whatsappValidationFailureMessages;
            }
            case("twitter"):
            {
                return twitterValidationFailureMessages;
            }
            case("facebook"):
            {
                return facebookValidationFailureMessages;
            }
            case("money"):
            {
                return moneyValidationFailureMessages;
            }
            case("gmail"):
            {
                return gmailValidationFailureMessages;
            }
            case("adium"):
            {
                return adiumValidationFailureMessages;
            }
            case("wechat"):
            {
                return wechatValidationFailureMessages;
            }
            case("skype"):
            {
                return skypeValidationFailureMessages;
            }
            case("yahoo"):
            {
                return yahooValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
