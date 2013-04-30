/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - LicenseAgents.as.
 */

package it.ht.rcs.console.monitor.model
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
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
public class _Super_LicenseAgents extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _LicenseAgentsEntityMetadata;
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
    private var _internal_symbian : ArrayCollection;
    private var _internal_blackberry : ArrayCollection;
    private var _internal_osx : ArrayCollection;
    private var _internal_total : Object;
    private var _internal_android : ArrayCollection;
    private var _internal_ios : ArrayCollection;
    private var _internal_desktop : Object;
    private var _internal_windows : ArrayCollection;
    private var _internal_winmo : ArrayCollection;
    private var _internal_winphone : ArrayCollection;
    private var _internal_linux : ArrayCollection;
    private var _internal_mobile : Object;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_LicenseAgents()
    {
        _model = new _LicenseAgentsEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "symbian", model_internal::setterListenerSymbian));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "blackberry", model_internal::setterListenerBlackberry));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "osx", model_internal::setterListenerOsx));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "total", model_internal::setterListenerTotal));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "android", model_internal::setterListenerAndroid));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "ios", model_internal::setterListenerIos));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "desktop", model_internal::setterListenerDesktop));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "windows", model_internal::setterListenerWindows));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "winmo", model_internal::setterListenerWinmo));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "winphone", model_internal::setterListenerWinphone));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "linux", model_internal::setterListenerLinux));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "mobile", model_internal::setterListenerMobile));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get symbian() : ArrayCollection
    {
        return _internal_symbian;
    }

    [Bindable(event="propertyChange")]
    public function get blackberry() : ArrayCollection
    {
        return _internal_blackberry;
    }

    [Bindable(event="propertyChange")]
    public function get osx() : ArrayCollection
    {
        return _internal_osx;
    }

    [Bindable(event="propertyChange")]
    public function get total() : Object
    {
        return _internal_total;
    }

    [Bindable(event="propertyChange")]
    public function get android() : ArrayCollection
    {
        return _internal_android;
    }

    [Bindable(event="propertyChange")]
    public function get ios() : ArrayCollection
    {
        return _internal_ios;
    }

    [Bindable(event="propertyChange")]
    public function get desktop() : Object
    {
        return _internal_desktop;
    }

    [Bindable(event="propertyChange")]
    public function get windows() : ArrayCollection
    {
        return _internal_windows;
    }

    [Bindable(event="propertyChange")]
    public function get winmo() : ArrayCollection
    {
        return _internal_winmo;
    }
    
    [Bindable(event="propertyChange")]
    public function get winphone() : ArrayCollection
    {
      return _internal_winphone;
    }

    [Bindable(event="propertyChange")]
    public function get linux() : ArrayCollection
    {
        return _internal_linux;
    }

    [Bindable(event="propertyChange")]
    public function get mobile() : Object
    {
        return _internal_mobile;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set symbian(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_symbian;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_symbian = value;
            }
            else if (value is Array)
            {
                _internal_symbian = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_symbian = null;
            }
            else
            {
                throw new Error("value of symbian must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "symbian", oldValue, _internal_symbian));
        }
    }

    public function set blackberry(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_blackberry;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_blackberry = value;
            }
            else if (value is Array)
            {
                _internal_blackberry = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_blackberry = null;
            }
            else
            {
                throw new Error("value of blackberry must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "blackberry", oldValue, _internal_blackberry));
        }
    }

    public function set osx(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_osx;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_osx = value;
            }
            else if (value is Array)
            {
                _internal_osx = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_osx = null;
            }
            else
            {
                throw new Error("value of osx must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "osx", oldValue, _internal_osx));
        }
    }

    public function set total(value:Object) : void
    {
        var oldValue:Object = _internal_total;
        if (oldValue !== value)
        {
            _internal_total = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "total", oldValue, _internal_total));
        }
    }

    public function set android(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_android;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_android = value;
            }
            else if (value is Array)
            {
                _internal_android = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_android = null;
            }
            else
            {
                throw new Error("value of android must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "android", oldValue, _internal_android));
        }
    }

    public function set ios(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_ios;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_ios = value;
            }
            else if (value is Array)
            {
                _internal_ios = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_ios = null;
            }
            else
            {
                throw new Error("value of ios must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ios", oldValue, _internal_ios));
        }
    }

    public function set desktop(value:Object) : void
    {
        var oldValue:Object = _internal_desktop;
        if (oldValue !== value)
        {
            _internal_desktop = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "desktop", oldValue, _internal_desktop));
        }
    }

    public function set windows(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_windows;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_windows = value;
            }
            else if (value is Array)
            {
                _internal_windows = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_windows = null;
            }
            else
            {
                throw new Error("value of windows must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "windows", oldValue, _internal_windows));
        }
    }

    public function set winmo(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_winmo;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_winmo = value;
            }
            else if (value is Array)
            {
                _internal_winmo = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_winmo = null;
            }
            else
            {
                throw new Error("value of winmo must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "winmo", oldValue, _internal_winmo));
        }
    }
    
    public function set winphone(value:*) : void
    {
      var oldValue:ArrayCollection = _internal_winphone;
      if (oldValue !== value)
      {
        if (value is ArrayCollection)
        {
          _internal_winphone = value;
        }
        else if (value is Array)
        {
          _internal_winphone = new ArrayCollection(value);
        }
        else if (value == null)
        {
          _internal_winphone = null;
        }
        else
        {
          throw new Error("value of winphone must be a collection");
        }
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "winphone", oldValue, _internal_winphone));
      }
    }

    public function set linux(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_linux;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_linux = value;
            }
            else if (value is Array)
            {
                _internal_linux = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_linux = null;
            }
            else
            {
                throw new Error("value of linux must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "linux", oldValue, _internal_linux));
        }
    }

    public function set mobile(value:Object) : void
    {
        var oldValue:Object = _internal_mobile;
        if (oldValue !== value)
        {
            _internal_mobile = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "mobile", oldValue, _internal_mobile));
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

    model_internal function setterListenerSymbian(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerSymbian);
            }
        }
        _model.invalidateDependentOnSymbian();
    }

    model_internal function setterListenerBlackberry(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerBlackberry);
            }
        }
        _model.invalidateDependentOnBlackberry();
    }

    model_internal function setterListenerOsx(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerOsx);
            }
        }
        _model.invalidateDependentOnOsx();
    }

    model_internal function setterListenerTotal(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTotal();
    }

    model_internal function setterListenerAndroid(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerAndroid);
            }
        }
        _model.invalidateDependentOnAndroid();
    }

    model_internal function setterListenerIos(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerIos);
            }
        }
        _model.invalidateDependentOnIos();
    }

    model_internal function setterListenerDesktop(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDesktop();
    }

    model_internal function setterListenerWindows(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerWindows);
            }
        }
        _model.invalidateDependentOnWindows();
    }

    model_internal function setterListenerWinmo(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerWinmo);
            }
        }
        _model.invalidateDependentOnWinmo();
    }
    
    model_internal function setterListenerWinphone(value:flash.events.Event):void
    {
      if (value is mx.events.PropertyChangeEvent)
      {
        if (mx.events.PropertyChangeEvent(value).newValue)
        {
          mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerWinphone);
        }
      }
      _model.invalidateDependentOnWinphone();
    }

    model_internal function setterListenerLinux(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerLinux);
            }
        }
        _model.invalidateDependentOnLinux();
    }

    model_internal function setterListenerMobile(value:flash.events.Event):void
    {
        _model.invalidateDependentOnMobile();
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
        if (!_model.symbianIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_symbianValidationFailureMessages);
        }
        if (!_model.blackberryIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_blackberryValidationFailureMessages);
        }
        if (!_model.osxIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_osxValidationFailureMessages);
        }
        if (!_model.totalIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_totalValidationFailureMessages);
        }
        if (!_model.androidIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_androidValidationFailureMessages);
        }
        if (!_model.iosIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_iosValidationFailureMessages);
        }
        if (!_model.desktopIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_desktopValidationFailureMessages);
        }
        if (!_model.windowsIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_windowsValidationFailureMessages);
        }
        if (!_model.winmoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_winmoValidationFailureMessages);
        }
        if (!_model.winphoneIsValid)
        {
          propertyValidity = false;
          com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_winphoneValidationFailureMessages);
        }
        if (!_model.linuxIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_linuxValidationFailureMessages);
        }
        if (!_model.mobileIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_mobileValidationFailureMessages);
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
    public function get _model() : _LicenseAgentsEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _LicenseAgentsEntityMetadata) : void
    {
        var oldValue : _LicenseAgentsEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfSymbian : Array = null;
    model_internal var _doValidationLastValOfSymbian : ArrayCollection;

    model_internal function _doValidationForSymbian(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfSymbian != null && model_internal::_doValidationLastValOfSymbian == value)
           return model_internal::_doValidationCacheOfSymbian ;

        _model.model_internal::_symbianIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isSymbianAvailable && _internal_symbian == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "symbian is required"));
        }

        model_internal::_doValidationCacheOfSymbian = validationFailures;
        model_internal::_doValidationLastValOfSymbian = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfBlackberry : Array = null;
    model_internal var _doValidationLastValOfBlackberry : ArrayCollection;

    model_internal function _doValidationForBlackberry(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfBlackberry != null && model_internal::_doValidationLastValOfBlackberry == value)
           return model_internal::_doValidationCacheOfBlackberry ;

        _model.model_internal::_blackberryIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isBlackberryAvailable && _internal_blackberry == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "blackberry is required"));
        }

        model_internal::_doValidationCacheOfBlackberry = validationFailures;
        model_internal::_doValidationLastValOfBlackberry = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfOsx : Array = null;
    model_internal var _doValidationLastValOfOsx : ArrayCollection;

    model_internal function _doValidationForOsx(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfOsx != null && model_internal::_doValidationLastValOfOsx == value)
           return model_internal::_doValidationCacheOfOsx ;

        _model.model_internal::_osxIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isOsxAvailable && _internal_osx == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "osx is required"));
        }

        model_internal::_doValidationCacheOfOsx = validationFailures;
        model_internal::_doValidationLastValOfOsx = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfTotal : Array = null;
    model_internal var _doValidationLastValOfTotal : Object;

    model_internal function _doValidationForTotal(valueIn:Object):Array
    {
        var value : Object = valueIn as Object;

        if (model_internal::_doValidationCacheOfTotal != null && model_internal::_doValidationLastValOfTotal == value)
           return model_internal::_doValidationCacheOfTotal ;

        _model.model_internal::_totalIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTotalAvailable && _internal_total == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "total is required"));
        }

        model_internal::_doValidationCacheOfTotal = validationFailures;
        model_internal::_doValidationLastValOfTotal = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfAndroid : Array = null;
    model_internal var _doValidationLastValOfAndroid : ArrayCollection;

    model_internal function _doValidationForAndroid(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfAndroid != null && model_internal::_doValidationLastValOfAndroid == value)
           return model_internal::_doValidationCacheOfAndroid ;

        _model.model_internal::_androidIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isAndroidAvailable && _internal_android == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "android is required"));
        }

        model_internal::_doValidationCacheOfAndroid = validationFailures;
        model_internal::_doValidationLastValOfAndroid = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfIos : Array = null;
    model_internal var _doValidationLastValOfIos : ArrayCollection;

    model_internal function _doValidationForIos(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfIos != null && model_internal::_doValidationLastValOfIos == value)
           return model_internal::_doValidationCacheOfIos ;

        _model.model_internal::_iosIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isIosAvailable && _internal_ios == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "ios is required"));
        }

        model_internal::_doValidationCacheOfIos = validationFailures;
        model_internal::_doValidationLastValOfIos = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfDesktop : Array = null;
    model_internal var _doValidationLastValOfDesktop : Object;

    model_internal function _doValidationForDesktop(valueIn:Object):Array
    {
        var value : Object = valueIn as Object;

        if (model_internal::_doValidationCacheOfDesktop != null && model_internal::_doValidationLastValOfDesktop == value)
           return model_internal::_doValidationCacheOfDesktop ;

        _model.model_internal::_desktopIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDesktopAvailable && _internal_desktop == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "desktop is required"));
        }

        model_internal::_doValidationCacheOfDesktop = validationFailures;
        model_internal::_doValidationLastValOfDesktop = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfWindows : Array = null;
    model_internal var _doValidationLastValOfWindows : ArrayCollection;

    model_internal function _doValidationForWindows(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfWindows != null && model_internal::_doValidationLastValOfWindows == value)
           return model_internal::_doValidationCacheOfWindows ;

        _model.model_internal::_windowsIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isWindowsAvailable && _internal_windows == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "windows is required"));
        }

        model_internal::_doValidationCacheOfWindows = validationFailures;
        model_internal::_doValidationLastValOfWindows = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfWinmo : Array = null;
    model_internal var _doValidationLastValOfWinmo : ArrayCollection;

    model_internal function _doValidationForWinmo(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfWinmo != null && model_internal::_doValidationLastValOfWinmo == value)
           return model_internal::_doValidationCacheOfWinmo ;

        _model.model_internal::_winmoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isWinmoAvailable && _internal_winmo == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "winmo is required"));
        }

        model_internal::_doValidationCacheOfWinmo = validationFailures;
        model_internal::_doValidationLastValOfWinmo = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfWinphone : Array = null;
    model_internal var _doValidationLastValOfWinphone : ArrayCollection;
    
    model_internal function _doValidationForWinphone(valueIn:Object):Array
    {
      var value : ArrayCollection = valueIn as ArrayCollection;
      
      if (model_internal::_doValidationCacheOfWinphone != null && model_internal::_doValidationLastValOfWinphone == value)
        return model_internal::_doValidationCacheOfWinphone ;
      
      _model.model_internal::_winphoneIsValidCacheInitialized = true;
      var validationFailures:Array = new Array();
      var errorMessage:String;
      var failure:Boolean;
      
      var valRes:ValidationResult;
      if (_model.isWinmoAvailable && _internal_winmo == null)
      {
        validationFailures.push(new ValidationResult(true, "", "", "winphone is required"));
      }
      
      model_internal::_doValidationCacheOfWinphone = validationFailures;
      model_internal::_doValidationLastValOfWinphone = value;
      
      return validationFailures;
    }
    
    model_internal var _doValidationCacheOfLinux : Array = null;
    model_internal var _doValidationLastValOfLinux : ArrayCollection;

    model_internal function _doValidationForLinux(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfLinux != null && model_internal::_doValidationLastValOfLinux == value)
           return model_internal::_doValidationCacheOfLinux ;

        _model.model_internal::_linuxIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isLinuxAvailable && _internal_linux == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "linux is required"));
        }

        model_internal::_doValidationCacheOfLinux = validationFailures;
        model_internal::_doValidationLastValOfLinux = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfMobile : Array = null;
    model_internal var _doValidationLastValOfMobile : Object;

    model_internal function _doValidationForMobile(valueIn:Object):Array
    {
        var value : Object = valueIn as Object;

        if (model_internal::_doValidationCacheOfMobile != null && model_internal::_doValidationLastValOfMobile == value)
           return model_internal::_doValidationCacheOfMobile ;

        _model.model_internal::_mobileIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isMobileAvailable && _internal_mobile == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "mobile is required"));
        }

        model_internal::_doValidationCacheOfMobile = validationFailures;
        model_internal::_doValidationLastValOfMobile = value;

        return validationFailures;
    }
    

}

}
