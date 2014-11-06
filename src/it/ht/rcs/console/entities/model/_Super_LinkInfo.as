/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - LinkInfo.as.
 */

package it.ht.rcs.console.entities.model
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
public class _Super_LinkInfo extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _LinkInfoEntityMetadata;
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
    private var _internal_viber : ArrayCollection;
    private var _internal_mail : ArrayCollection;
    private var _internal_bbm : ArrayCollection;
    private var _internal_phone : ArrayCollection;
    private var _internal_msn : ArrayCollection;
    private var _internal_gtalk : ArrayCollection;
    private var _internal_line : ArrayCollection;
    private var _internal_telegram : ArrayCollection;
    private var _internal_url : ArrayCollection;
    private var _internal_whatsapp : ArrayCollection;
    private var _internal_twitter : ArrayCollection;
    private var _internal_facebook : ArrayCollection;
    private var _internal_money : ArrayCollection;
    private var _internal_gmail : ArrayCollection;
    private var _internal_adium : ArrayCollection;
    private var _internal_wechat : ArrayCollection;
    private var _internal_skype : ArrayCollection;
    private var _internal_yahoo : ArrayCollection;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_LinkInfo()
    {
        _model = new _LinkInfoEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "viber", model_internal::setterListenerViber));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "mail", model_internal::setterListenerMail));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "bbm", model_internal::setterListenerBbm));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "phone", model_internal::setterListenerPhone));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "msn", model_internal::setterListenerMsn));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "gtalk", model_internal::setterListenerGtalk));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "line", model_internal::setterListenerLine));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "telegram", model_internal::setterListenerTelegram));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "url", model_internal::setterListenerUrl));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "whatsapp", model_internal::setterListenerWhatsapp));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "twitter", model_internal::setterListenerTwitter));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "facebook", model_internal::setterListenerFacebook));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "money", model_internal::setterListenerMoney));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "gmail", model_internal::setterListenerGmail));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "adium", model_internal::setterListenerAdium));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "wechat", model_internal::setterListenerWechat));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "skype", model_internal::setterListenerSkype));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "yahoo", model_internal::setterListenerYahoo));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get viber() : ArrayCollection
    {
        return _internal_viber;
    }

    [Bindable(event="propertyChange")]
    public function get mail() : ArrayCollection
    {
        return _internal_mail;
    }

    [Bindable(event="propertyChange")]
    public function get bbm() : ArrayCollection
    {
        return _internal_bbm;
    }

    [Bindable(event="propertyChange")]
    public function get phone() : ArrayCollection
    {
        return _internal_phone;
    }

    [Bindable(event="propertyChange")]
    public function get msn() : ArrayCollection
    {
        return _internal_msn;
    }

    [Bindable(event="propertyChange")]
    public function get gtalk() : ArrayCollection
    {
        return _internal_gtalk;
    }

    [Bindable(event="propertyChange")]
    public function get line() : ArrayCollection
    {
        return _internal_line;
    }

    [Bindable(event="propertyChange")]
    public function get telegram() : ArrayCollection
    {
        return _internal_telegram;
    }

    [Bindable(event="propertyChange")]
    public function get url() : ArrayCollection
    {
        return _internal_url;
    }

    [Bindable(event="propertyChange")]
    public function get whatsapp() : ArrayCollection
    {
        return _internal_whatsapp;
    }

    [Bindable(event="propertyChange")]
    public function get twitter() : ArrayCollection
    {
        return _internal_twitter;
    }

    [Bindable(event="propertyChange")]
    public function get facebook() : ArrayCollection
    {
        return _internal_facebook;
    }

    [Bindable(event="propertyChange")]
    public function get money() : ArrayCollection
    {
        return _internal_money;
    }

    [Bindable(event="propertyChange")]
    public function get gmail() : ArrayCollection
    {
        return _internal_gmail;
    }

    [Bindable(event="propertyChange")]
    public function get adium() : ArrayCollection
    {
        return _internal_adium;
    }

    [Bindable(event="propertyChange")]
    public function get wechat() : ArrayCollection
    {
        return _internal_wechat;
    }

    [Bindable(event="propertyChange")]
    public function get skype() : ArrayCollection
    {
        return _internal_skype;
    }

    [Bindable(event="propertyChange")]
    public function get yahoo() : ArrayCollection
    {
        return _internal_yahoo;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set viber(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_viber;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_viber = value;
            }
            else if (value is Array)
            {
                _internal_viber = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_viber = null;
            }
            else
            {
                throw new Error("value of viber must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "viber", oldValue, _internal_viber));
        }
    }

    public function set mail(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_mail;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_mail = value;
            }
            else if (value is Array)
            {
                _internal_mail = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_mail = null;
            }
            else
            {
                throw new Error("value of mail must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "mail", oldValue, _internal_mail));
        }
    }

    public function set bbm(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_bbm;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_bbm = value;
            }
            else if (value is Array)
            {
                _internal_bbm = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_bbm = null;
            }
            else
            {
                throw new Error("value of bbm must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "bbm", oldValue, _internal_bbm));
        }
    }

    public function set phone(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_phone;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_phone = value;
            }
            else if (value is Array)
            {
                _internal_phone = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_phone = null;
            }
            else
            {
                throw new Error("value of phone must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "phone", oldValue, _internal_phone));
        }
    }

    public function set msn(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_msn;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_msn = value;
            }
            else if (value is Array)
            {
                _internal_msn = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_msn = null;
            }
            else
            {
                throw new Error("value of msn must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "msn", oldValue, _internal_msn));
        }
    }

    public function set gtalk(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_gtalk;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_gtalk = value;
            }
            else if (value is Array)
            {
                _internal_gtalk = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_gtalk = null;
            }
            else
            {
                throw new Error("value of gtalk must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "gtalk", oldValue, _internal_gtalk));
        }
    }

    public function set line(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_line;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_line = value;
            }
            else if (value is Array)
            {
                _internal_line = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_line = null;
            }
            else
            {
                throw new Error("value of line must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "line", oldValue, _internal_line));
        }
    }

    public function set telegram(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_telegram;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_telegram = value;
            }
            else if (value is Array)
            {
                _internal_telegram = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_telegram = null;
            }
            else
            {
                throw new Error("value of telegram must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "telegram", oldValue, _internal_telegram));
        }
    }

    public function set url(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_url;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_url = value;
            }
            else if (value is Array)
            {
                _internal_url = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_url = null;
            }
            else
            {
                throw new Error("value of url must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "url", oldValue, _internal_url));
        }
    }

    public function set whatsapp(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_whatsapp;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_whatsapp = value;
            }
            else if (value is Array)
            {
                _internal_whatsapp = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_whatsapp = null;
            }
            else
            {
                throw new Error("value of whatsapp must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "whatsapp", oldValue, _internal_whatsapp));
        }
    }

    public function set twitter(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_twitter;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_twitter = value;
            }
            else if (value is Array)
            {
                _internal_twitter = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_twitter = null;
            }
            else
            {
                throw new Error("value of twitter must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "twitter", oldValue, _internal_twitter));
        }
    }

    public function set facebook(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_facebook;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_facebook = value;
            }
            else if (value is Array)
            {
                _internal_facebook = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_facebook = null;
            }
            else
            {
                throw new Error("value of facebook must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "facebook", oldValue, _internal_facebook));
        }
    }

    public function set money(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_money;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_money = value;
            }
            else if (value is Array)
            {
                _internal_money = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_money = null;
            }
            else
            {
                throw new Error("value of money must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "money", oldValue, _internal_money));
        }
    }

    public function set gmail(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_gmail;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_gmail = value;
            }
            else if (value is Array)
            {
                _internal_gmail = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_gmail = null;
            }
            else
            {
                throw new Error("value of gmail must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "gmail", oldValue, _internal_gmail));
        }
    }

    public function set adium(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_adium;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_adium = value;
            }
            else if (value is Array)
            {
                _internal_adium = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_adium = null;
            }
            else
            {
                throw new Error("value of adium must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "adium", oldValue, _internal_adium));
        }
    }

    public function set wechat(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_wechat;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_wechat = value;
            }
            else if (value is Array)
            {
                _internal_wechat = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_wechat = null;
            }
            else
            {
                throw new Error("value of wechat must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "wechat", oldValue, _internal_wechat));
        }
    }

    public function set skype(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_skype;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_skype = value;
            }
            else if (value is Array)
            {
                _internal_skype = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_skype = null;
            }
            else
            {
                throw new Error("value of skype must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "skype", oldValue, _internal_skype));
        }
    }

    public function set yahoo(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_yahoo;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_yahoo = value;
            }
            else if (value is Array)
            {
                _internal_yahoo = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_yahoo = null;
            }
            else
            {
                throw new Error("value of yahoo must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "yahoo", oldValue, _internal_yahoo));
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

    model_internal function setterListenerViber(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerViber);
            }
        }
        _model.invalidateDependentOnViber();
    }

    model_internal function setterListenerMail(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerMail);
            }
        }
        _model.invalidateDependentOnMail();
    }

    model_internal function setterListenerBbm(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerBbm);
            }
        }
        _model.invalidateDependentOnBbm();
    }

    model_internal function setterListenerPhone(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerPhone);
            }
        }
        _model.invalidateDependentOnPhone();
    }

    model_internal function setterListenerMsn(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerMsn);
            }
        }
        _model.invalidateDependentOnMsn();
    }

    model_internal function setterListenerGtalk(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerGtalk);
            }
        }
        _model.invalidateDependentOnGtalk();
    }

    model_internal function setterListenerLine(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerLine);
            }
        }
        _model.invalidateDependentOnLine();
    }

    model_internal function setterListenerTelegram(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerTelegram);
            }
        }
        _model.invalidateDependentOnTelegram();
    }

    model_internal function setterListenerUrl(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerUrl);
            }
        }
        _model.invalidateDependentOnUrl();
    }

    model_internal function setterListenerWhatsapp(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerWhatsapp);
            }
        }
        _model.invalidateDependentOnWhatsapp();
    }

    model_internal function setterListenerTwitter(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerTwitter);
            }
        }
        _model.invalidateDependentOnTwitter();
    }

    model_internal function setterListenerFacebook(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerFacebook);
            }
        }
        _model.invalidateDependentOnFacebook();
    }

    model_internal function setterListenerMoney(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerMoney);
            }
        }
        _model.invalidateDependentOnMoney();
    }

    model_internal function setterListenerGmail(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerGmail);
            }
        }
        _model.invalidateDependentOnGmail();
    }

    model_internal function setterListenerAdium(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerAdium);
            }
        }
        _model.invalidateDependentOnAdium();
    }

    model_internal function setterListenerWechat(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerWechat);
            }
        }
        _model.invalidateDependentOnWechat();
    }

    model_internal function setterListenerSkype(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerSkype);
            }
        }
        _model.invalidateDependentOnSkype();
    }

    model_internal function setterListenerYahoo(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerYahoo);
            }
        }
        _model.invalidateDependentOnYahoo();
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
        if (!_model.viberIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_viberValidationFailureMessages);
        }
        if (!_model.mailIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_mailValidationFailureMessages);
        }
        if (!_model.bbmIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_bbmValidationFailureMessages);
        }
        if (!_model.phoneIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_phoneValidationFailureMessages);
        }
        if (!_model.msnIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_msnValidationFailureMessages);
        }
        if (!_model.gtalkIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_gtalkValidationFailureMessages);
        }
        if (!_model.lineIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_lineValidationFailureMessages);
        }
        if (!_model.telegramIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_telegramValidationFailureMessages);
        }
        if (!_model.urlIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_urlValidationFailureMessages);
        }
        if (!_model.whatsappIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_whatsappValidationFailureMessages);
        }
        if (!_model.twitterIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_twitterValidationFailureMessages);
        }
        if (!_model.facebookIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_facebookValidationFailureMessages);
        }
        if (!_model.moneyIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_moneyValidationFailureMessages);
        }
        if (!_model.gmailIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_gmailValidationFailureMessages);
        }
        if (!_model.adiumIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_adiumValidationFailureMessages);
        }
        if (!_model.wechatIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_wechatValidationFailureMessages);
        }
        if (!_model.skypeIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_skypeValidationFailureMessages);
        }
        if (!_model.yahooIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_yahooValidationFailureMessages);
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
    public function get _model() : _LinkInfoEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _LinkInfoEntityMetadata) : void
    {
        var oldValue : _LinkInfoEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfViber : Array = null;
    model_internal var _doValidationLastValOfViber : ArrayCollection;

    model_internal function _doValidationForViber(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfViber != null && model_internal::_doValidationLastValOfViber == value)
           return model_internal::_doValidationCacheOfViber ;

        _model.model_internal::_viberIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isViberAvailable && _internal_viber == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "viber is required"));
        }

        model_internal::_doValidationCacheOfViber = validationFailures;
        model_internal::_doValidationLastValOfViber = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfMail : Array = null;
    model_internal var _doValidationLastValOfMail : ArrayCollection;

    model_internal function _doValidationForMail(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfMail != null && model_internal::_doValidationLastValOfMail == value)
           return model_internal::_doValidationCacheOfMail ;

        _model.model_internal::_mailIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isMailAvailable && _internal_mail == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "mail is required"));
        }

        model_internal::_doValidationCacheOfMail = validationFailures;
        model_internal::_doValidationLastValOfMail = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfBbm : Array = null;
    model_internal var _doValidationLastValOfBbm : ArrayCollection;

    model_internal function _doValidationForBbm(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfBbm != null && model_internal::_doValidationLastValOfBbm == value)
           return model_internal::_doValidationCacheOfBbm ;

        _model.model_internal::_bbmIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isBbmAvailable && _internal_bbm == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "bbm is required"));
        }

        model_internal::_doValidationCacheOfBbm = validationFailures;
        model_internal::_doValidationLastValOfBbm = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfPhone : Array = null;
    model_internal var _doValidationLastValOfPhone : ArrayCollection;

    model_internal function _doValidationForPhone(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfPhone != null && model_internal::_doValidationLastValOfPhone == value)
           return model_internal::_doValidationCacheOfPhone ;

        _model.model_internal::_phoneIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPhoneAvailable && _internal_phone == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "phone is required"));
        }

        model_internal::_doValidationCacheOfPhone = validationFailures;
        model_internal::_doValidationLastValOfPhone = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfMsn : Array = null;
    model_internal var _doValidationLastValOfMsn : ArrayCollection;

    model_internal function _doValidationForMsn(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfMsn != null && model_internal::_doValidationLastValOfMsn == value)
           return model_internal::_doValidationCacheOfMsn ;

        _model.model_internal::_msnIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isMsnAvailable && _internal_msn == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "msn is required"));
        }

        model_internal::_doValidationCacheOfMsn = validationFailures;
        model_internal::_doValidationLastValOfMsn = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfGtalk : Array = null;
    model_internal var _doValidationLastValOfGtalk : ArrayCollection;

    model_internal function _doValidationForGtalk(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfGtalk != null && model_internal::_doValidationLastValOfGtalk == value)
           return model_internal::_doValidationCacheOfGtalk ;

        _model.model_internal::_gtalkIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isGtalkAvailable && _internal_gtalk == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "gtalk is required"));
        }

        model_internal::_doValidationCacheOfGtalk = validationFailures;
        model_internal::_doValidationLastValOfGtalk = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfLine : Array = null;
    model_internal var _doValidationLastValOfLine : ArrayCollection;

    model_internal function _doValidationForLine(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfLine != null && model_internal::_doValidationLastValOfLine == value)
           return model_internal::_doValidationCacheOfLine ;

        _model.model_internal::_lineIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isLineAvailable && _internal_line == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "line is required"));
        }

        model_internal::_doValidationCacheOfLine = validationFailures;
        model_internal::_doValidationLastValOfLine = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfTelegram : Array = null;
    model_internal var _doValidationLastValOfTelegram : ArrayCollection;

    model_internal function _doValidationForTelegram(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfTelegram != null && model_internal::_doValidationLastValOfTelegram == value)
           return model_internal::_doValidationCacheOfTelegram ;

        _model.model_internal::_telegramIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTelegramAvailable && _internal_telegram == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "telegram is required"));
        }

        model_internal::_doValidationCacheOfTelegram = validationFailures;
        model_internal::_doValidationLastValOfTelegram = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfUrl : Array = null;
    model_internal var _doValidationLastValOfUrl : ArrayCollection;

    model_internal function _doValidationForUrl(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfUrl != null && model_internal::_doValidationLastValOfUrl == value)
           return model_internal::_doValidationCacheOfUrl ;

        _model.model_internal::_urlIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isUrlAvailable && _internal_url == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "url is required"));
        }

        model_internal::_doValidationCacheOfUrl = validationFailures;
        model_internal::_doValidationLastValOfUrl = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfWhatsapp : Array = null;
    model_internal var _doValidationLastValOfWhatsapp : ArrayCollection;

    model_internal function _doValidationForWhatsapp(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfWhatsapp != null && model_internal::_doValidationLastValOfWhatsapp == value)
           return model_internal::_doValidationCacheOfWhatsapp ;

        _model.model_internal::_whatsappIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isWhatsappAvailable && _internal_whatsapp == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "whatsapp is required"));
        }

        model_internal::_doValidationCacheOfWhatsapp = validationFailures;
        model_internal::_doValidationLastValOfWhatsapp = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfTwitter : Array = null;
    model_internal var _doValidationLastValOfTwitter : ArrayCollection;

    model_internal function _doValidationForTwitter(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfTwitter != null && model_internal::_doValidationLastValOfTwitter == value)
           return model_internal::_doValidationCacheOfTwitter ;

        _model.model_internal::_twitterIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTwitterAvailable && _internal_twitter == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "twitter is required"));
        }

        model_internal::_doValidationCacheOfTwitter = validationFailures;
        model_internal::_doValidationLastValOfTwitter = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfFacebook : Array = null;
    model_internal var _doValidationLastValOfFacebook : ArrayCollection;

    model_internal function _doValidationForFacebook(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfFacebook != null && model_internal::_doValidationLastValOfFacebook == value)
           return model_internal::_doValidationCacheOfFacebook ;

        _model.model_internal::_facebookIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isFacebookAvailable && _internal_facebook == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "facebook is required"));
        }

        model_internal::_doValidationCacheOfFacebook = validationFailures;
        model_internal::_doValidationLastValOfFacebook = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfMoney : Array = null;
    model_internal var _doValidationLastValOfMoney : ArrayCollection;

    model_internal function _doValidationForMoney(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfMoney != null && model_internal::_doValidationLastValOfMoney == value)
           return model_internal::_doValidationCacheOfMoney ;

        _model.model_internal::_moneyIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isMoneyAvailable && _internal_money == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "money is required"));
        }

        model_internal::_doValidationCacheOfMoney = validationFailures;
        model_internal::_doValidationLastValOfMoney = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfGmail : Array = null;
    model_internal var _doValidationLastValOfGmail : ArrayCollection;

    model_internal function _doValidationForGmail(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfGmail != null && model_internal::_doValidationLastValOfGmail == value)
           return model_internal::_doValidationCacheOfGmail ;

        _model.model_internal::_gmailIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isGmailAvailable && _internal_gmail == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "gmail is required"));
        }

        model_internal::_doValidationCacheOfGmail = validationFailures;
        model_internal::_doValidationLastValOfGmail = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfAdium : Array = null;
    model_internal var _doValidationLastValOfAdium : ArrayCollection;

    model_internal function _doValidationForAdium(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfAdium != null && model_internal::_doValidationLastValOfAdium == value)
           return model_internal::_doValidationCacheOfAdium ;

        _model.model_internal::_adiumIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isAdiumAvailable && _internal_adium == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "adium is required"));
        }

        model_internal::_doValidationCacheOfAdium = validationFailures;
        model_internal::_doValidationLastValOfAdium = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfWechat : Array = null;
    model_internal var _doValidationLastValOfWechat : ArrayCollection;

    model_internal function _doValidationForWechat(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfWechat != null && model_internal::_doValidationLastValOfWechat == value)
           return model_internal::_doValidationCacheOfWechat ;

        _model.model_internal::_wechatIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isWechatAvailable && _internal_wechat == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "wechat is required"));
        }

        model_internal::_doValidationCacheOfWechat = validationFailures;
        model_internal::_doValidationLastValOfWechat = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfSkype : Array = null;
    model_internal var _doValidationLastValOfSkype : ArrayCollection;

    model_internal function _doValidationForSkype(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfSkype != null && model_internal::_doValidationLastValOfSkype == value)
           return model_internal::_doValidationCacheOfSkype ;

        _model.model_internal::_skypeIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isSkypeAvailable && _internal_skype == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "skype is required"));
        }

        model_internal::_doValidationCacheOfSkype = validationFailures;
        model_internal::_doValidationLastValOfSkype = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfYahoo : Array = null;
    model_internal var _doValidationLastValOfYahoo : ArrayCollection;

    model_internal function _doValidationForYahoo(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfYahoo != null && model_internal::_doValidationLastValOfYahoo == value)
           return model_internal::_doValidationCacheOfYahoo ;

        _model.model_internal::_yahooIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isYahooAvailable && _internal_yahoo == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "yahoo is required"));
        }

        model_internal::_doValidationCacheOfYahoo = validationFailures;
        model_internal::_doValidationLastValOfYahoo = value;

        return validationFailures;
    }
    

}

}
