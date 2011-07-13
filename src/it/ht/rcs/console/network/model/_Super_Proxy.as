/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Proxy.as.
 */

package it.ht.rcs.console.network.model
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import it.ht.rcs.console.network.model.ProxyRule;
import mx.binding.utils.ChangeWatcher;
import mx.collections.ArrayCollection;
import mx.events.CollectionEvent;
import mx.events.PropertyChangeEvent;
import mx.validators.ValidationResult;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_Proxy extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        it.ht.rcs.console.network.model.ProxyRule.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _ProxyEntityMetadata;
    model_internal var _changedObjects:mx.collections.ArrayCollection = new ArrayCollection();

    public function getChangedObjects() : Array
    {
        _changedObjects.addItemAt(this,0);
        return _changedObjects.source;
    }

    public function clearChangedObjects() : void
    {
        _changedObjects.removeAll();
    }

    /**
     * properties
     */
    private var _internal_rules : ArrayCollection;
    model_internal var _internal_rules_leaf:it.ht.rcs.console.network.model.ProxyRule;
    private var _internal_version : int;
    private var _internal__mid : int;
    private var _internal_redirection_tag : String;
    private var _internal_desc : String;
    private var _internal_address : String;
    private var _internal_port : int;
    private var _internal_updated_at : String;
    private var _internal_poll : Boolean;
    private var _internal__id : String;
    private var _internal_configured : Boolean;
    private var _internal_name : String;
    private var _internal_created_at : String;
    private var _internal_redirect : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Proxy()
    {
        _model = new _ProxyEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "rules", model_internal::setterListenerRules));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "redirection_tag", model_internal::setterListenerRedirection_tag));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get rules() : ArrayCollection
    {
        return _internal_rules;
    }

    [Bindable(event="propertyChange")]
    public function get version() : int
    {
        return _internal_version;
    }

    [Bindable(event="propertyChange")]
    public function get _mid() : int
    {
        return _internal__mid;
    }

    [Bindable(event="propertyChange")]
    public function get redirection_tag() : String
    {
        return _internal_redirection_tag;
    }

    [Bindable(event="propertyChange")]
    public function get desc() : String
    {
        return _internal_desc;
    }

    [Bindable(event="propertyChange")]
    public function get address() : String
    {
        return _internal_address;
    }

    [Bindable(event="propertyChange")]
    public function get port() : int
    {
        return _internal_port;
    }

    [Bindable(event="propertyChange")]
    public function get updated_at() : String
    {
        return _internal_updated_at;
    }

    [Bindable(event="propertyChange")]
    public function get poll() : Boolean
    {
        return _internal_poll;
    }

    [Bindable(event="propertyChange")]
    public function get _id() : String
    {
        return _internal__id;
    }

    [Bindable(event="propertyChange")]
    public function get configured() : Boolean
    {
        return _internal_configured;
    }

    [Bindable(event="propertyChange")]
    public function get name() : String
    {
        return _internal_name;
    }

    [Bindable(event="propertyChange")]
    public function get created_at() : String
    {
        return _internal_created_at;
    }

    [Bindable(event="propertyChange")]
    public function get redirect() : String
    {
        return _internal_redirect;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set rules(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_rules;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_rules = value;
            }
            else if (value is Array)
            {
                _internal_rules = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_rules = null;
            }
            else
            {
                throw new Error("value of rules must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rules", oldValue, _internal_rules));
        }
    }

    public function set version(value:int) : void
    {
        var oldValue:int = _internal_version;
        if (oldValue !== value)
        {
            _internal_version = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "version", oldValue, _internal_version));
        }
    }

    public function set _mid(value:int) : void
    {
        var oldValue:int = _internal__mid;
        if (oldValue !== value)
        {
            _internal__mid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_mid", oldValue, _internal__mid));
        }
    }

    public function set redirection_tag(value:String) : void
    {
        var oldValue:String = _internal_redirection_tag;
        if (oldValue !== value)
        {
            _internal_redirection_tag = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "redirection_tag", oldValue, _internal_redirection_tag));
        }
    }

    public function set desc(value:String) : void
    {
        var oldValue:String = _internal_desc;
        if (oldValue !== value)
        {
            _internal_desc = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "desc", oldValue, _internal_desc));
        }
    }

    public function set address(value:String) : void
    {
        var oldValue:String = _internal_address;
        if (oldValue !== value)
        {
            _internal_address = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "address", oldValue, _internal_address));
        }
    }

    public function set port(value:int) : void
    {
        var oldValue:int = _internal_port;
        if (oldValue !== value)
        {
            _internal_port = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "port", oldValue, _internal_port));
        }
    }

    public function set updated_at(value:String) : void
    {
        var oldValue:String = _internal_updated_at;
        if (oldValue !== value)
        {
            _internal_updated_at = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "updated_at", oldValue, _internal_updated_at));
        }
    }

    public function set poll(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_poll;
        if (oldValue !== value)
        {
            _internal_poll = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "poll", oldValue, _internal_poll));
        }
    }

    public function set _id(value:String) : void
    {
        var oldValue:String = _internal__id;
        if (oldValue !== value)
        {
            _internal__id = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_id", oldValue, _internal__id));
        }
    }

    public function set configured(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_configured;
        if (oldValue !== value)
        {
            _internal_configured = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "configured", oldValue, _internal_configured));
        }
    }

    public function set name(value:String) : void
    {
        var oldValue:String = _internal_name;
        if (oldValue !== value)
        {
            _internal_name = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "name", oldValue, _internal_name));
        }
    }

    public function set created_at(value:String) : void
    {
        var oldValue:String = _internal_created_at;
        if (oldValue !== value)
        {
            _internal_created_at = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "created_at", oldValue, _internal_created_at));
        }
    }

    public function set redirect(value:String) : void
    {
        var oldValue:String = _internal_redirect;
        if (oldValue !== value)
        {
            _internal_redirect = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "redirect", oldValue, _internal_redirect));
        }
    }

    /**
     * Data/source property setter listeners
     *
     * Each data property whose value affects other properties or the validity of the entity
     * needs to invalidate all previously calculated artifacts. These include:
     *  - any derived properties or constraints that reference the given data property.
     *  - any availability guards (variant expressions) that reference the given data property.
     *  - any style validations, message tokens or guards that reference the given data property.
     *  - the validity of the property (and the containing entity) if the given data property has a length restriction.
     *  - the validity of the property (and the containing entity) if the given data property is required.
     */

    model_internal function setterListenerRules(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerRules);
            }
        }
        _model.invalidateDependentOnRules();
    }

    model_internal function setterListenerRedirection_tag(value:flash.events.Event):void
    {
        _model.invalidateDependentOnRedirection_tag();
    }


    /**
     * valid related derived properties
     */
    model_internal var _isValid : Boolean;
    model_internal var _invalidConstraints:Array = new Array();
    model_internal var _validationFailureMessages:Array = new Array();

    /**
     * derived property calculators
     */

    /**
     * isValid calculator
     */
    model_internal function calculateIsValid():Boolean
    {
        var violatedConsts:Array = new Array();
        var validationFailureMessages:Array = new Array();

        var propertyValidity:Boolean = true;
        if (!_model.rulesIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_rulesValidationFailureMessages);
        }
        if (!_model.redirection_tagIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_redirection_tagValidationFailureMessages);
        }

        model_internal::_cacheInitialized_isValid = true;
        model_internal::invalidConstraints_der = violatedConsts;
        model_internal::validationFailureMessages_der = validationFailureMessages;
        return violatedConsts.length == 0 && propertyValidity;
    }

    /**
     * derived property setters
     */

    model_internal function set isValid_der(value:Boolean) : void
    {
        var oldValue:Boolean = model_internal::_isValid;
        if (oldValue !== value)
        {
            model_internal::_isValid = value;
            _model.model_internal::fireChangeEvent("isValid", oldValue, model_internal::_isValid);
        }
    }

    /**
     * derived property getters
     */

    [Transient]
    [Bindable(event="propertyChange")]
    public function get _model() : _ProxyEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _ProxyEntityMetadata) : void
    {
        var oldValue : _ProxyEntityMetadata = model_internal::_dminternal_model;
        if (oldValue !== value)
        {
            model_internal::_dminternal_model = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_model", oldValue, model_internal::_dminternal_model));
        }
    }

    /**
     * methods
     */


    /**
     *  services
     */
    private var _managingService:com.adobe.fiber.services.IFiberManagingService;

    public function set managingService(managingService:com.adobe.fiber.services.IFiberManagingService):void
    {
        _managingService = managingService;
    }

    model_internal function set invalidConstraints_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_invalidConstraints;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_invalidConstraints = value;
            _model.model_internal::fireChangeEvent("invalidConstraints", oldValue, model_internal::_invalidConstraints);
        }
    }

    model_internal function set validationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_validationFailureMessages;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_validationFailureMessages = value;
            _model.model_internal::fireChangeEvent("validationFailureMessages", oldValue, model_internal::_validationFailureMessages);
        }
    }

    model_internal var _doValidationCacheOfRules : Array = null;
    model_internal var _doValidationLastValOfRules : ArrayCollection;

    model_internal function _doValidationForRules(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfRules != null && model_internal::_doValidationLastValOfRules == value)
           return model_internal::_doValidationCacheOfRules ;

        _model.model_internal::_rulesIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isRulesAvailable && _internal_rules == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "rules is required"));
        }

        model_internal::_doValidationCacheOfRules = validationFailures;
        model_internal::_doValidationLastValOfRules = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfRedirection_tag : Array = null;
    model_internal var _doValidationLastValOfRedirection_tag : String;

    model_internal function _doValidationForRedirection_tag(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfRedirection_tag != null && model_internal::_doValidationLastValOfRedirection_tag == value)
           return model_internal::_doValidationCacheOfRedirection_tag ;

        _model.model_internal::_redirection_tagIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isRedirection_tagAvailable && _internal_redirection_tag == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "redirection_tag is required"));
        }

        model_internal::_doValidationCacheOfRedirection_tag = validationFailures;
        model_internal::_doValidationLastValOfRedirection_tag = value;

        return validationFailures;
    }
    

}

}
