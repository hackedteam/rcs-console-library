package it.ht.rcs.console.search.model
{
  import com.adobe.fiber.core.model_internal;
  
  import it.ht.rcs.console.entities.model.Entity;
  import it.ht.rcs.console.search.model.Stat;
  
  public class SearchItem extends _Super_SearchItem
  {
    
    public function SearchItem(data:Object = null)
    {
      if (data) {
        _id = data._id;
        if(data is Entity)
        {
          _kind="entity";
        }
        else
        {
          _kind = data._kind;
        }
        desc = data.desc;
        name = data.name;
        if(data is Entity)
        {
          status = null;
        }
        else
        {
          status = data.status;
        }
        
        path = data.path;
       
        if (data.hasOwnProperty('platform'))
          platform = data.platform;
        if (data.hasOwnProperty('stat'))
          stat = data.stat;
        else
          stat = new Stat();
      }
    }
    
    [Bindable(event='propertyChange')]
    public function get text() : String
    {
      var string : String = name;
      if (desc.length > 0)
        string += ' - ' + desc + '';
      return string;
    }
    
    /**
     * DO NOT MODIFY THIS STATIC INITIALIZER - IT IS NECESSARY
     * FOR PROPERLY SETTING UP THE REMOTE CLASS ALIAS FOR THIS CLASS
     **/
    
    /**
     * Calling this static function will initialize RemoteClass aliases
     * for this value object as well as all of the value objects corresponding
     * to entities associated to this value object's entity.
     */
    public static function _initRemoteClassAlias():void
    {
      _Super_SearchItem.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.search.model.SearchItem);
      _Super_SearchItem.model_internal::initRemoteClassAliasAllRelated();
    }
    
    model_internal static function initRemoteClassAliasSingleChild():void
    {
      _Super_SearchItem.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.search.model.SearchItem);
    }
    {
      _Super_SearchItem.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.search.model.SearchItem);
    }
    /**
     * END OF DO NOT MODIFY SECTION
     **/
  }

}