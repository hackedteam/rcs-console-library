/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - InjectorRule.as.
 */

package it.ht.rcs.console.network.model
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
public class _Super_InjectorRule extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _InjectorRuleEntityMetadata;
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
    private var _internal_action_param : String;
    private var _internal_enabled : Boolean;
    private var _internal_action_param_name : String;
    private var _internal_resource : String;
    private var _internal_target_id : ArrayCollection;
    private var _internal_updated_at : String;
    private var _internal__id : String;
    private var _internal_ident : String;
    private var _internal_action : String;
    private var _internal_created_at : String;
    private var _internal_disable_sync : Boolean;
    private var _internal_ident_param : String;
    private var _internal_probability : int;
    private var _internal_scout : Boolean;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_InjectorRule()
    {
        _model = new _InjectorRuleEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get action_param() : String
    {
        return _internal_action_param;
    }

    [Bindable(event="propertyChange")]
    public function get enabled() : Boolean
    {
        return _internal_enabled;
    }

    [Bindable(event="propertyChange")]
    public function get action_param_name() : String
    {
        return _internal_action_param_name;
    }

    [Bindable(event="propertyChange")]
    public function get resource() : String
    {
        return _internal_resource;
    }

    [Bindable(event="propertyChange")]
    public function get target_id() : ArrayCollection
    {
        return _internal_target_id;
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
    public function get action() : String
    {
        return _internal_action;
    }

    [Bindable(event="propertyChange")]
    public function get created_at() : String
    {
        return _internal_created_at;
    }

    [Bindable(event="propertyChange")]
    public function get disable_sync() : Boolean
    {
        return _internal_disable_sync;
    }

    [Bindable(event="propertyChange")]
    public function get ident_param() : String
    {
        return _internal_ident_param;
    }

    [Bindable(event="propertyChange")]
    public function get probability() : int
    {
        return _internal_probability;
    }

    [Bindable(event="propertyChange")]
    public function get scout() : Boolean
    {
        return _internal_scout;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set action_param(value:String) : void
    {
        var oldValue:String = _internal_action_param;
        if (oldValue !== value)
        {
            _internal_action_param = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "action_param", oldValue, _internal_action_param));
        }
    }

    public function set enabled(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_enabled;
        if (oldValue !== value)
        {
            _internal_enabled = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "enabled", oldValue, _internal_enabled));
        }
    }

    public function set action_param_name(value:String) : void
    {
        var oldValue:String = _internal_action_param_name;
        if (oldValue !== value)
        {
            _internal_action_param_name = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "action_param_name", oldValue, _internal_action_param_name));
        }
    }

    public function set resource(value:String) : void
    {
        var oldValue:String = _internal_resource;
        if (oldValue !== value)
        {
            _internal_resource = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "resource", oldValue, _internal_resource));
        }
    }

    public function set target_id(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_target_id;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_target_id = value;
            }
            else if (value is Array)
            {
                _internal_target_id = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_target_id = null;
            }
            else
            {
                throw new Error("value of target_id must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "target_id", oldValue, _internal_target_id));
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

    public function set action(value:String) : void
    {
        var oldValue:String = _internal_action;
        if (oldValue !== value)
        {
            _internal_action = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "action", oldValue, _internal_action));
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

    public function set disable_sync(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_disable_sync;
        if (oldValue !== value)
        {
            _internal_disable_sync = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "disable_sync", oldValue, _internal_disable_sync));
        }
    }

    public function set ident_param(value:String) : void
    {
        var oldValue:String = _internal_ident_param;
        if (oldValue !== value)
        {
            _internal_ident_param = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ident_param", oldValue, _internal_ident_param));
        }
    }

    public function set probability(value:int) : void
    {
        var oldValue:int = _internal_probability;
        if (oldValue !== value)
        {
            _internal_probability = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "probability", oldValue, _internal_probability));
        }
    }

    public function set scout(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_scout;
        if (oldValue !== value)
        {
            _internal_scout = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "scout", oldValue, _internal_scout));
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
    public function get _model() : _InjectorRuleEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _InjectorRuleEntityMetadata) : void
    {
        var oldValue : _InjectorRuleEntityMetadata = model_internal::_dminternal_model;
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
