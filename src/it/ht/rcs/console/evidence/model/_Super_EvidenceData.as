/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - EvidenceData.as.
 */

package it.ht.rcs.console.evidence.model
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.EventDispatcher;
import it.ht.rcs.console.evidence.model.EvidenceDataAddress;
import it.ht.rcs.console.evidence.model.EvidenceDataCell;
import it.ht.rcs.console.evidence.model.EvidenceDataWifi;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_EvidenceData extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        it.ht.rcs.console.evidence.model.EvidenceDataAddress.initRemoteClassAliasSingleChild();
        it.ht.rcs.console.evidence.model.EvidenceDataCell.initRemoteClassAliasSingleChild();
        it.ht.rcs.console.evidence.model.EvidenceDataWifi.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _EvidenceDataEntityMetadata;
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
    private var _internal_window : String;
    private var _internal__grid_size : int;
    private var _internal_program : String;
    private var _internal_process : String;
    private var _internal_service : String;
    private var _internal_user : String;
    private var _internal_pass : String;
    private var _internal_content : String;
    private var _internal_body : String;
    private var _internal_resolution : String;
    private var _internal__grid : String;
    private var _internal_y : int;
    private var _internal_x : int;
    private var _internal_name : String;
    private var _internal_contact : String;
    private var _internal_info : String;
    private var _internal_action : String;
    private var _internal_desc : String;
    private var _internal_event : String;
    private var _internal_type : String;
    private var _internal_begin : int;
    private var _internal_end : int;
    private var _internal_peer : String;
    private var _internal_duration : int;
    private var _internal_status : String;
    private var _internal_topic : String;
    private var _internal_users : String;
    private var _internal_spool : String;
    private var _internal_access : int;
    private var _internal_from : String;
    private var _internal_caller : String;
    private var _internal_incoming : Boolean;
    private var _internal_speed : int;
    private var _internal_total : int;
    private var _internal_count : int;
    private var _internal_timeout : Boolean;
    private var _internal_draft : Boolean;
    private var _internal_from_display : String;
    private var _internal_rcpt : String;
    private var _internal_id : String;
    private var _internal_rcpt_display : String;
    private var _internal_thumb : String;
    private var _internal_subject : String;
    private var _internal_url : String;
    private var _internal_title : String;
    private var _internal_keywords : String;
    private var _internal_ip : String;
    private var _internal_latitude : Number;
    private var _internal_longitude : Number;
    private var _internal_accuracy : int;
    private var _internal_address : it.ht.rcs.console.evidence.model.EvidenceDataAddress;
    private var _internal_cell : it.ht.rcs.console.evidence.model.EvidenceDataCell;
    private var _internal_wifi : ArrayCollection;
    model_internal var _internal_wifi_leaf:it.ht.rcs.console.evidence.model.EvidenceDataWifi;
    private var _internal_path : String;
    private var _internal_attr : int;
    private var _internal_size : Number;
    private var _internal_attach : int;
    private var _internal_command : String;
    private var _internal_tr : String;
    private var _internal_version : String;
    private var _internal_encrypted : Boolean;
    private var _internal_balance : Number;
    private var _internal_amount : Number;
    private var _internal_currency : String;

    private static var emptyArray:Array = new Array();

    // Change this value according to your application's floating-point precision
    private static var epsilon:Number = 0.0001;

    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_EvidenceData()
    {
        _model = new _EvidenceDataEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get window() : String
    {
        return _internal_window;
    }

    [Bindable(event="propertyChange")]
    public function get _grid_size() : int
    {
        return _internal__grid_size;
    }

    [Bindable(event="propertyChange")]
    public function get program() : String
    {
        return _internal_program;
    }

    [Bindable(event="propertyChange")]
    public function get process() : String
    {
        return _internal_process;
    }

    [Bindable(event="propertyChange")]
    public function get service() : String
    {
        return _internal_service;
    }

    [Bindable(event="propertyChange")]
    public function get user() : String
    {
        return _internal_user;
    }

    [Bindable(event="propertyChange")]
    public function get pass() : String
    {
        return _internal_pass;
    }

    [Bindable(event="propertyChange")]
    public function get content() : String
    {
        return _internal_content;
    }

    [Bindable(event="propertyChange")]
    public function get body() : String
    {
        return _internal_body;
    }

    [Bindable(event="propertyChange")]
    public function get resolution() : String
    {
        return _internal_resolution;
    }

    [Bindable(event="propertyChange")]
    public function get _grid() : String
    {
        return _internal__grid;
    }

    [Bindable(event="propertyChange")]
    public function get y() : int
    {
        return _internal_y;
    }

    [Bindable(event="propertyChange")]
    public function get x() : int
    {
        return _internal_x;
    }

    [Bindable(event="propertyChange")]
    public function get name() : String
    {
        return _internal_name;
    }

    [Bindable(event="propertyChange")]
    public function get contact() : String
    {
        return _internal_contact;
    }

    [Bindable(event="propertyChange")]
    public function get info() : String
    {
        return _internal_info;
    }

    [Bindable(event="propertyChange")]
    public function get action() : String
    {
        return _internal_action;
    }

    [Bindable(event="propertyChange")]
    public function get desc() : String
    {
        return _internal_desc;
    }

    [Bindable(event="propertyChange")]
    public function get event() : String
    {
        return _internal_event;
    }

    [Bindable(event="propertyChange")]
    public function get type() : String
    {
        return _internal_type;
    }

    [Bindable(event="propertyChange")]
    public function get begin() : int
    {
        return _internal_begin;
    }

    [Bindable(event="propertyChange")]
    public function get end() : int
    {
        return _internal_end;
    }

    [Bindable(event="propertyChange")]
    public function get peer() : String
    {
        return _internal_peer;
    }

    [Bindable(event="propertyChange")]
    public function get duration() : int
    {
        return _internal_duration;
    }

    [Bindable(event="propertyChange")]
    public function get status() : String
    {
        return _internal_status;
    }

    [Bindable(event="propertyChange")]
    public function get topic() : String
    {
        return _internal_topic;
    }

    [Bindable(event="propertyChange")]
    public function get users() : String
    {
        return _internal_users;
    }

    [Bindable(event="propertyChange")]
    public function get spool() : String
    {
        return _internal_spool;
    }

    [Bindable(event="propertyChange")]
    public function get access() : int
    {
        return _internal_access;
    }

    [Bindable(event="propertyChange")]
    public function get from() : String
    {
        return _internal_from;
    }

    [Bindable(event="propertyChange")]
    public function get caller() : String
    {
        return _internal_caller;
    }

    [Bindable(event="propertyChange")]
    public function get incoming() : Boolean
    {
        return _internal_incoming;
    }

    [Bindable(event="propertyChange")]
    public function get speed() : int
    {
        return _internal_speed;
    }

    [Bindable(event="propertyChange")]
    public function get total() : int
    {
        return _internal_total;
    }

    [Bindable(event="propertyChange")]
    public function get count() : int
    {
        return _internal_count;
    }

    [Bindable(event="propertyChange")]
    public function get timeout() : Boolean
    {
        return _internal_timeout;
    }

    [Bindable(event="propertyChange")]
    public function get draft() : Boolean
    {
        return _internal_draft;
    }

    [Bindable(event="propertyChange")]
    public function get from_display() : String
    {
        return _internal_from_display;
    }

    [Bindable(event="propertyChange")]
    public function get rcpt() : String
    {
        return _internal_rcpt;
    }

    [Bindable(event="propertyChange")]
    public function get id() : String
    {
        return _internal_id;
    }

    [Bindable(event="propertyChange")]
    public function get rcpt_display() : String
    {
        return _internal_rcpt_display;
    }

    [Bindable(event="propertyChange")]
    public function get thumb() : String
    {
        return _internal_thumb;
    }

    [Bindable(event="propertyChange")]
    public function get subject() : String
    {
        return _internal_subject;
    }

    [Bindable(event="propertyChange")]
    public function get url() : String
    {
        return _internal_url;
    }

    [Bindable(event="propertyChange")]
    public function get title() : String
    {
        return _internal_title;
    }

    [Bindable(event="propertyChange")]
    public function get keywords() : String
    {
        return _internal_keywords;
    }

    [Bindable(event="propertyChange")]
    public function get ip() : String
    {
        return _internal_ip;
    }

    [Bindable(event="propertyChange")]
    public function get latitude() : Number
    {
        return _internal_latitude;
    }

    [Bindable(event="propertyChange")]
    public function get longitude() : Number
    {
        return _internal_longitude;
    }

    [Bindable(event="propertyChange")]
    public function get accuracy() : int
    {
        return _internal_accuracy;
    }

    [Bindable(event="propertyChange")]
    public function get address() : it.ht.rcs.console.evidence.model.EvidenceDataAddress
    {
        return _internal_address;
    }

    [Bindable(event="propertyChange")]
    public function get cell() : it.ht.rcs.console.evidence.model.EvidenceDataCell
    {
        return _internal_cell;
    }

    [Bindable(event="propertyChange")]
    public function get wifi() : ArrayCollection
    {
        return _internal_wifi;
    }

    [Bindable(event="propertyChange")]
    public function get path() : String
    {
        return _internal_path;
    }

    [Bindable(event="propertyChange")]
    public function get attr() : int
    {
        return _internal_attr;
    }

    [Bindable(event="propertyChange")]
    public function get size() : Number
    {
        return _internal_size;
    }

    [Bindable(event="propertyChange")]
    public function get attach() : int
    {
        return _internal_attach;
    }

    [Bindable(event="propertyChange")]
    public function get command() : String
    {
        return _internal_command;
    }

    [Bindable(event="propertyChange")]
    public function get tr() : String
    {
        return _internal_tr;
    }

    [Bindable(event="propertyChange")]
    public function get version() : String
    {
        return _internal_version;
    }

    [Bindable(event="propertyChange")]
    public function get encrypted() : Boolean
    {
        return _internal_encrypted;
    }

    [Bindable(event="propertyChange")]
    public function get balance() : Number
    {
        return _internal_balance;
    }

    [Bindable(event="propertyChange")]
    public function get amount() : Number
    {
        return _internal_amount;
    }

    [Bindable(event="propertyChange")]
    public function get currency() : String
    {
        return _internal_currency;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set window(value:String) : void
    {
        var oldValue:String = _internal_window;
        if (oldValue !== value)
        {
            _internal_window = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "window", oldValue, _internal_window));
        }
    }

    public function set _grid_size(value:int) : void
    {
        var oldValue:int = _internal__grid_size;
        if (oldValue !== value)
        {
            _internal__grid_size = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_grid_size", oldValue, _internal__grid_size));
        }
    }

    public function set program(value:String) : void
    {
        var oldValue:String = _internal_program;
        if (oldValue !== value)
        {
            _internal_program = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "program", oldValue, _internal_program));
        }
    }

    public function set process(value:String) : void
    {
        var oldValue:String = _internal_process;
        if (oldValue !== value)
        {
            _internal_process = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "process", oldValue, _internal_process));
        }
    }

    public function set service(value:String) : void
    {
        var oldValue:String = _internal_service;
        if (oldValue !== value)
        {
            _internal_service = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "service", oldValue, _internal_service));
        }
    }

    public function set user(value:String) : void
    {
        var oldValue:String = _internal_user;
        if (oldValue !== value)
        {
            _internal_user = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "user", oldValue, _internal_user));
        }
    }

    public function set pass(value:String) : void
    {
        var oldValue:String = _internal_pass;
        if (oldValue !== value)
        {
            _internal_pass = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "pass", oldValue, _internal_pass));
        }
    }

    public function set content(value:String) : void
    {
        var oldValue:String = _internal_content;
        if (oldValue !== value)
        {
            _internal_content = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "content", oldValue, _internal_content));
        }
    }

    public function set body(value:String) : void
    {
        var oldValue:String = _internal_body;
        if (oldValue !== value)
        {
            _internal_body = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "body", oldValue, _internal_body));
        }
    }

    public function set resolution(value:String) : void
    {
        var oldValue:String = _internal_resolution;
        if (oldValue !== value)
        {
            _internal_resolution = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "resolution", oldValue, _internal_resolution));
        }
    }

    public function set _grid(value:String) : void
    {
        var oldValue:String = _internal__grid;
        if (oldValue !== value)
        {
            _internal__grid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_grid", oldValue, _internal__grid));
        }
    }

    public function set y(value:int) : void
    {
        var oldValue:int = _internal_y;
        if (oldValue !== value)
        {
            _internal_y = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "y", oldValue, _internal_y));
        }
    }

    public function set x(value:int) : void
    {
        var oldValue:int = _internal_x;
        if (oldValue !== value)
        {
            _internal_x = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "x", oldValue, _internal_x));
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

    public function set contact(value:String) : void
    {
        var oldValue:String = _internal_contact;
        if (oldValue !== value)
        {
            _internal_contact = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "contact", oldValue, _internal_contact));
        }
    }

    public function set info(value:String) : void
    {
        var oldValue:String = _internal_info;
        if (oldValue !== value)
        {
            _internal_info = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "info", oldValue, _internal_info));
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

    public function set desc(value:String) : void
    {
        var oldValue:String = _internal_desc;
        if (oldValue !== value)
        {
            _internal_desc = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "desc", oldValue, _internal_desc));
        }
    }

    public function set event(value:String) : void
    {
        var oldValue:String = _internal_event;
        if (oldValue !== value)
        {
            _internal_event = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "event", oldValue, _internal_event));
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

    public function set begin(value:int) : void
    {
        var oldValue:int = _internal_begin;
        if (oldValue !== value)
        {
            _internal_begin = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "begin", oldValue, _internal_begin));
        }
    }

    public function set end(value:int) : void
    {
        var oldValue:int = _internal_end;
        if (oldValue !== value)
        {
            _internal_end = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "end", oldValue, _internal_end));
        }
    }

    public function set peer(value:String) : void
    {
        var oldValue:String = _internal_peer;
        if (oldValue !== value)
        {
            _internal_peer = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "peer", oldValue, _internal_peer));
        }
    }

    public function set duration(value:int) : void
    {
        var oldValue:int = _internal_duration;
        if (oldValue !== value)
        {
            _internal_duration = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "duration", oldValue, _internal_duration));
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

    public function set topic(value:String) : void
    {
        var oldValue:String = _internal_topic;
        if (oldValue !== value)
        {
            _internal_topic = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "topic", oldValue, _internal_topic));
        }
    }

    public function set users(value:String) : void
    {
        var oldValue:String = _internal_users;
        if (oldValue !== value)
        {
            _internal_users = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "users", oldValue, _internal_users));
        }
    }

    public function set spool(value:String) : void
    {
        var oldValue:String = _internal_spool;
        if (oldValue !== value)
        {
            _internal_spool = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "spool", oldValue, _internal_spool));
        }
    }

    public function set access(value:int) : void
    {
        var oldValue:int = _internal_access;
        if (oldValue !== value)
        {
            _internal_access = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "access", oldValue, _internal_access));
        }
    }

    public function set from(value:String) : void
    {
        var oldValue:String = _internal_from;
        if (oldValue !== value)
        {
            _internal_from = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "from", oldValue, _internal_from));
        }
    }

    public function set caller(value:String) : void
    {
        var oldValue:String = _internal_caller;
        if (oldValue !== value)
        {
            _internal_caller = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "caller", oldValue, _internal_caller));
        }
    }

    public function set incoming(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_incoming;
        if (oldValue !== value)
        {
            _internal_incoming = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "incoming", oldValue, _internal_incoming));
        }
    }

    public function set speed(value:int) : void
    {
        var oldValue:int = _internal_speed;
        if (oldValue !== value)
        {
            _internal_speed = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "speed", oldValue, _internal_speed));
        }
    }

    public function set total(value:int) : void
    {
        var oldValue:int = _internal_total;
        if (oldValue !== value)
        {
            _internal_total = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "total", oldValue, _internal_total));
        }
    }

    public function set count(value:int) : void
    {
        var oldValue:int = _internal_count;
        if (oldValue !== value)
        {
            _internal_count = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "count", oldValue, _internal_count));
        }
    }

    public function set timeout(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_timeout;
        if (oldValue !== value)
        {
            _internal_timeout = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "timeout", oldValue, _internal_timeout));
        }
    }

    public function set draft(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_draft;
        if (oldValue !== value)
        {
            _internal_draft = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "draft", oldValue, _internal_draft));
        }
    }

    public function set from_display(value:String) : void
    {
        var oldValue:String = _internal_from_display;
        if (oldValue !== value)
        {
            _internal_from_display = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "from_display", oldValue, _internal_from_display));
        }
    }

    public function set rcpt(value:String) : void
    {
        var oldValue:String = _internal_rcpt;
        if (oldValue !== value)
        {
            _internal_rcpt = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rcpt", oldValue, _internal_rcpt));
        }
    }

    public function set id(value:String) : void
    {
        var oldValue:String = _internal_id;
        if (oldValue !== value)
        {
            _internal_id = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id", oldValue, _internal_id));
        }
    }

    public function set rcpt_display(value:String) : void
    {
        var oldValue:String = _internal_rcpt_display;
        if (oldValue !== value)
        {
            _internal_rcpt_display = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rcpt_display", oldValue, _internal_rcpt_display));
        }
    }

    public function set thumb(value:String) : void
    {
        var oldValue:String = _internal_thumb;
        if (oldValue !== value)
        {
            _internal_thumb = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "thumb", oldValue, _internal_thumb));
        }
    }

    public function set subject(value:String) : void
    {
        var oldValue:String = _internal_subject;
        if (oldValue !== value)
        {
            _internal_subject = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "subject", oldValue, _internal_subject));
        }
    }

    public function set url(value:String) : void
    {
        var oldValue:String = _internal_url;
        if (oldValue !== value)
        {
            _internal_url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "url", oldValue, _internal_url));
        }
    }

    public function set title(value:String) : void
    {
        var oldValue:String = _internal_title;
        if (oldValue !== value)
        {
            _internal_title = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "title", oldValue, _internal_title));
        }
    }

    public function set keywords(value:String) : void
    {
        var oldValue:String = _internal_keywords;
        if (oldValue !== value)
        {
            _internal_keywords = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "keywords", oldValue, _internal_keywords));
        }
    }

    public function set ip(value:String) : void
    {
        var oldValue:String = _internal_ip;
        if (oldValue !== value)
        {
            _internal_ip = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ip", oldValue, _internal_ip));
        }
    }

    public function set latitude(value:Number) : void
    {
        var oldValue:Number = _internal_latitude;
        if (isNaN(_internal_latitude) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_latitude = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "latitude", oldValue, _internal_latitude));
        }
    }

    public function set longitude(value:Number) : void
    {
        var oldValue:Number = _internal_longitude;
        if (isNaN(_internal_longitude) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_longitude = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "longitude", oldValue, _internal_longitude));
        }
    }

    public function set accuracy(value:int) : void
    {
        var oldValue:int = _internal_accuracy;
        if (oldValue !== value)
        {
            _internal_accuracy = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "accuracy", oldValue, _internal_accuracy));
        }
    }

    public function set address(value:it.ht.rcs.console.evidence.model.EvidenceDataAddress) : void
    {
        var oldValue:it.ht.rcs.console.evidence.model.EvidenceDataAddress = _internal_address;
        if (oldValue !== value)
        {
            _internal_address = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "address", oldValue, _internal_address));
        }
    }

    public function set cell(value:it.ht.rcs.console.evidence.model.EvidenceDataCell) : void
    {
        var oldValue:it.ht.rcs.console.evidence.model.EvidenceDataCell = _internal_cell;
        if (oldValue !== value)
        {
            _internal_cell = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cell", oldValue, _internal_cell));
        }
    }

    public function set wifi(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_wifi;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_wifi = value;
            }
            else if (value is Array)
            {
                _internal_wifi = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_wifi = null;
            }
            else
            {
                throw new Error("value of wifi must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "wifi", oldValue, _internal_wifi));
        }
    }

    public function set path(value:String) : void
    {
        var oldValue:String = _internal_path;
        if (oldValue !== value)
        {
            _internal_path = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "path", oldValue, _internal_path));
        }
    }

    public function set attr(value:int) : void
    {
        var oldValue:int = _internal_attr;
        if (oldValue !== value)
        {
            _internal_attr = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "attr", oldValue, _internal_attr));
        }
    }

    public function set size(value:Number) : void
    {
        var oldValue:Number = _internal_size;
        if (isNaN(_internal_size) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_size = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "size", oldValue, _internal_size));
        }
    }

    public function set attach(value:int) : void
    {
        var oldValue:int = _internal_attach;
        if (oldValue !== value)
        {
            _internal_attach = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "attach", oldValue, _internal_attach));
        }
    }

    public function set command(value:String) : void
    {
        var oldValue:String = _internal_command;
        if (oldValue !== value)
        {
            _internal_command = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "command", oldValue, _internal_command));
        }
    }

    public function set tr(value:String) : void
    {
        var oldValue:String = _internal_tr;
        if (oldValue !== value)
        {
            _internal_tr = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tr", oldValue, _internal_tr));
        }
    }

    public function set version(value:String) : void
    {
        var oldValue:String = _internal_version;
        if (oldValue !== value)
        {
            _internal_version = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "version", oldValue, _internal_version));
        }
    }

    public function set encrypted(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_encrypted;
        if (oldValue !== value)
        {
            _internal_encrypted = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "encrypted", oldValue, _internal_encrypted));
        }
    }

    public function set balance(value:Number) : void
    {
        var oldValue:Number = _internal_balance;
        if (isNaN(_internal_balance) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_balance = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "balance", oldValue, _internal_balance));
        }
    }

    public function set amount(value:Number) : void
    {
        var oldValue:Number = _internal_amount;
        if (isNaN(_internal_amount) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_amount = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "amount", oldValue, _internal_amount));
        }
    }

    public function set currency(value:String) : void
    {
        var oldValue:String = _internal_currency;
        if (oldValue !== value)
        {
            _internal_currency = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "currency", oldValue, _internal_currency));
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
    public function get _model() : _EvidenceDataEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _EvidenceDataEntityMetadata) : void
    {
        var oldValue : _EvidenceDataEntityMetadata = model_internal::_dminternal_model;
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
