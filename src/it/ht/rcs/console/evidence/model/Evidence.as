package it.ht.rcs.console.evidence.model
{
  import com.adobe.fiber.core.model_internal;
  
  public class Evidence extends _Super_Evidence
  {
    public static function defaultEvidence():Object
    {
      return {
        
        _id: '',
        aid:'',
        blo:false,
        da:0,
        data:{},
        dr:0,
        _mid:0,
        note:'',
        rel:0,
        type:'' //default type??
        
      };
    }
    
    public function Evidence(data:Object=null)
    {
      if (data) {
        this._id = data._id;
        this.aid =data.aid;
        this.blo =data.blo;     
        this.da=data.da;
        this.dr =data.dr;
        this._mid=data._mid;
        this.note =data.note;
        this.rel =data.rel;   
        this.type=data.type;
        this.data =data.data;
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
      _Super_Evidence.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.evidence.model.Evidence);
      _Super_Evidence.model_internal::initRemoteClassAliasAllRelated();
    }
     
    model_internal static function initRemoteClassAliasSingleChild():void
    {
      _Super_Evidence.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.evidence.model.Evidence);
    }
    {
      _Super_Evidence.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.evidence.model.Evidence);
    }
    /**
     * END OF DO NOT MODIFY SECTION
     **/
  }

}