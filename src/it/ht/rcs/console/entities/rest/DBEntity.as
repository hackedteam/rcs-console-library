

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
  import it.ht.rcs.console.entities.model.Entity;
  import it.ht.rcs.console.entities.rest.IDBEntity;
  import it.ht.rcs.console.operation.model.Operation;
  
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
    
    public function add_photo_from_grid(entityId:String, gridId:String, targetId:String, onResult:Function=null, onFault:Function=null):void
    {
      var params:Object={_id:entityId, _grid:gridId, target_id:targetId}
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = add_photo_from_grid_(JSON.stringify(params));
    }
    
    public function add_handle(entityId:String, handle:String, handleName:String, handleType:String, onResult:Function=null, onFault:Function=null):void
    {
      var params:Object={_id:entityId, name:handleName, type:handleType, handle:handle};
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = add_handle_(JSON.stringify(params));
    }
    
    public function add_link(entity1:String, entity2:String, type:String, versus:String, rel:int, onResult:Function=null, onFault:Function=null):void
    {
      var params:Object={_id:entity1, entity:entity2, type:type, versus:versus, rel:rel};
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = add_link_(JSON.stringify(params));
    }
    
    public function edit_link(entity1:String, entity2:String, type:String, versus:String, rel:int, onResult:Function=null, onFault:Function=null):void
    {
      var params:Object={_id:entity1, entity:entity2, type:type, versus:versus, rel:rel};
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = edit_link_(JSON.stringify(params));
    }
    
    public function del_handle(entityId:String, handleId:String, onResult:Function=null, onFault:Function=null):void
    {
      var params:Object={_id:entityId, handle_id:handleId}
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = del_handle_(JSON.stringify(params));
    }
    
    public function del_link(entity1:String, entity2:String, onResult:Function=null, onFault:Function=null):void
    {
      var params:Object={_id:entity1, entity:entity2}
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = del_link_(JSON.stringify(params));
    }
    
    public function most_contacted(entityId:String, from:String, to:String, num:String, onResult:Function=null, onFault:Function=null):void
    {
      var params:Object={_id:entityId, from:from, to:to, num:num}
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = most_contacted_(JSON.stringify(params));
    }
    
    public function update(entity:Entity, property:Object, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      property['_id'] = entity._id;
      resp.token = update_(JSON.stringify(property));
    }
    
    public function create(params:Object, operation:Operation, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      params['operation'] = operation._id;
      resp.token = create_(JSON.stringify(params));
    }
    
    public function destroy(id:String, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = destroy_(JSON.stringify({_id: id}));
    }
    
    public function merge(entity1:String, entity2:String, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = merge_(JSON.stringify({_id: entity1, entity:entity2}));
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
