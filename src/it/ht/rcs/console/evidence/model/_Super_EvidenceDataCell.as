/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - EvidenceDataCell.as.
 */

package it.ht.rcs.console.evidence.model
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.EventDispatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_EvidenceDataCell extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _EvidenceDataCellEntityMetadata;
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
    private var _internal_mcc : int;
    private var _internal_mnc : int;
    private var _internal_lac : int;
    private var _internal_cid : int;
    private var _internal_sid : int;
    private var _internal_nid : int;
    private var _internal_bid : int;
    private var _internal_db : int;
    private var _internal_adv : int;
    private var _internal_age : int;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_EvidenceDataCell()
    {
        _model = new _EvidenceDataCellEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get mcc() : int
    {
        return _internal_mcc;
    }

    [Bindable(event="propertyChange")]
    public function get mnc() : int
    {
        return _internal_mnc;
    }

    [Bindable(event="propertyChange")]
    public function get lac() : int
    {
        return _internal_lac;
    }

    [Bindable(event="propertyChange")]
    public function get cid() : int
    {
        return _internal_cid;
    }

    [Bindable(event="propertyChange")]
    public function get sid() : int
    {
        return _internal_sid;
    }

    [Bindable(event="propertyChange")]
    public function get nid() : int
    {
        return _internal_nid;
    }

    [Bindable(event="propertyChange")]
    public function get bid() : int
    {
        return _internal_bid;
    }

    [Bindable(event="propertyChange")]
    public function get db() : int
    {
        return _internal_db;
    }

    [Bindable(event="propertyChange")]
    public function get adv() : int
    {
        return _internal_adv;
    }

    [Bindable(event="propertyChange")]
    public function get age() : int
    {
        return _internal_age;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set mcc(value:int) : void
    {
        var oldValue:int = _internal_mcc;
        if (oldValue !== value)
        {
            _internal_mcc = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "mcc", oldValue, _internal_mcc));
        }
    }

    public function set mnc(value:int) : void
    {
        var oldValue:int = _internal_mnc;
        if (oldValue !== value)
        {
            _internal_mnc = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "mnc", oldValue, _internal_mnc));
        }
    }

    public function set lac(value:int) : void
    {
        var oldValue:int = _internal_lac;
        if (oldValue !== value)
        {
            _internal_lac = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "lac", oldValue, _internal_lac));
        }
    }

    public function set cid(value:int) : void
    {
        var oldValue:int = _internal_cid;
        if (oldValue !== value)
        {
            _internal_cid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cid", oldValue, _internal_cid));
        }
    }

    public function set sid(value:int) : void
    {
        var oldValue:int = _internal_sid;
        if (oldValue !== value)
        {
            _internal_sid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sid", oldValue, _internal_sid));
        }
    }

    public function set nid(value:int) : void
    {
        var oldValue:int = _internal_nid;
        if (oldValue !== value)
        {
            _internal_nid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nid", oldValue, _internal_nid));
        }
    }

    public function set bid(value:int) : void
    {
        var oldValue:int = _internal_bid;
        if (oldValue !== value)
        {
            _internal_bid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "bid", oldValue, _internal_bid));
        }
    }

    public function set db(value:int) : void
    {
        var oldValue:int = _internal_db;
        if (oldValue !== value)
        {
            _internal_db = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "db", oldValue, _internal_db));
        }
    }

    public function set adv(value:int) : void
    {
        var oldValue:int = _internal_adv;
        if (oldValue !== value)
        {
            _internal_adv = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "adv", oldValue, _internal_adv));
        }
    }

    public function set age(value:int) : void
    {
        var oldValue:int = _internal_age;
        if (oldValue !== value)
        {
            _internal_age = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "age", oldValue, _internal_age));
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
    public function get _model() : _EvidenceDataCellEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _EvidenceDataCellEntityMetadata) : void
    {
        var oldValue : _EvidenceDataCellEntityMetadata = model_internal::_dminternal_model;
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


}

}
