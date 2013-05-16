package it.ht.rcs.console.entities.rest
{
  import flash.net.FileReference;
  
  import it.ht.rcs.console.entities.model.Contact;
  import it.ht.rcs.console.entities.model.Entity;
  import it.ht.rcs.console.entities.model.Handle;
  import it.ht.rcs.console.entities.model.Position;
  import it.ht.rcs.console.entities.model.Position_attr;
  import it.ht.rcs.console.operation.model.Operation;
  import it.ht.rcs.console.search.model.Stat;
  import it.ht.rcs.console.search.model.StatEvidence;
  import it.ht.rcs.console.search.rest.DBSearchDemo;
  import it.ht.rcs.console.target.model.Target;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class DBEntityDemo implements IDBEntity
  {
    private static var handles:ArrayCollection=new ArrayCollection([new Handle({name:'Jimmy Page', handle:'jimmy.page',type:'facebook'}), new Handle({name:'Jimmy Page', handle:'jimmy.page@gmail.com',type:'gmail'}), new Handle({name:'Jimmy Page', handle:'jimmypage',type:'skype'})])
    public static var entities:ArrayCollection = new ArrayCollection([
      // Swordfish
     
      new Entity({ _id: 'e1', type: 'target', name: 'Jimmy Page',      desc: 'Head of the terrorist cell',    path: ['o1','t1'],    name:'Jimmy Page',    level:'auto', photos:[],      handles:handles})
    ]);
    
    
    private static function convertToUnix(value:Date):Number
    {
      
      return Math.round(value.getTime()/1000)
    }
    
    
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
    
    public function destroy(id:String, onResult:Function=null, onFault:Function=null):void
    {
    
    }
    
    
    public function show(id:String, onResult:Function=null, onFault:Function=null):void
    {
      //TODO !!!
      
      var result:Entity=getEntityById(id)
      
      var position:Position=new Position;
      position.latitude="34.034453"
      position.longitude="-118.259583"
      var position_attr:Position_attr=new Position_attr()
      position_attr.accuracy="200";
      position_attr.time=convertToUnix(new Date(2012,11,03,14,57,00))
      result.position=position;
      result.position_attr=position_attr;
      if (onResult != null)
        onResult(new ResultEvent('entity.show', false, true, result));
    }
   
    public function add_photo_from_grid(entityId:String, gridId:String, targetId:String, onResult:Function=null, onFault:Function=null):void
    {
    
    }
    
    public function update(entity:Entity, property:Object, onResult:Function=null, onFault:Function=null):void
    {
     
    }
    
    public function add_handle(entityId:String, handle:String, handleName:String, handleType:String, onResult:Function=null, onFault:Function=null):void
    {
      var entity:Entity=getEntityById(entityId);
      var h:Handle=new Handle();
      h._id="h"+entities.length;
      h.level="manual"
      h.name=handleName;
      h.handle=handle;
      h.type=handleType;
      entity.handles.addItem(h);
      if (onResult != null)
        onResult(new ResultEvent('e.update', false, true, entity));
    }
      private function getEntityById(id:String):Entity
      {
        for(var i:int=0;i<entities.length;i++)
        {
        if(entities.getItemAt(i)._id==id)
          return entities.getItemAt(i) as Entity;
        }
        return null;
      }
    public function del_handle(entityId:String, handleId:String, onResult:Function=null, onFault:Function=null):void
    {
      var entity:Entity=getEntityById(entityId);
      
    }
    
    public function add_link(entity1:String, entity2:String, type:String, versus:String, rel:int, onResult:Function=null, onFault:Function=null):void
    {
      
    }
    
    public function edit_link(entity1:String, entity2:String, type:String, versus:String, rel:int, onResult:Function=null, onFault:Function=null):void
    {
      
    }
    
    public function del_link(entity1:String, entity2:String, onResult:Function=null, onFault:Function=null):void
    {
      
    }
    
    public function merge(entity1:String, entity2:String, onResult:Function=null, onFault:Function=null):void
    {
    
    }
    
    public function most_contacted(entityId:String, from:String, to:String, num:String, onResult:Function=null, onFault:Function=null):void
    {
      var result:ArrayCollection=new ArrayCollection();
      var contacts:Array=new Array();
      contacts.push(new Contact({peer:"johndoe",   type:"facebook",    count:15.0,   size:208.0,   percent:75,   peer_name:"John Doe"}));
      contacts.push(new Contact({peer:"j.fargo",   type:"facebook",    count:5.0,   size:208.0,    percent:25,   peer_name:"Joey Fargo"}));
      result.addItem(contacts);
      contacts=new Array();
      contacts.push(new Contact({peer:"003214567",   type:"whatsapp",    count:13,   size:208.0,   percent:50,   peer_name:"Alejandro Reade"}));
      contacts.push(new Contact({peer:"547685469",   type:"whatsapp",    count:13,   size:208.0,   percent:50,   peer_name:"Joey Fargo"}));
      result.addItem(contacts);
      contacts=new Array();
      contacts.push(new Contact({peer:"john.doe",   type:"skype",    count:30,   size:208.0,   percent:60,   peer_name:"John Doe"}));
      contacts.push(new Contact({peer:"alejandroreade",   type:"skype",    count:12,   size:208.0,   percent:24,   peer_name:"Alejandro Reade"}));
      contacts.push(new Contact({peer:"joeyfargo",   type:"skype",    count:8,   size:208.0,   percent:16,   peer_name:"Joey Fargo"}));
      result.addItem(contacts);
      
      
      if (onResult != null)
        onResult(new ResultEvent('entity.most_contacted', false, true, result));
    }
    
    public function create(params:Object, operation:Operation, onResult:Function=null, onFault:Function=null):void
    {
    
    }
  }
  
}