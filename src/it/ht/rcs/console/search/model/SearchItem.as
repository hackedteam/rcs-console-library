/**
 * This is a generated sub-class of _SearchItem.as and is intended for behavior
 * customization.  This class is only generated when there is no file already present
 * at its target location.  Thus custom behavior that you add here will survive regeneration
 * of the super-class. 
 *
 * NOTE: Do not manually modify the RemoteClass mapping unless
 * your server representation of this class has changed and you've 
 * updated your ActionScriptGeneration,RemoteClass annotation on the
 * corresponding entity 
 **/ 
 
package it.ht.rcs.console.search.model
{

import com.adobe.fiber.core.model_internal;

import mx.events.PropertyChangeEvent;

public class SearchItem extends _Super_SearchItem
{
    private var _internal_separator:Boolean = false;
    
    public function SearchItem(data:Object = null)
    {
      if (data) {
        _id = data._id;
        _kind = data._kind;
         desc = data.desc;
        name = data.name;
        status = data.status;
        path = data.path;
        group_ids = data.group_ids;
        stat = data.stat;
      }
    }
    
    [Bindable(event="propertyChange")]
    public function get text() : String
    {
      var string : String = name;
      if (desc.length > 0)
        string += " - " + desc + "";
      return string;
    }
    
    [Bindable(event="propertyChange")]
    public function get separator() : Boolean
    {
      return _internal_separator;
    }
    
    public function set separator(value:Boolean) : void
    {
      var oldValue:Boolean = _internal_separator;
      if (oldValue !== value)
      {
        _internal_separator = value;
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "separator", oldValue, _internal_separator));
      }
    }
    
    /** 
     * DO NOT MODIFY THIS STATIC INITIALIZER - IT IS NECESSARY
     * FOR PROPERLY SETTING UP THE REMOTE CLASS ALIAS FOR THIS CLASS
     *
     **/
     
    /**
     * Calling this static function will initialize RemoteClass aliases
     * for this value object as well as all of the value objects corresponding
     * to entities associated to this value object's entity.  
     */     
    public static function _initRemoteClassAlias() : void
    {
        _Super_SearchItem.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.search.model.SearchItem);
        _Super_SearchItem.model_internal::initRemoteClassAliasAllRelated();
    }
     
    model_internal static function initRemoteClassAliasSingleChild() : void
    {
        _Super_SearchItem.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.search.model.SearchItem);
    }
    
    {
        _Super_SearchItem.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.search.model.SearchItem);
    }
    /** 
     * END OF DO NOT MODIFY SECTION
     *
     **/    
}

}