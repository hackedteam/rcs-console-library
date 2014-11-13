/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Entity.as.
 */

package it.ht.rcs.console.entities.model
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import it.ht.rcs.console.entities.model.Analyzed;
import it.ht.rcs.console.entities.model.Handle;
import it.ht.rcs.console.entities.model.Link;
import it.ht.rcs.console.entities.model.Position;
import it.ht.rcs.console.entities.model.Position_attr;
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
public class _Super_Entity extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        it.ht.rcs.console.entities.model.Link.initRemoteClassAliasSingleChild();
        it.ht.rcs.console.entities.model.LinkInfo.initRemoteClassAliasSingleChild();
        it.ht.rcs.console.entities.model.Position.initRemoteClassAliasSingleChild();
        it.ht.rcs.console.entities.model.Position_attr.initRemoteClassAliasSingleChild();
        it.ht.rcs.console.entities.model.Analyzed.initRemoteClassAliasSingleChild();
        it.ht.rcs.console.entities.model.Handle.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _EntityEntityMetadata;
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
    private var _internal_links : ArrayCollection;
    model_internal var _internal_links_leaf:it.ht.rcs.console.entities.model.Link;
    private var _internal_user_ids : ArrayCollection;
    private var _internal_num_links : String;
    private var _internal_position : it.ht.rcs.console.entities.model.Position;
    private var _internal_desc : String;
    private var _internal_children : ArrayCollection;
    private var _internal_type : String;
    private var _internal_photos : ArrayCollection;
    private var _internal_level : String;
    private var _internal_updated_at : String;
    private var _internal_stand_for : String;
    private var _internal__id : String;
    private var _internal_position_attr : it.ht.rcs.console.entities.model.Position_attr;
    private var _internal_analyzed : it.ht.rcs.console.entities.model.Analyzed;
    private var _internal_name : String;
    private var _internal_path : ArrayCollection;
    private var _internal_created_at : String;
    private var _internal_handles : ArrayCollection;
    model_internal var _internal_handles_leaf:it.ht.rcs.console.entities.model.Handle;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Entity()
    {
        _model = new _EntityEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "links", model_internal::setterListenerLinks));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "user_ids", model_internal::setterListenerUser_ids));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "num_links", model_internal::setterListenerNum_links));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "position", model_internal::setterListenerPosition));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "desc", model_internal::setterListenerDesc));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "children", model_internal::setterListenerChildren));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "type", model_internal::setterListenerType));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "photos", model_internal::setterListenerPhotos));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "level", model_internal::setterListenerLevel));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "updated_at", model_internal::setterListenerUpdated_at));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "stand_for", model_internal::setterListenerStand_for));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "_id", model_internal::setterListener_id));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "position_attr", model_internal::setterListenerPosition_attr));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "analyzed", model_internal::setterListenerAnalyzed));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "name", model_internal::setterListenerName));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "path", model_internal::setterListenerPath));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "created_at", model_internal::setterListenerCreated_at));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "handles", model_internal::setterListenerHandles));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get links() : ArrayCollection
    {
        return _internal_links;
    }

    [Bindable(event="propertyChange")]
    public function get user_ids() : ArrayCollection
    {
        return _internal_user_ids;
    }

    [Bindable(event="propertyChange")]
    public function get num_links() : String
    {
        return _internal_num_links;
    }

    [Bindable(event="propertyChange")]
    public function get position() : it.ht.rcs.console.entities.model.Position
    {
        return _internal_position;
    }

    [Bindable(event="propertyChange")]
    public function get desc() : String
    {
        return _internal_desc;
    }

    [Bindable(event="propertyChange")]
    public function get children() : ArrayCollection
    {
        return _internal_children;
    }

    [Bindable(event="propertyChange")]
    public function get type() : String
    {
        return _internal_type;
    }

    [Bindable(event="propertyChange")]
    public function get photos() : ArrayCollection
    {
        return _internal_photos;
    }

    [Bindable(event="propertyChange")]
    public function get level() : String
    {
        return _internal_level;
    }

    [Bindable(event="propertyChange")]
    public function get updated_at() : String
    {
        return _internal_updated_at;
    }

    [Bindable(event="propertyChange")]
    public function get stand_for() : String
    {
        return _internal_stand_for;
    }

    [Bindable(event="propertyChange")]
    public function get _id() : String
    {
        return _internal__id;
    }

    [Bindable(event="propertyChange")]
    public function get position_attr() : it.ht.rcs.console.entities.model.Position_attr
    {
        return _internal_position_attr;
    }

    [Bindable(event="propertyChange")]
    public function get analyzed() : it.ht.rcs.console.entities.model.Analyzed
    {
        return _internal_analyzed;
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
    public function get handles() : ArrayCollection
    {
        return _internal_handles;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set links(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_links;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_links = value;
            }
            else if (value is Array)
            {
                _internal_links = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_links = null;
            }
            else
            {
                throw new Error("value of links must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "links", oldValue, _internal_links));
        }
    }

    public function set user_ids(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_user_ids;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_user_ids = value;
            }
            else if (value is Array)
            {
                _internal_user_ids = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_user_ids = null;
            }
            else
            {
                throw new Error("value of user_ids must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "user_ids", oldValue, _internal_user_ids));
        }
    }

    public function set num_links(value:String) : void
    {
        var oldValue:String = _internal_num_links;
        if (oldValue !== value)
        {
            _internal_num_links = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "num_links", oldValue, _internal_num_links));
        }
    }

    public function set position(value:it.ht.rcs.console.entities.model.Position) : void
    {
        var oldValue:it.ht.rcs.console.entities.model.Position = _internal_position;
        if (oldValue !== value)
        {
            _internal_position = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "position", oldValue, _internal_position));
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

    public function set children(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_children;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_children = value;
            }
            else if (value is Array)
            {
                _internal_children = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_children = null;
            }
            else
            {
                throw new Error("value of children must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "children", oldValue, _internal_children));
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

    public function set photos(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_photos;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_photos = value;
            }
            else if (value is Array)
            {
                _internal_photos = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_photos = null;
            }
            else
            {
                throw new Error("value of photos must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "photos", oldValue, _internal_photos));
        }
    }

    public function set level(value:String) : void
    {
        var oldValue:String = _internal_level;
        if (oldValue !== value)
        {
            _internal_level = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "level", oldValue, _internal_level));
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

    public function set stand_for(value:String) : void
    {
        var oldValue:String = _internal_stand_for;
        if (oldValue !== value)
        {
            _internal_stand_for = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "stand_for", oldValue, _internal_stand_for));
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

    public function set position_attr(value:it.ht.rcs.console.entities.model.Position_attr) : void
    {
        var oldValue:it.ht.rcs.console.entities.model.Position_attr = _internal_position_attr;
        if (oldValue !== value)
        {
            _internal_position_attr = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "position_attr", oldValue, _internal_position_attr));
        }
    }

    public function set analyzed(value:it.ht.rcs.console.entities.model.Analyzed) : void
    {
        var oldValue:it.ht.rcs.console.entities.model.Analyzed = _internal_analyzed;
        if (oldValue !== value)
        {
            _internal_analyzed = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "analyzed", oldValue, _internal_analyzed));
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

    public function set handles(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_handles;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_handles = value;
            }
            else if (value is Array)
            {
                _internal_handles = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_handles = null;
            }
            else
            {
                throw new Error("value of handles must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "handles", oldValue, _internal_handles));
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

    model_internal function setterListenerLinks(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerLinks);
            }
        }
        _model.invalidateDependentOnLinks();
    }

    model_internal function setterListenerUser_ids(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerUser_ids);
            }
        }
        _model.invalidateDependentOnUser_ids();
    }

    model_internal function setterListenerNum_links(value:flash.events.Event):void
    {
        _model.invalidateDependentOnNum_links();
    }

    model_internal function setterListenerPosition(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPosition();
    }

    model_internal function setterListenerDesc(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDesc();
    }

    model_internal function setterListenerChildren(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerChildren);
            }
        }
        _model.invalidateDependentOnChildren();
    }

    model_internal function setterListenerType(value:flash.events.Event):void
    {
        _model.invalidateDependentOnType();
    }

    model_internal function setterListenerPhotos(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerPhotos);
            }
        }
        _model.invalidateDependentOnPhotos();
    }

    model_internal function setterListenerLevel(value:flash.events.Event):void
    {
        _model.invalidateDependentOnLevel();
    }

    model_internal function setterListenerUpdated_at(value:flash.events.Event):void
    {
        _model.invalidateDependentOnUpdated_at();
    }

    model_internal function setterListenerStand_for(value:flash.events.Event):void
    {
        _model.invalidateDependentOnStand_for();
    }

    model_internal function setterListener_id(value:flash.events.Event):void
    {
        _model.invalidateDependentOn_id();
    }

    model_internal function setterListenerPosition_attr(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPosition_attr();
    }

    model_internal function setterListenerAnalyzed(value:flash.events.Event):void
    {
        _model.invalidateDependentOnAnalyzed();
    }

    model_internal function setterListenerName(value:flash.events.Event):void
    {
        _model.invalidateDependentOnName();
    }

    model_internal function setterListenerPath(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerPath);
            }
        }
        _model.invalidateDependentOnPath();
    }

    model_internal function setterListenerCreated_at(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCreated_at();
    }

    model_internal function setterListenerHandles(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerHandles);
            }
        }
        _model.invalidateDependentOnHandles();
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
        if (!_model.linksIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_linksValidationFailureMessages);
        }
        if (!_model.user_idsIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_user_idsValidationFailureMessages);
        }
        if (!_model.num_linksIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_num_linksValidationFailureMessages);
        }
        if (!_model.positionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_positionValidationFailureMessages);
        }
        if (!_model.descIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_descValidationFailureMessages);
        }
        if (!_model.childrenIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_childrenValidationFailureMessages);
        }
        if (!_model.typeIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_typeValidationFailureMessages);
        }
        if (!_model.photosIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_photosValidationFailureMessages);
        }
        if (!_model.levelIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_levelValidationFailureMessages);
        }
        if (!_model.updated_atIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_updated_atValidationFailureMessages);
        }
        if (!_model.stand_forIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_stand_forValidationFailureMessages);
        }
        if (!_model._idIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::__idValidationFailureMessages);
        }
        if (!_model.position_attrIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_position_attrValidationFailureMessages);
        }
        if (!_model.analyzedIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_analyzedValidationFailureMessages);
        }
        if (!_model.nameIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_nameValidationFailureMessages);
        }
        if (!_model.pathIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_pathValidationFailureMessages);
        }
        if (!_model.created_atIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_created_atValidationFailureMessages);
        }
        if (!_model.handlesIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_handlesValidationFailureMessages);
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
    public function get _model() : _EntityEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _EntityEntityMetadata) : void
    {
        var oldValue : _EntityEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfLinks : Array = null;
    model_internal var _doValidationLastValOfLinks : ArrayCollection;

    model_internal function _doValidationForLinks(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfLinks != null && model_internal::_doValidationLastValOfLinks == value)
           return model_internal::_doValidationCacheOfLinks ;

        _model.model_internal::_linksIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isLinksAvailable && _internal_links == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "links is required"));
        }

        model_internal::_doValidationCacheOfLinks = validationFailures;
        model_internal::_doValidationLastValOfLinks = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfUser_ids : Array = null;
    model_internal var _doValidationLastValOfUser_ids : ArrayCollection;

    model_internal function _doValidationForUser_ids(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfUser_ids != null && model_internal::_doValidationLastValOfUser_ids == value)
           return model_internal::_doValidationCacheOfUser_ids ;

        _model.model_internal::_user_idsIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isUser_idsAvailable && _internal_user_ids == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "user_ids is required"));
        }

        model_internal::_doValidationCacheOfUser_ids = validationFailures;
        model_internal::_doValidationLastValOfUser_ids = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfNum_links : Array = null;
    model_internal var _doValidationLastValOfNum_links : String;

    model_internal function _doValidationForNum_links(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfNum_links != null && model_internal::_doValidationLastValOfNum_links == value)
           return model_internal::_doValidationCacheOfNum_links ;

        _model.model_internal::_num_linksIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNum_linksAvailable && _internal_num_links == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "num_links is required"));
        }

        model_internal::_doValidationCacheOfNum_links = validationFailures;
        model_internal::_doValidationLastValOfNum_links = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfPosition : Array = null;
    model_internal var _doValidationLastValOfPosition : it.ht.rcs.console.entities.model.Position;

    model_internal function _doValidationForPosition(valueIn:Object):Array
    {
        var value : it.ht.rcs.console.entities.model.Position = valueIn as it.ht.rcs.console.entities.model.Position;

        if (model_internal::_doValidationCacheOfPosition != null && model_internal::_doValidationLastValOfPosition == value)
           return model_internal::_doValidationCacheOfPosition ;

        _model.model_internal::_positionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPositionAvailable && _internal_position == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "position is required"));
        }

        model_internal::_doValidationCacheOfPosition = validationFailures;
        model_internal::_doValidationLastValOfPosition = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfDesc : Array = null;
    model_internal var _doValidationLastValOfDesc : String;

    model_internal function _doValidationForDesc(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfDesc != null && model_internal::_doValidationLastValOfDesc == value)
           return model_internal::_doValidationCacheOfDesc ;

        _model.model_internal::_descIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDescAvailable && _internal_desc == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "desc is required"));
        }

        model_internal::_doValidationCacheOfDesc = validationFailures;
        model_internal::_doValidationLastValOfDesc = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfChildren : Array = null;
    model_internal var _doValidationLastValOfChildren : ArrayCollection;

    model_internal function _doValidationForChildren(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfChildren != null && model_internal::_doValidationLastValOfChildren == value)
           return model_internal::_doValidationCacheOfChildren ;

        _model.model_internal::_childrenIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isChildrenAvailable && _internal_children == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "children is required"));
        }

        model_internal::_doValidationCacheOfChildren = validationFailures;
        model_internal::_doValidationLastValOfChildren = value;

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
    
    model_internal var _doValidationCacheOfPhotos : Array = null;
    model_internal var _doValidationLastValOfPhotos : ArrayCollection;

    model_internal function _doValidationForPhotos(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfPhotos != null && model_internal::_doValidationLastValOfPhotos == value)
           return model_internal::_doValidationCacheOfPhotos ;

        _model.model_internal::_photosIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPhotosAvailable && _internal_photos == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "photos is required"));
        }

        model_internal::_doValidationCacheOfPhotos = validationFailures;
        model_internal::_doValidationLastValOfPhotos = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfLevel : Array = null;
    model_internal var _doValidationLastValOfLevel : String;

    model_internal function _doValidationForLevel(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfLevel != null && model_internal::_doValidationLastValOfLevel == value)
           return model_internal::_doValidationCacheOfLevel ;

        _model.model_internal::_levelIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isLevelAvailable && _internal_level == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "level is required"));
        }

        model_internal::_doValidationCacheOfLevel = validationFailures;
        model_internal::_doValidationLastValOfLevel = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfUpdated_at : Array = null;
    model_internal var _doValidationLastValOfUpdated_at : String;

    model_internal function _doValidationForUpdated_at(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfUpdated_at != null && model_internal::_doValidationLastValOfUpdated_at == value)
           return model_internal::_doValidationCacheOfUpdated_at ;

        _model.model_internal::_updated_atIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isUpdated_atAvailable && _internal_updated_at == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "updated_at is required"));
        }

        model_internal::_doValidationCacheOfUpdated_at = validationFailures;
        model_internal::_doValidationLastValOfUpdated_at = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfStand_for : Array = null;
    model_internal var _doValidationLastValOfStand_for : String;

    model_internal function _doValidationForStand_for(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfStand_for != null && model_internal::_doValidationLastValOfStand_for == value)
           return model_internal::_doValidationCacheOfStand_for ;

        _model.model_internal::_stand_forIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isStand_forAvailable && _internal_stand_for == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "stand_for is required"));
        }

        model_internal::_doValidationCacheOfStand_for = validationFailures;
        model_internal::_doValidationLastValOfStand_for = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOf_id : Array = null;
    model_internal var _doValidationLastValOf_id : String;

    model_internal function _doValidationFor_id(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOf_id != null && model_internal::_doValidationLastValOf_id == value)
           return model_internal::_doValidationCacheOf_id ;

        _model.model_internal::__idIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.is_idAvailable && _internal__id == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "_id is required"));
        }

        model_internal::_doValidationCacheOf_id = validationFailures;
        model_internal::_doValidationLastValOf_id = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfPosition_attr : Array = null;
    model_internal var _doValidationLastValOfPosition_attr : it.ht.rcs.console.entities.model.Position_attr;

    model_internal function _doValidationForPosition_attr(valueIn:Object):Array
    {
        var value : it.ht.rcs.console.entities.model.Position_attr = valueIn as it.ht.rcs.console.entities.model.Position_attr;

        if (model_internal::_doValidationCacheOfPosition_attr != null && model_internal::_doValidationLastValOfPosition_attr == value)
           return model_internal::_doValidationCacheOfPosition_attr ;

        _model.model_internal::_position_attrIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPosition_attrAvailable && _internal_position_attr == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "position_attr is required"));
        }

        model_internal::_doValidationCacheOfPosition_attr = validationFailures;
        model_internal::_doValidationLastValOfPosition_attr = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfAnalyzed : Array = null;
    model_internal var _doValidationLastValOfAnalyzed : it.ht.rcs.console.entities.model.Analyzed;

    model_internal function _doValidationForAnalyzed(valueIn:Object):Array
    {
        var value : it.ht.rcs.console.entities.model.Analyzed = valueIn as it.ht.rcs.console.entities.model.Analyzed;

        if (model_internal::_doValidationCacheOfAnalyzed != null && model_internal::_doValidationLastValOfAnalyzed == value)
           return model_internal::_doValidationCacheOfAnalyzed ;

        _model.model_internal::_analyzedIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isAnalyzedAvailable && _internal_analyzed == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "analyzed is required"));
        }

        model_internal::_doValidationCacheOfAnalyzed = validationFailures;
        model_internal::_doValidationLastValOfAnalyzed = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfName : Array = null;
    model_internal var _doValidationLastValOfName : String;

    model_internal function _doValidationForName(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfName != null && model_internal::_doValidationLastValOfName == value)
           return model_internal::_doValidationCacheOfName ;

        _model.model_internal::_nameIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNameAvailable && _internal_name == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "name is required"));
        }

        model_internal::_doValidationCacheOfName = validationFailures;
        model_internal::_doValidationLastValOfName = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfPath : Array = null;
    model_internal var _doValidationLastValOfPath : ArrayCollection;

    model_internal function _doValidationForPath(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfPath != null && model_internal::_doValidationLastValOfPath == value)
           return model_internal::_doValidationCacheOfPath ;

        _model.model_internal::_pathIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPathAvailable && _internal_path == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "path is required"));
        }

        model_internal::_doValidationCacheOfPath = validationFailures;
        model_internal::_doValidationLastValOfPath = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCreated_at : Array = null;
    model_internal var _doValidationLastValOfCreated_at : String;

    model_internal function _doValidationForCreated_at(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCreated_at != null && model_internal::_doValidationLastValOfCreated_at == value)
           return model_internal::_doValidationCacheOfCreated_at ;

        _model.model_internal::_created_atIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCreated_atAvailable && _internal_created_at == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "created_at is required"));
        }

        model_internal::_doValidationCacheOfCreated_at = validationFailures;
        model_internal::_doValidationLastValOfCreated_at = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfHandles : Array = null;
    model_internal var _doValidationLastValOfHandles : ArrayCollection;

    model_internal function _doValidationForHandles(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfHandles != null && model_internal::_doValidationLastValOfHandles == value)
           return model_internal::_doValidationCacheOfHandles ;

        _model.model_internal::_handlesIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isHandlesAvailable && _internal_handles == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "handles is required"));
        }

        model_internal::_doValidationCacheOfHandles = validationFailures;
        model_internal::_doValidationLastValOfHandles = value;

        return validationFailures;
    }
    

}

}
