/**
 * This is a generated sub-class of _Entity.as and is intended for behavior
 * customization.  This class is only generated when there is no file already present
 * at its target location.  Thus custom behavior that you add here will survive regeneration
 * of the super-class. 
 *
 * NOTE: Do not manually modify the RemoteClass mapping unless
 * your server representation of this class has changed and you've 
 * updated your ActionScriptGeneration,RemoteClass annotation on the
 * corresponding entity 
 **/ 
 
package it.ht.rcs.console.entities.model
{

import com.adobe.fiber.core.model_internal;

import it.ht.rcs.console.DB;

public class Entity extends _Super_Entity
{
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
  
  public function Entity(data:Object = null)
  {
    if (data) {
      this._id=data._id;
      this.desc=data.desc;
      this.level=data.level;
      this.name=data.name;
      this.path=data.path;
      this.handles=data.handles;
      this.photos=data.photos;
      this.position=data.position;
      this.position_attr=data.position_attr;
      this.type=data.type;
    }
  }
  
  public static function defaultEntity():Object
  {
    return { //person, position
      _id: '',
      name: DB.i18n.get('NEW_ENTITY'),
      desc:'',
      level:'manual',
      path:[],
      photos:[]
      
    };
  }
  
    public static function _initRemoteClassAlias() : void
    {
        _Super_Entity.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.entities.model.Entity);
        _Super_Entity.model_internal::initRemoteClassAliasAllRelated();
    }
     
    model_internal static function initRemoteClassAliasSingleChild() : void
    {
        _Super_Entity.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.entities.model.Entity);
    }
    
    {
        _Super_Entity.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.entities.model.Entity);
    }
    /** 
     * END OF DO NOT MODIFY SECTION
     *
     **/    
}

}