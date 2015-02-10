package it.ht.rcs.console.search.model
{
  import com.adobe.fiber.core.model_internal;
  
  public class StatEvidence extends _Super_StatEvidence
  {
    
    public function StatEvidence(data:Object=null)
    {
      if (data) {
        addressbook = data.addressbook;
        application = data.application;
        calendar = data.calendar;
        call = data.call;
        camera = data.camera;
        chat = data.chat;
        clipboard = data.clipboard;
        device = data.device;
        file = data.file;
        keylog = data.keylog;
        message = data.message;
        mic = data.mic;
        mouse = data.mouse;
        password = data.password;
        position = data.position;
        print = data.print;
        screenshot = data.screenshot;
        upload = data.upload;
        url = data.url;
        money=data.money
        photo=data.photo
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
    public static function _initRemoteClassAlias():void
    {
      _Super_StatEvidence.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.search.model.StatEvidence);
      _Super_StatEvidence.model_internal::initRemoteClassAliasAllRelated();
    }
    
    model_internal static function initRemoteClassAliasSingleChild():void
    {
      _Super_StatEvidence.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.search.model.StatEvidence);
    }
    {
      _Super_StatEvidence.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.search.model.StatEvidence);
    }
    /**
     * END OF DO NOT MODIFY SECTION
     **/
  }

}