/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Backdoor.as.
 */

package it.ht.rcs.console.backdoor.model
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.EventDispatcher;
import it.ht.rcs.console.backdoor.model.Configs;
import it.ht.rcs.console.operation.model.Stat;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_Backdoor extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        it.ht.rcs.console.operation.model.Stat.initRemoteClassAliasSingleChild();
        it.ht.rcs.console.backdoor.model.Configs.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _BackdoorEntityMetadata;
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
    private var _internal_demo : Boolean;
    private var _internal__kind : String;
    private var _internal_desc : String;
    private var _internal_status : String;
    private var _internal_group_ids : ArrayCollection;
    private var _internal_seed : String;
    private var _internal_counter : int;
    private var _internal_type : String;
    private var _internal_deleted : Boolean;
    private var _internal_stat : it.ht.rcs.console.operation.model.Stat;
    private var _internal_configs : ArrayCollection;
    model_internal var _internal_configs_leaf:it.ht.rcs.console.backdoor.model.Configs;
    private var _internal_logkey : String;
    private var _internal_updated_at : String;
    private var _internal__id : String;
    private var _internal_ident : String;
    private var _internal_confkey : String;
    private var _internal_name : String;
    private var _internal_path : ArrayCollection;
    private var _internal_created_at : String;
    private var _internal__mid : int;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Backdoor()
    {
        _model = new _BackdoorEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get demo() : Boolean
    {
        return _internal_demo;
    }

    [Bindable(event="propertyChange")]
    public function get _kind() : String
    {
        return _internal__kind;
    }

    [Bindable(event="propertyChange")]
    public function get desc() : String
    {
        return _internal_desc;
    }

    [Bindable(event="propertyChange")]
    public function get status() : String
    {
        return _internal_status;
    }

    [Bindable(event="propertyChange")]
    public function get group_ids() : ArrayCollection
    {
        return _internal_group_ids;
    }

    [Bindable(event="propertyChange")]
    public function get seed() : String
    {
        return _internal_seed;
    }

    [Bindable(event="propertyChange")]
    public function get counter() : int
    {
        return _internal_counter;
    }

    [Bindable(event="propertyChange")]
    public function get type() : String
    {
        return _internal_type;
    }

    [Bindable(event="propertyChange")]
    public function get deleted() : Boolean
    {
        return _internal_deleted;
    }

    [Bindable(event="propertyChange")]
    public function get stat() : it.ht.rcs.console.operation.model.Stat
    {
        return _internal_stat;
    }

    [Bindable(event="propertyChange")]
    public function get configs() : ArrayCollection
    {
        return _internal_configs;
    }

    [Bindable(event="propertyChange")]
    public function get logkey() : String
    {
        return _internal_logkey;
    }

    [Bindable(event="propertyChange")]
    public function get updated_at() : String
    {
        return _internal_updated_at;
    }

    [Bindable(event="propertyChange")]
    public function get _id() : String
    {
        return _internal__id;
    }

    [Bindable(event="propertyChange")]
    public function get ident() : String
    {
        return _internal_ident;
    }

    [Bindable(event="propertyChange")]
    public function get confkey() : String
    {
        return _internal_confkey;
    }

    [Bindable(event="propertyChange")]
    public function get name() : String
    {
        return _internal_name;
    }

    [Bindable(event="propertyChange")]
    public function get path() : ArrayCollection
    {
        return _internal_path;
    }

    [Bindable(event="propertyChange")]
    public function get created_at() : String
    {
        return _internal_created_at;
    }

    [Bindable(event="propertyChange")]
    public function get _mid() : int
    {
        return _internal__mid;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set demo(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_demo;
        if (oldValue !== value)
        {
            _internal_demo = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "demo", oldValue, _internal_demo));
        }
    }

    public function set _kind(value:String) : void
    {
        var oldValue:String = _internal__kind;
        if (oldValue !== value)
        {
            _internal__kind = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_kind", oldValue, _internal__kind));
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

    public function set status(value:String) : void
    {
        var oldValue:String = _internal_status;
        if (oldValue !== value)
        {
            _internal_status = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "status", oldValue, _internal_status));
        }
    }

    public function set group_ids(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_group_ids;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_group_ids = value;
            }
            else if (value is Array)
            {
                _internal_group_ids = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_group_ids = null;
            }
            else
            {
                throw new Error("value of group_ids must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "group_ids", oldValue, _internal_group_ids));
        }
    }

    public function set seed(value:String) : void
    {
        var oldValue:String = _internal_seed;
        if (oldValue !== value)
        {
            _internal_seed = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "seed", oldValue, _internal_seed));
        }
    }

    public function set counter(value:int) : void
    {
        var oldValue:int = _internal_counter;
        if (oldValue !== value)
        {
            _internal_counter = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "counter", oldValue, _internal_counter));
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

    public function set deleted(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_deleted;
        if (oldValue !== value)
        {
            _internal_deleted = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "deleted", oldValue, _internal_deleted));
        }
    }

    public function set stat(value:it.ht.rcs.console.operation.model.Stat) : void
    {
        var oldValue:it.ht.rcs.console.operation.model.Stat = _internal_stat;
        if (oldValue !== value)
        {
            _internal_stat = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "stat", oldValue, _internal_stat));
        }
    }

    public function set configs(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_configs;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_configs = value;
            }
            else if (value is Array)
            {
                _internal_configs = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_configs = null;
            }
            else
            {
                throw new Error("value of configs must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "configs", oldValue, _internal_configs));
        }
    }

    public function set logkey(value:String) : void
    {
        var oldValue:String = _internal_logkey;
        if (oldValue !== value)
        {
            _internal_logkey = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "logkey", oldValue, _internal_logkey));
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

    public function set _id(value:String) : void
    {
        var oldValue:String = _internal__id;
        if (oldValue !== value)
        {
            _internal__id = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_id", oldValue, _internal__id));
        }
    }

    public function set ident(value:String) : void
    {
        var oldValue:String = _internal_ident;
        if (oldValue !== value)
        {
            _internal_ident = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ident", oldValue, _internal_ident));
        }
    }

    public function set confkey(value:String) : void
    {
        var oldValue:String = _internal_confkey;
        if (oldValue !== value)
        {
            _internal_confkey = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "confkey", oldValue, _internal_confkey));
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

    public function set path(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_path;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_path = value;
            }
            else if (value is Array)
            {
                _internal_path = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_path = null;
            }
            else
            {
                throw new Error("value of path must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "path", oldValue, _internal_path));
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

    public function set _mid(value:int) : void
    {
        var oldValue:int = _internal__mid;
        if (oldValue !== value)
        {
            _internal__mid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_mid", oldValue, _internal__mid));
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
    public function get _model() : _BackdoorEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _BackdoorEntityMetadata) : void
    {
        var oldValue : _BackdoorEntityMetadata = model_internal::_dminternal_model;
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
