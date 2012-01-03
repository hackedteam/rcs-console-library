package it.ht.rcs.console.evidence.controller
{
  import flash.events.Event;
  import flash.events.HTTPStatusEvent;
  import flash.events.IOErrorEvent;
  import flash.events.SecurityErrorEvent;
  import flash.filesystem.File;
  import flash.filesystem.FileMode;
  import flash.filesystem.FileStream;
  import flash.net.URLRequest;
  import flash.utils.ByteArray;
  
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.utils.AlertPopUp;
  
  import mx.rpc.events.FaultEvent;
  import mx.rpc.events.ResultEvent;

  
  public class EvidenceManager extends ItemManager
  {
    
    /* singleton */
    private static var _instance:EvidenceManager = new EvidenceManager();
    public static function get instance():EvidenceManager { return _instance; } 
    

    public function sync(factory:String, instance:String, platform:String, version:String, user:String, device:String, onResult:Function = null):void
    {
      DB.instance.evidence.agent_status({ident: factory, instance: instance, subtype: platform}, function (event:ResultEvent):void {
                
        if (event.result.status == 'OPEN' && event.result.deleted == false) {
          // send the sync parameters
          DB.instance.evidence.sync_start({bid: event.result._id, user: user, device: device, sync_time: (new Date().time) / 1000}); 
          DB.instance.evidence.sync_stop({bid: event.result._id});

          onResult(event);
        } else {
          AlertPopUp.show("Invalid Agent Status, cannot import");
        }
      });
    }
    
    public function uploadEvidence(id:String, file:File, onResult:Function = null, onFault:Function = null):void
    {      
      file.addEventListener(Event.COMPLETE, onResult);
      file.addEventListener(SecurityErrorEvent.SECURITY_ERROR, onFault);
      file.addEventListener(HTTPStatusEvent.HTTP_STATUS, onFault);
      file.addEventListener(IOErrorEvent.IO_ERROR, onFault);
      file.upload(new URLRequest(DB.hostAutocomplete(Console.currentSession.server) + "evidence/create/" + id), "content");
    }
    
  }
}