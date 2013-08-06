package it.ht.rcs.console.entities.rest
{
 import flash.net.FileReference;
 
 import it.ht.rcs.console.entities.model.Entity;
 import it.ht.rcs.console.operation.model.Operation;

  public interface IDBEntity
  {
    function all(onResult:Function=null, onFault:Function=null):void;
    
/*    function show(id:String, onResult:Function=null, onFault:Function=null):void;
    
    function create(params:Object, operation:Operation, onResult:Function=null, onFault:Function=null):void;
    
    function update(entity:Entity, property:Object, onResult:Function=null, onFault:Function=null):void;
    
    function destroy(id:String, onResult:Function=null, onFault:Function=null):void;*/
    
    function add_photo(fileReference:FileReference, id:String, onResult:Function = null, onFault:Function = null):void;
    
    function delete_photo(entityId:String, photoId:String, onResult:Function=null, onFault:Function=null):void
    
    function show(id:String, onResult:Function=null, onFault:Function=null):void
      
    function add_photo_from_grid(entityId:String, gridId:String, targetId:String, onResult:Function=null, onFault:Function=null):void
   
    function update(entity:Entity, property:Object, onResult:Function=null, onFault:Function=null):void
      
    function add_handle(entityId:String, handle:String, handleName:String, handleType:String, onResult:Function=null, onFault:Function=null):void
      
    function del_handle(entityId:String, handleId:String, onResult:Function=null, onFault:Function=null):void
      
    function add_link(entity1:String, entity2:String, type:String, versus:String, rel:int, onResult:Function=null, onFault:Function=null):void
      
    function edit_link(entity1:String, entity2:String, type:String, versus:String, rel:int, onResult:Function=null, onFault:Function=null):void
    
    function del_link(entity1:String, entity2:String, onResult:Function=null, onFault:Function=null):void
      
    function most_contacted(entityId:String, from:String, to:String, num:String, onResult:Function=null, onFault:Function=null):void
      
    function most_visited_urls(entityId:String, from:String, to:String, num:String, onResult:Function=null, onFault:Function=null):void
      
    function most_visited_places(entityId:String, from:String, to:String, num:String, onResult:Function=null, onFault:Function=null):void
      
    function create(params:Object, operation:Operation, onResult:Function=null, onFault:Function=null):void
      
    function destroy(id:String, onResult:Function=null, onFault:Function=null):void;
    
    function merge(entity1:String, entity2:String, onResult:Function=null, onFault:Function=null):void;
  
    
  }
  
}