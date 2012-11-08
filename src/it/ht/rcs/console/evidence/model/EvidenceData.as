package it.ht.rcs.console.evidence.model
{
  import com.adobe.fiber.core.model_internal;
  
  import mx.collections.ArrayCollection;
  
  public class EvidenceData extends _Super_EvidenceData
  {
    public function EvidenceData(data:Object=null)
    {
      if (data) {
        this._grid=data._grid;
        this._grid_size=data.grid_size;
        this.access=data.access;
        this.accuracy=data.accuracy;
        this.action=data.action;
        this.address=new EvidenceDataAddress()
        this.attach=data.attach;
        this.attr=data.attr;
        this.begin=data.begin;
        this.body=data.body;
        this.command=data.command;
        this.cell=new EvidenceDataCell();
        this.contact=data.contact;
        this.content=data.content;
        this.tr=data.tr;
        this.desc=data.desc;
        this.duration=data.duration;
        this.end=data.end;
        this.event=data.event;
        this.from=data.from;
        this.info=data.info;
        this.ip=data.ip;
        this.keywords=data.keywords;
        this.latitude=data.latitude;
        this.longitude=data.longitude;
        this.name=data.name;
        this.pass=data.pass;
        this.path=data.path;
        this.peer=data.peer;
        this.process=data.process;
        this.program=data.program;
        this.rcpt=data.rcpt;
        this.resolution=data.resolution;
        this.service=data.service;
        this.size=data.size;
        this.spool=data.spool;
        this.status=data.status;
        this.subject=data.subject;
        this.title=data.title;
        this.topic=data.topic;
        this.type=data.type;
        this.url=data.url;
        this.user=data.user;
        this.users=data.users;
        this.wifi=new ArrayCollection();
        this.window=data.window;
        this.x=data.x;
        this.y=data.y;
        
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
      _Super_EvidenceData.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.evidence.model.EvidenceData);
      _Super_EvidenceData.model_internal::initRemoteClassAliasAllRelated();
    }
    
    model_internal static function initRemoteClassAliasSingleChild():void
    {
      _Super_EvidenceData.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.evidence.model.EvidenceData);
    }
    {
      _Super_EvidenceData.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.evidence.model.EvidenceData);
    }
    /**
     * END OF DO NOT MODIFY SECTION
     **/
  }

}