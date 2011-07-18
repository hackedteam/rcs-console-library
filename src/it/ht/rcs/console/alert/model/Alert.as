/**
 * This is a generated sub-class of _Alert.as and is intended for behavior
 * customization.  This class is only generated when there is no file already present
 * at its target location.  Thus custom behavior that you add here will survive regeneration
 * of the super-class. 
 *
 * NOTE: Do not manually modify the RemoteClass mapping unless
 * your server representation of this class has changed and you've 
 * updated your ActionScriptGeneration,RemoteClass annotation on the
 * corresponding entity 
 **/ 
 
package it.ht.rcs.console.alert.model
{

import com.adobe.fiber.core.model_internal;

public class Alert extends _Super_Alert
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
    public static function _initRemoteClassAlias() : void
    {
        _Super_Alert.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.alert.model.Alert);
        _Super_Alert.model_internal::initRemoteClassAliasAllRelated();
    }
     
    model_internal static function initRemoteClassAliasSingleChild() : void
    {
        _Super_Alert.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.alert.model.Alert);
    }
    
    {
        _Super_Alert.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.alert.model.Alert);
    }
    /** 
     * END OF DO NOT MODIFY SECTION
     *
     **/    
    
    public static function defaultAlert():Object
    {
      return {
        _id: '',
        enabled: false,
        suppression: 600,
        keywords: '',
        tag: 0,
        type: 'LOG',
        action: 'EVIDENCE'
      };
    }
    
    public function Alert(data:Object=null)
    {
      if (data) {
        _id = data._id;
        enabled = data.enabled;
        suppression = data.suppression;
        keywords = data.keywords;
        tag = data.tag;
        path = data.path;
        evidence = data.evidence;
        type = data.type;
        action = data.action;
        logs = data.logs;
      }
    }
}

}