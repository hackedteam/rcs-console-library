

package it.ht.rcs.console.entities.rest
{
  import flash.events.DataEvent;
  import flash.events.HTTPStatusEvent;
  import flash.events.IOErrorEvent;
  import flash.events.SecurityErrorEvent;
  import flash.net.FileReference;
  import flash.net.URLRequest;
  import flash.net.URLVariables;
  
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.entities.rest.IDBEntity;
  
  import mx.rpc.CallResponder;

  public class DBEntity extends _Super_DBEntity implements IDBEntity
  {
    public function DBEntity(host:String)
    {
      super();
      _serviceControl.baseURL = host;
    }

    public function all(onResult:Function = null, onFault:Function = null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = all_();
    }
    
    public function show(id:String, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = show_(id);
    }
    
    public function delete_photo(entityId:String, photoId:String, onResult:Function=null, onFault:Function=null):void
    {
      var params:Object={_id:entityId, photo_id:photoId}
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = delete_photo_(JSON.stringify(params));
    }
    
    public function add_photo(fileReference:FileReference, id:String, onResult:Function = null, onFault:Function = null):void
    {
      var url:String= _serviceControl.baseURL+ "entity/add_photo"
      var req:URLRequest=new URLRequest();
      var params:URLVariables = new URLVariables();
      params._id=id;
      req.data=params;
      req.url=url;
      req.contentType = "multipart/form-data";
      req.method = "POST";
      fileReference.addEventListener(IOErrorEvent.IO_ERROR, onFault);
      fileReference.addEventListener(HTTPStatusEvent.HTTP_STATUS, onFault);
      fileReference.addEventListener(SecurityErrorEvent.SECURITY_ERROR, onFault);
      fileReference.addEventListener(DataEvent.UPLOAD_COMPLETE_DATA, onResult)
      try 
      { 
        fileReference.upload(req,"content"); 
      } 
      catch (error:Error) 
      { 
        onFault(null)
      } 
      
    }

  }

}
