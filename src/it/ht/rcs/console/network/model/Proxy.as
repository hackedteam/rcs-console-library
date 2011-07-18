package it.ht.rcs.console.network.model
{

import com.adobe.fiber.core.model_internal;

import it.ht.rcs.console.DB;

public class Proxy extends _Super_Proxy
{
  
  public static function defaultProxy():Object
  {
    return {
      _id: '',
      address: '',
      desc: '',
      name: DB.i18n.getString('NEW_PROXY'),
      poll: false,
      port: 4444,
      redirect: 'auto',
      redirection_tag: '',
      rules: [],
      version: ''
    };
  }
  
  public function Proxy(data:Object = null)
  {
    if (data) {
      _id = data._id;
      address = data.address;
      desc = data.desc;
      name = data.name;
      poll = data.poll;
      port = data.port;
      redirect = data.redirect;
      redirection_tag = data.redirection_tag;
      rules = data.rules;
      version = data.version;
      created_at = data.created_at;
      updated_at = data.updated_at;
    }
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
  public static function _initRemoteClassAlias() : void
  {
    _Super_Proxy.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.network.model.Proxy);
    _Super_Proxy.model_internal::initRemoteClassAliasAllRelated();
  }
  
  model_internal static function initRemoteClassAliasSingleChild() : void
  {
    _Super_Proxy.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.network.model.Proxy);
  }
  
  {
    _Super_Proxy.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.network.model.Proxy);
  }
  /** 
   * END OF DO NOT MODIFY SECTION
   **/
  
}

}