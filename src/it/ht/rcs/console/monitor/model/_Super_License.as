/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - License.as.
 */

package it.ht.rcs.console.monitor.model
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import it.ht.rcs.console.monitor.model.LicenseAgents;
import it.ht.rcs.console.monitor.model.LicenseCollectors;
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
public class _Super_License extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        it.ht.rcs.console.monitor.model.LicenseAgents.initRemoteClassAliasSingleChild();
        it.ht.rcs.console.monitor.model.LicenseCollectors.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _LicenseEntityMetadata;
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
    private var _internal_users : Object;
    private var _internal_exploits : Boolean;
    private var _internal_maintenance : int;
    private var _internal_agents : it.ht.rcs.console.monitor.model.LicenseAgents;
    private var _internal_alerting : Boolean;
    private var _internal_nia : ArrayCollection;
    private var _internal_correlation : Boolean;
    private var _internal_type : String;
    private var _internal_expiry : int;
    private var _internal_collectors : it.ht.rcs.console.monitor.model.LicenseCollectors;
    private var _internal_shards : int;
    private var _internal_forwarders : Boolean;
    private var _internal_serial : String;
    private var _internal_rmi : ArrayCollection;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_License()
    {
        _model = new _LicenseEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "users", model_internal::setterListenerUsers));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "agents", model_internal::setterListenerAgents));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "nia", model_internal::setterListenerNia));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "type", model_internal::setterListenerType));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "collectors", model_internal::setterListenerCollectors));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "serial", model_internal::setterListenerSerial));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "rmi", model_internal::setterListenerRmi));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get users() : Object
    {
        return _internal_users;
    }

    [Bindable(event="propertyChange")]
    public function get exploits() : Boolean
    {
        return _internal_exploits;
    }

    [Bindable(event="propertyChange")]
    public function get maintenance() : int
    {
        return _internal_maintenance;
    }

    [Bindable(event="propertyChange")]
    public function get agents() : it.ht.rcs.console.monitor.model.LicenseAgents
    {
        return _internal_agents;
    }

    [Bindable(event="propertyChange")]
    public function get alerting() : Boolean
    {
        return _internal_alerting;
    }

    [Bindable(event="propertyChange")]
    public function get nia() : ArrayCollection
    {
        return _internal_nia;
    }

    [Bindable(event="propertyChange")]
    public function get correlation() : Boolean
    {
        return _internal_correlation;
    }

    [Bindable(event="propertyChange")]
    public function get type() : String
    {
        return _internal_type;
    }

    [Bindable(event="propertyChange")]
    public function get expiry() : int
    {
        return _internal_expiry;
    }

    [Bindable(event="propertyChange")]
    public function get collectors() : it.ht.rcs.console.monitor.model.LicenseCollectors
    {
        return _internal_collectors;
    }

    [Bindable(event="propertyChange")]
    public function get shards() : int
    {
        return _internal_shards;
    }

    [Bindable(event="propertyChange")]
    public function get forwarders() : Boolean
    {
        return _internal_forwarders;
    }

    [Bindable(event="propertyChange")]
    public function get serial() : String
    {
        return _internal_serial;
    }

    [Bindable(event="propertyChange")]
    public function get rmi() : ArrayCollection
    {
        return _internal_rmi;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set users(value:Object) : void
    {
        var oldValue:Object = _internal_users;
        if (oldValue !== value)
        {
            _internal_users = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "users", oldValue, _internal_users));
        }
    }

    public function set exploits(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_exploits;
        if (oldValue !== value)
        {
            _internal_exploits = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "exploits", oldValue, _internal_exploits));
        }
    }

    public function set maintenance(value:int) : void
    {
        var oldValue:int = _internal_maintenance;
        if (oldValue !== value)
        {
            _internal_maintenance = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "maintenance", oldValue, _internal_maintenance));
        }
    }

    public function set agents(value:it.ht.rcs.console.monitor.model.LicenseAgents) : void
    {
        var oldValue:it.ht.rcs.console.monitor.model.LicenseAgents = _internal_agents;
        if (oldValue !== value)
        {
            _internal_agents = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "agents", oldValue, _internal_agents));
        }
    }

    public function set alerting(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_alerting;
        if (oldValue !== value)
        {
            _internal_alerting = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "alerting", oldValue, _internal_alerting));
        }
    }

    public function set nia(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_nia;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_nia = value;
            }
            else if (value is Array)
            {
                _internal_nia = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_nia = null;
            }
            else
            {
                throw new Error("value of nia must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nia", oldValue, _internal_nia));
        }
    }

    public function set correlation(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_correlation;
        if (oldValue !== value)
        {
            _internal_correlation = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "correlation", oldValue, _internal_correlation));
        }
    }

    public function set type(value:String) : void
    {
        var oldValue:String = _internal_type;
        if (oldValue !== value)
        {
            _internal_type = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "type", oldValue, _internal_type));
        }
    }

    public function set expiry(value:int) : void
    {
        var oldValue:int = _internal_expiry;
        if (oldValue !== value)
        {
            _internal_expiry = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "expiry", oldValue, _internal_expiry));
        }
    }

    public function set collectors(value:it.ht.rcs.console.monitor.model.LicenseCollectors) : void
    {
        var oldValue:it.ht.rcs.console.monitor.model.LicenseCollectors = _internal_collectors;
        if (oldValue !== value)
        {
            _internal_collectors = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "collectors", oldValue, _internal_collectors));
        }
    }

    public function set shards(value:int) : void
    {
        var oldValue:int = _internal_shards;
        if (oldValue !== value)
        {
            _internal_shards = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "shards", oldValue, _internal_shards));
        }
    }

    public function set forwarders(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_forwarders;
        if (oldValue !== value)
        {
            _internal_forwarders = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "forwarders", oldValue, _internal_forwarders));
        }
    }

    public function set serial(value:String) : void
    {
        var oldValue:String = _internal_serial;
        if (oldValue !== value)
        {
            _internal_serial = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "serial", oldValue, _internal_serial));
        }
    }

    public function set rmi(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_rmi;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_rmi = value;
            }
            else if (value is Array)
            {
                _internal_rmi = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_rmi = null;
            }
            else
            {
                throw new Error("value of rmi must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rmi", oldValue, _internal_rmi));
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

    model_internal function setterListenerUsers(value:flash.events.Event):void
    {
        _model.invalidateDependentOnUsers();
    }

    model_internal function setterListenerAgents(value:flash.events.Event):void
    {
        _model.invalidateDependentOnAgents();
    }

    model_internal function setterListenerNia(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerNia);
            }
        }
        _model.invalidateDependentOnNia();
    }

    model_internal function setterListenerType(value:flash.events.Event):void
    {
        _model.invalidateDependentOnType();
    }

    model_internal function setterListenerCollectors(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCollectors();
    }

    model_internal function setterListenerSerial(value:flash.events.Event):void
    {
        _model.invalidateDependentOnSerial();
    }

    model_internal function setterListenerRmi(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerRmi);
            }
        }
        _model.invalidateDependentOnRmi();
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
        if (!_model.usersIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_usersValidationFailureMessages);
        }
        if (!_model.agentsIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_agentsValidationFailureMessages);
        }
        if (!_model.niaIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_niaValidationFailureMessages);
        }
        if (!_model.typeIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_typeValidationFailureMessages);
        }
        if (!_model.collectorsIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_collectorsValidationFailureMessages);
        }
        if (!_model.serialIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_serialValidationFailureMessages);
        }
        if (!_model.rmiIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_rmiValidationFailureMessages);
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
    public function get _model() : _LicenseEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _LicenseEntityMetadata) : void
    {
        var oldValue : _LicenseEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfUsers : Array = null;
    model_internal var _doValidationLastValOfUsers : Object;

    model_internal function _doValidationForUsers(valueIn:Object):Array
    {
        var value : Object = valueIn as Object;

        if (model_internal::_doValidationCacheOfUsers != null && model_internal::_doValidationLastValOfUsers == value)
           return model_internal::_doValidationCacheOfUsers ;

        _model.model_internal::_usersIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isUsersAvailable && _internal_users == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "users is required"));
        }

        model_internal::_doValidationCacheOfUsers = validationFailures;
        model_internal::_doValidationLastValOfUsers = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfAgents : Array = null;
    model_internal var _doValidationLastValOfAgents : it.ht.rcs.console.monitor.model.LicenseAgents;

    model_internal function _doValidationForAgents(valueIn:Object):Array
    {
        var value : it.ht.rcs.console.monitor.model.LicenseAgents = valueIn as it.ht.rcs.console.monitor.model.LicenseAgents;

        if (model_internal::_doValidationCacheOfAgents != null && model_internal::_doValidationLastValOfAgents == value)
           return model_internal::_doValidationCacheOfAgents ;

        _model.model_internal::_agentsIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isAgentsAvailable && _internal_agents == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "agents is required"));
        }

        model_internal::_doValidationCacheOfAgents = validationFailures;
        model_internal::_doValidationLastValOfAgents = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfNia : Array = null;
    model_internal var _doValidationLastValOfNia : ArrayCollection;

    model_internal function _doValidationForNia(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfNia != null && model_internal::_doValidationLastValOfNia == value)
           return model_internal::_doValidationCacheOfNia ;

        _model.model_internal::_niaIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNiaAvailable && _internal_nia == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "nia is required"));
        }

        model_internal::_doValidationCacheOfNia = validationFailures;
        model_internal::_doValidationLastValOfNia = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfType : Array = null;
    model_internal var _doValidationLastValOfType : String;

    model_internal function _doValidationForType(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfType != null && model_internal::_doValidationLastValOfType == value)
           return model_internal::_doValidationCacheOfType ;

        _model.model_internal::_typeIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTypeAvailable && _internal_type == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "type is required"));
        }

        model_internal::_doValidationCacheOfType = validationFailures;
        model_internal::_doValidationLastValOfType = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCollectors : Array = null;
    model_internal var _doValidationLastValOfCollectors : it.ht.rcs.console.monitor.model.LicenseCollectors;

    model_internal function _doValidationForCollectors(valueIn:Object):Array
    {
        var value : it.ht.rcs.console.monitor.model.LicenseCollectors = valueIn as it.ht.rcs.console.monitor.model.LicenseCollectors;

        if (model_internal::_doValidationCacheOfCollectors != null && model_internal::_doValidationLastValOfCollectors == value)
           return model_internal::_doValidationCacheOfCollectors ;

        _model.model_internal::_collectorsIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCollectorsAvailable && _internal_collectors == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "collectors is required"));
        }

        model_internal::_doValidationCacheOfCollectors = validationFailures;
        model_internal::_doValidationLastValOfCollectors = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfSerial : Array = null;
    model_internal var _doValidationLastValOfSerial : String;

    model_internal function _doValidationForSerial(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfSerial != null && model_internal::_doValidationLastValOfSerial == value)
           return model_internal::_doValidationCacheOfSerial ;

        _model.model_internal::_serialIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isSerialAvailable && _internal_serial == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "serial is required"));
        }

        model_internal::_doValidationCacheOfSerial = validationFailures;
        model_internal::_doValidationLastValOfSerial = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfRmi : Array = null;
    model_internal var _doValidationLastValOfRmi : ArrayCollection;

    model_internal function _doValidationForRmi(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfRmi != null && model_internal::_doValidationLastValOfRmi == value)
           return model_internal::_doValidationCacheOfRmi ;

        _model.model_internal::_rmiIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isRmiAvailable && _internal_rmi == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "rmi is required"));
        }

        model_internal::_doValidationCacheOfRmi = validationFailures;
        model_internal::_doValidationLastValOfRmi = value;

        return validationFailures;
    }
    

}

}
