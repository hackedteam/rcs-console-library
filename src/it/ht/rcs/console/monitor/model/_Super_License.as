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
import it.ht.rcs.console.monitor.model.LicenseBackdoors;
import it.ht.rcs.console.monitor.model.LicenseCollectors;
import mx.binding.utils.ChangeWatcher;
import mx.collections.ArrayCollection;
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
        it.ht.rcs.console.monitor.model.LicenseCollectors.initRemoteClassAliasSingleChild();
        it.ht.rcs.console.monitor.model.LicenseBackdoors.initRemoteClassAliasSingleChild();
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
    private var _internal_collectors : it.ht.rcs.console.monitor.model.LicenseCollectors;
    private var _internal_users : Object;
    private var _internal_shards : Object;
    private var _internal_ipa : Object;
    private var _internal_exploits : String;
    private var _internal_backdoors : it.ht.rcs.console.monitor.model.LicenseBackdoors;
    private var _internal_alerting : Boolean;
    private var _internal_correlation : Boolean;
    private var _internal_type : String;
    private var _internal_serial : String;
    private var _internal_rmi : Boolean;

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
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "shards", model_internal::setterListenerShards));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "exploits", model_internal::setterListenerExploits));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get collectors() : it.ht.rcs.console.monitor.model.LicenseCollectors
    {
        return _internal_collectors;
    }

    [Bindable(event="propertyChange")]
    public function get users() : Object
    {
        return _internal_users;
    }

    [Bindable(event="propertyChange")]
    public function get shards() : Object
    {
        return _internal_shards;
    }

    [Bindable(event="propertyChange")]
    public function get ipa() : Object
    {
        return _internal_ipa;
    }

    [Bindable(event="propertyChange")]
    public function get exploits() : String
    {
        return _internal_exploits;
    }

    [Bindable(event="propertyChange")]
    public function get backdoors() : it.ht.rcs.console.monitor.model.LicenseBackdoors
    {
        return _internal_backdoors;
    }

    [Bindable(event="propertyChange")]
    public function get alerting() : Boolean
    {
        return _internal_alerting;
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
    public function get serial() : String
    {
        return _internal_serial;
    }

    [Bindable(event="propertyChange")]
    public function get rmi() : Boolean
    {
        return _internal_rmi;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set collectors(value:it.ht.rcs.console.monitor.model.LicenseCollectors) : void
    {
        var oldValue:it.ht.rcs.console.monitor.model.LicenseCollectors = _internal_collectors;
        if (oldValue !== value)
        {
            _internal_collectors = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "collectors", oldValue, _internal_collectors));
        }
    }

    public function set users(value:Object) : void
    {
        var oldValue:Object = _internal_users;
        if (oldValue !== value)
        {
            _internal_users = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "users", oldValue, _internal_users));
        }
    }

    public function set shards(value:Object) : void
    {
        var oldValue:Object = _internal_shards;
        if (oldValue !== value)
        {
            _internal_shards = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "shards", oldValue, _internal_shards));
        }
    }

    public function set ipa(value:Object) : void
    {
        var oldValue:Object = _internal_ipa;
        if (oldValue !== value)
        {
            _internal_ipa = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ipa", oldValue, _internal_ipa));
        }
    }

    public function set exploits(value:String) : void
    {
        var oldValue:String = _internal_exploits;
        if (oldValue !== value)
        {
            _internal_exploits = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "exploits", oldValue, _internal_exploits));
        }
    }

    public function set backdoors(value:it.ht.rcs.console.monitor.model.LicenseBackdoors) : void
    {
        var oldValue:it.ht.rcs.console.monitor.model.LicenseBackdoors = _internal_backdoors;
        if (oldValue !== value)
        {
            _internal_backdoors = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "backdoors", oldValue, _internal_backdoors));
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

    public function set serial(value:String) : void
    {
        var oldValue:String = _internal_serial;
        if (oldValue !== value)
        {
            _internal_serial = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "serial", oldValue, _internal_serial));
        }
    }

    public function set rmi(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_rmi;
        if (oldValue !== value)
        {
            _internal_rmi = value;
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

    model_internal function setterListenerShards(value:flash.events.Event):void
    {
        _model.invalidateDependentOnShards();
    }

    model_internal function setterListenerExploits(value:flash.events.Event):void
    {
        _model.invalidateDependentOnExploits();
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
        if (!_model.shardsIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_shardsValidationFailureMessages);
        }
        if (!_model.exploitsIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_exploitsValidationFailureMessages);
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

    model_internal var _doValidationCacheOfShards : Array = null;
    model_internal var _doValidationLastValOfShards : Object;

    model_internal function _doValidationForShards(valueIn:Object):Array
    {
        var value : Object = valueIn as Object;

        if (model_internal::_doValidationCacheOfShards != null && model_internal::_doValidationLastValOfShards == value)
           return model_internal::_doValidationCacheOfShards ;

        _model.model_internal::_shardsIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isShardsAvailable && _internal_shards == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "shards is required"));
        }

        model_internal::_doValidationCacheOfShards = validationFailures;
        model_internal::_doValidationLastValOfShards = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfExploits : Array = null;
    model_internal var _doValidationLastValOfExploits : String;

    model_internal function _doValidationForExploits(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfExploits != null && model_internal::_doValidationLastValOfExploits == value)
           return model_internal::_doValidationCacheOfExploits ;

        _model.model_internal::_exploitsIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isExploitsAvailable && _internal_exploits == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "exploits is required"));
        }

        model_internal::_doValidationCacheOfExploits = validationFailures;
        model_internal::_doValidationLastValOfExploits = value;

        return validationFailures;
    }
    

}

}
