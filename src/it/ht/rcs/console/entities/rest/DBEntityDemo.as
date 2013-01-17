package it.ht.rcs.console.entities.rest
{
  import flash.net.FileReference;
  
  import it.ht.rcs.console.operation.model.Operation;
  import it.ht.rcs.console.search.model.Stat;
  import it.ht.rcs.console.search.model.StatEvidence;
  import it.ht.rcs.console.search.rest.DBSearchDemo;
  import it.ht.rcs.console.target.model.Target;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  import it.ht.rcs.console.entities.model.Entity;
  
  public class DBEntityDemo implements IDBEntity
  {
    
    public static var entities:ArrayCollection = new ArrayCollection([
      // Swordfish
     
    ]);
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      if (onResult != null)
        onResult(new ResultEvent('target.all', false, true, entities));
    }
    
    public function add_photo(fileReference:FileReference, id:String, onResult:Function = null, onFault:Function = null):void
    {
      
    }
    
    public function delete_photo(entityId:String, photoId:String, onResult:Function = null, onFault:Function = null):void
    {
      
    }
    
    public function show(id:String, onResult:Function=null, onFault:Function=null):void
    {
     
    }
   
    public function add_photo_from_grid(entityId:String, gridId:String, targetId:String, onResult:Function=null, onFault:Function=null):void
    {
    
    }
    
    public function update(entity:Entity, property:Object, onResult:Function=null, onFault:Function=null):void
    {
     
    }
    
    public function add_handle(entityId:String, handleName:String, handleType:String, onResult:Function=null, onFault:Function=null):void
    {
      
    }
      
    public function del_handle(entityId:String, handleId:String, onResult:Function=null, onFault:Function=null):void
    {
    
    }
    
    public function most_contacted(entityId:String, from:String, to:String, num:String, onResult:Function=null, onFault:Function=null):void
    {
    
    }
  }
  
}