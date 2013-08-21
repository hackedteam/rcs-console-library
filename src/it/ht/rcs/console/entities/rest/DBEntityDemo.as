package it.ht.rcs.console.entities.rest
{
  import flash.net.FileReference;
  
  import it.ht.rcs.console.entities.model.Contact;
  import it.ht.rcs.console.entities.model.Entity;
  import it.ht.rcs.console.entities.model.Handle;
  import it.ht.rcs.console.entities.model.Link;
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

    public static var entities:ArrayCollection = new ArrayCollection([
      // Swordfish
     
      //Jimmy Page - Target
      new Entity({
        _id: 'e1', type: 'target', name: 'Jimmy Page',     
        desc: 'Head of the terrorist cell',    path: ['o1','t1'],        
        level:'auto', photos:[],      
        handles:[
          new Handle({name:'Jimmy Page', handle:'jimmy.page',type:'facebook'}),
          new Handle({name:'Jimmy Page', handle:'jimmy.page@gmail.com',type:'gmail'}),
          new Handle({name:'Jimmy Page', handle:'jimmypage',type:'skype'})],
        links:[
          new Link({le:"e2", level:"automatic", type:"peer",rel:2, versus:"out"}), 
          new Link({le:"e3", level:"automatic", type:"know",rel:0, versus:"both"}), 
          new Link({le:"e4", level:"automatic", type:"peer",rel:0, versus:"out"}), 
          new Link({le:"e6", level:"automatic", type:"peer",rel:0, versus:"out"})
        ],
        position:new Position({latitude:"34.032153" , longitude:"-118.154563"}),
        position_attr:new Position_attr({accuracy:"100" , time:convertToUnix(new Date(2012,11,03,14,57,00))})
      }),
     
      
      //Joey Fargo - Target
      new Entity({
        _id: 'e2', type: 'target', name: 'Joey Fargo',
        desc: 'Smart, computer savvy',    path: ['o1','t3'],       
        level:'auto', photos:[],      
        handles:[
          new Handle({name:'Joey fargo', handle:'joey.fargo',type:'facebook'}),
          new Handle({name:'Joey', handle:'jfar@gmail.com',type:'gmail'}),
        ], 
        links:[
          new Link({le:"e6", level:"automatic", type:"position",rel:0, versus:"out"})
        ],
        position:new Position({latitude:"34.034733" , longitude:"-118.152413"}),
        position_attr:new Position_attr({accuracy:"30" , time:convertToUnix(new Date(2012,11,03,14,57,00))})
      }),
      
      //Alejandro Reade - Target
      new Entity({ _id: 'e3', type: 'target', name: 'Alejandro Reade',      desc: 'The tough guy',    path: ['o1','t2'],         level:'auto', photos:[],      handles:[ new Handle({name:'Alejandro R ', handle:'+3256789011',type:'phone'})], links:[new Link({le:"e4", level:"automatic", type:"peer",rel:1, versus:"out"})]}),
      new Entity({ _id: 'e4', type: 'position', name: 'Office',      
        desc: 'Jimmy\'s Office',    path: ['o1','t1'],         
        level:'auto', photos:[],      
        handles:[], 
        links:[],
        position:new Position({latitude:"34.031249" , longitude:"-118.151848"}),
        position_attr:new Position_attr({accuracy:"60" , time:convertToUnix(new Date(2012,11,03,14,57,00))})
      }),
      new Entity({ _id: 'e5', type: 'person', name: 'John Doe',      desc: 'Friend',    path: ['o1','t1'],         level:'manual', photos:[],      handles:[new Handle({name:'Jdoe', handle:'+3456743293',type:'phone'})], links:[new Link({le:"e1", level:"automatic", type:"know",rel:1, versus:"both"})]}),
      new Entity({ _id: 'e7', type: 'person', name: 'Jane Doe',      desc: 'Friend',    path: ['o1','t1'],         level:'auto', photos:[],      handles:[new Handle({name:'Jdoe', handle:'+3456743293',type:'phone'})], links:[new Link({le:"e5", level:"automatic", type:"identity",rel:1, versus:"both"})]}),
      new Entity({ _id: 'e6', type: 'position', name: 'Home',      
        desc: 'Jimmy\'s Home',    path: ['o1','t1'],         
        level:'auto', photos:[],     
        handles:[], 
        links:[],
        position:new Position({latitude:"34.036531" , longitude:"-118.157120"}),
        position_attr:new Position_attr({accuracy:"100" , time:convertToUnix(new Date(2012,11,03,14,57,00))})
      }),
      new Entity({ _id: 'e8', type: 'virtual', name: 'Discussion Forum',      
        desc: 'Terrorists favourite web forum',    path: ['o1','t1'],         
        level:'auto', photos:[],     
        handles:[new Handle({name:'Main website', handle:'www.howtomakeabomb.com',type:'url'})], 
        links:[new Link({le:"e1", level:"automatic", type:"peer",rel:0, versus:"out"}), new Link({le:"e2", level:"automatic", type:"peer",rel:0, versus:"out"})]

      })
      
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
      //TODO !!!Ì
      
      var result:Entity=getEntityById(id)
     
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
    
    public function most_visited_urls(entityId:String, from:String, to:String, num:String, onResult:Function=null, onFault:Function=null):void
    {
     var result:ArrayCollection=new ArrayCollection()
       result.addItem({host:"www.cnn.com", count:500, percent:50})
       result.addItem({host:"www.howtomakeabomb.com", count:200, percent:20})
       result.addItem({host:"www.facebook.com", count:200, percent:15})
       result.addItem({host:"www.gmail.com", count:200, percent:15})
      
      if (onResult != null)
        onResult(new ResultEvent('entity.most_contacted', false, true, result));
    }
    
    public function most_visited_places(entityId:String, from:String, to:String, num:String, onResult:Function=null, onFault:Function=null):void
    {}
    
    public function most_contacted(entityId:String, from:String, to:String, num:String, onResult:Function=null, onFault:Function=null):void
    {
      var result:ArrayCollection=new ArrayCollection();
      var contacts:Array=new Array();
      if(entityId=="e1")
      {
        contacts.push(new Contact({peer:"johndoe",   type:"facebook",    count:15.0,   size:208.0,   percent:75,   peer_name:"John Doe"}));
        contacts.push(new Contact({peer:"j.fargo",   type:"facebook",    count:5.0,   size:208.0,    percent:25,   peer_name:"Joey Fargo"}));
        result.addItem(contacts);
        contacts=new Array();
        contacts.push(new Contact({peer:"003214567",   type:"whatsapp",    count:13,   size:208.0,   percent:50,   peer_name:"Alejandro Reade"}));
        contacts.push(new Contact({peer:"547685469",   type:"whatsapp",    count:13,   size:208.0,   percent:50,   peer_name:"Joey Fargo"}));
        result.addItem(contacts);
        contacts=new Array();
        contacts.push(new Contact({peer:"john.doe",         type:"skype",    count:30,   size:208.0,   percent:60,   peer_name:"John Doe"}));
        contacts.push(new Contact({peer:"alejandroreade",   type:"skype",    count:12,   size:208.0,   percent:24,   peer_name:"Alejandro Reade"}));
        contacts.push(new Contact({peer:"joeyfargo",        type:"skype",    count:8,    size:208.0,   percent:16,   peer_name:"Joey Fargo"}));
        result.addItem(contacts);
      }
      
      if(entityId=="e2")
      {
        contacts.push(new Contact({peer:"jimmypage",   type:"facebook",    count:15.0,   size:208.0,   percent:75,   peer_name:"John Doe"}));
        contacts.push(new Contact({peer:"alejandro",   type:"facebook",    count:5.0,   size:208.0,    percent:25,   peer_name:"Alejandro Reade"}));
        result.addItem(contacts);
        contacts=new Array();
        contacts.push(new Contact({peer:"1278615469",   type:"whatsapp",    count:13,   size:208.0,   percent:50,   peer_name:"Alejandro Reade"}));
        contacts.push(new Contact({peer:"3247915422",   type:"whatsapp",    count:13,   size:208.0,   percent:50,   peer_name:"Jimmy"}));
        result.addItem(contacts);
        contacts=new Array();
        contacts.push(new Contact({peer:"john.doe",         type:"skype",    count:30,   size:208.0,   percent:60,   peer_name:"John Doe"}));
        contacts.push(new Contact({peer:"alejandroreade",   type:"skype",    count:12,   size:208.0,   percent:24,   peer_name:"Alejandro Reade"}));
       
        result.addItem(contacts);
      }
      
      if(entityId=="e3")
      {
        contacts.push(new Contact({peer:"jimmypage",   type:"facebook",    count:15.0,   size:208.0,   percent:75,   peer_name:"John Doe"}));
        contacts.push(new Contact({peer:"joeyfargo",   type:"facebook",    count:5.0,   size:208.0,    percent:25,   peer_name:"Joey Fargo"}));
        result.addItem(contacts);
        contacts=new Array();
        contacts.push(new Contact({peer:"1278615469",   type:"whatsapp",    count:13,   size:208.0,   percent:50,   peer_name:"Alejandro Reade"}));
        contacts.push(new Contact({peer:"3247915422",   type:"whatsapp",    count:13,   size:208.0,   percent:50,   peer_name:"Joey Fargo"}));
        result.addItem(contacts);
        contacts=new Array();
        contacts.push(new Contact({peer:"john.doe",         type:"skype",    count:30,   size:208.0,   percent:60,   peer_name:"John Doe"}));
        contacts.push(new Contact({peer:"joeyfargo",   type:"skype",    count:12,   size:208.0,   percent:24,   peer_name:"Joey Fargo"}));
        
        result.addItem(contacts);
      }
      
      
      if (onResult != null)
        onResult(new ResultEvent('entity.most_contacted', false, true, result));
    }
    
    public function create(params:Object, operation:Operation, onResult:Function=null, onFault:Function=null):void
    {
      params._id = new Date().time.toString();
      params.position=new Position()
      params.position_attr=new Position_attr()
      var entity:Entity = new Entity(params);
      entity.path = [operation._id];
      entities.addItem(entity);
      DBSearchDemo.addItemAsSearchItem(entity, 0, null);
      if (onResult != null)
        onResult(new ResultEvent('entity.create', false, true, entity));
    }
    
    public function flow(entities:Array, from:String, to:String, onResult:Function=null, onFault:Function=null):void
    {
      
    }
  }
  
}