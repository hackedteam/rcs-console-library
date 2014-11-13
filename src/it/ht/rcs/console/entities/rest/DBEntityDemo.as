package it.ht.rcs.console.entities.rest
{
	import flash.net.FileReference;
	
	import it.ht.rcs.console.entities.model.Contact;
	import it.ht.rcs.console.entities.model.Entity;
	import it.ht.rcs.console.entities.model.Flow;
	import it.ht.rcs.console.entities.model.Flows;
	import it.ht.rcs.console.entities.model.Handle;
	import it.ht.rcs.console.entities.model.Link;
	import it.ht.rcs.console.entities.model.LinkInfo;
	import it.ht.rcs.console.entities.model.Position;
	import it.ht.rcs.console.entities.model.Position_attr;
	import it.ht.rcs.console.entities.model.Positions;
	import it.ht.rcs.console.entities.model.PositionsFlow;
	import it.ht.rcs.console.operation.model.Operation;
	import it.ht.rcs.console.search.model.Stat;
	import it.ht.rcs.console.search.model.StatEvidence;
	import it.ht.rcs.console.search.rest.DBSearchDemo;
	import it.ht.rcs.console.target.model.Target;
	
	import mx.collections.ArrayCollection;
	import mx.rpc.events.ResultEvent;

	public class DBEntityDemo implements IDBEntity
	{

		private static const WEEK:Number=1000 * 60 * 60 * 24 * 7
		private static const DAY:Number=1000 * 60 * 60 * 24
		private static const HOUR:Number=1000 * 60 * 60
		private static const MINUTE:Number=1000 * 60

		public static var entities:ArrayCollection=new ArrayCollection([
			// Swordfish

			//Jimmy Page - Target
			new Entity({_id: 'e1', type: 'target', name: 'Jimmy Page', desc: 'Head of the terrorist cell', path: ['o1', 't1'], level: 'auto', photos: [], handles: [new Handle({name: 'Jimmy Page', handle: 'jimmy.page', type: 'facebook'}), new Handle({name: 'Jimmy Page', handle: '+7654987112', type: 'phone'}), new Handle({name: 'Jimmy Page', handle: 'jimmypage', type: 'twitter'}), new Handle({name: 'Jimmy Page', handle: 'jimmy.page@gmail.com', type: 'gmail'}), new Handle({name: 'Jimmy Page', handle: 'jimmypage', type: 'skype'})], 
        links: [new Link({le: "e2", level: "automatic", type: "peer", rel: 2, versus: "both", info: new LinkInfo({"skype":[["jimmypage" ,"joeyfargo"]], "gmail":[["jimmy.page@gmail.com","jfar@gmail.com"]]})}), //Joey Fargo

					      new Link({le: "e3", level: "automatic", type: "peer", rel: 3, versus: "both", info: new LinkInfo({"phone":[["+3456743293","+7654987112"]]})}), //Alejandro Reade
                new Link({le: "e4", level: "automatic", type: "position", rel: 0, versus: "out"}), //position Jimmy's office
                new Link({le: "e6", level: "automatic", type: "position", rel: 0, versus: "out"}),
                new Link({le: "e8", level: "automatic", type: "virtual", rel: 0, versus: "out"}),
                new Link({le: "e5", level: "manual", type: "know", rel: 1, versus: "both"})],
        //position Jimmy's Home
        position: new Position({latitude: "34.032153", longitude: "-118.154563"}), position_attr: new Position_attr({accuracy: "100", time: convertToUnix(new Date(2012, 11, 03, 14, 57, 00))})}),

			//Joey Fargo - Target
			new Entity({_id: 'e2', type: 'target', name: 'Joey Fargo', desc: 'Smart, computer savvy', path: ['o1', 't3'], level: 'auto', photos: [], handles: [new Handle({name: 'Joey fargo', handle: 'joey.fargo', type: 'facebook'}), new Handle({name: 'Joey fargo', handle: 'joeyfargo', type: 'skype'}), new Handle({name: 'Joey', handle: 'jfar@gmail.com', type: 'gmail'}),], 
        links: [new Link({le: "e1", level: "automatic", type: "peer", rel: 2, versus: "both"}),
                new Link({le: "e4", level: "automatic", type: "position", rel: 0, versus: "out"})
                
        ], 

        position: new Position({latitude: "34.034733", longitude: "-118.152413"}), position_attr: new Position_attr({accuracy: "30", time: convertToUnix(new Date(2012, 11, 03, 14, 57, 00))})}),

			//Alejandro Reade - Target
			new Entity({_id: 'e3', type: 'target', name: 'Alejandro Reade', desc: 'The tough guy', path: ['o1', 't2'], level: 'auto', photos: [], handles: [new Handle({name: 'Alejandro R ', handle: '+3256789011', type: 'phone'})], 
        links: [new Link({le: "e1", level: "automatic", type: "peer", rel: 3, versus: "both"}),
          new Link({le: "e8", level: "automatic", type: "virtual", rel: 0, versus: "out"})
                ]}), 
      new Entity({_id: 'e4', type: 'position', name: 'Office', desc: 'Jimmy\'s Office', path: ['o1'], level: 'auto', photos: [], handles: [], 
        links: [new Link({le: "e1", level: "automatic", type: "position", rel: 0, versus: "in"}),
          new Link({le: "e2", level: "automatic", type: "position", rel: 0, versus: "in"})], 
        position: new Position({latitude: "34.031249", longitude: "-118.151848"}), position_attr: new Position_attr({accuracy: "60", time: convertToUnix(new Date(2012, 11, 03, 14, 57, 00))})}), 
      new Entity({_id: 'e5', type: 'person', name: 'John Doe', desc: 'Friend', path: ['o1'], level: 'manual', photos: [], handles: [new Handle({name: 'Jdoe', handle: 'Jdoe', type: 'skype'})], 
        links: [new Link({le: "e1", level: "automatic", type: "know", rel: 1, versus: "both"}), new Link({le: "e7", level: "manual", type: "know", rel: 1, versus: "both"})]}), 
      new Entity({_id: 'e7', type: 'person', name: 'Jane Doe', desc: 'Friend', path: ['o1'], level: 'auto', photos: [], handles: [new Handle({name: 'Jane.doe', handle: '+3456743293', type: 'phone'})], 
        links: [new Link({le: "e5", level: "manual", type: "know", rel: 1, versus: "both"})]}), 
      new Entity({_id: 'e6', type: 'position', name: 'Home', desc: 'Jimmy\'s Home', path: ['o1'], level: 'auto', photos: [], handles: [], 
        links: [ new Link({le: "e1", level: "automatic", type: "position", rel: 0, versus: "in"})
                 
        ], 
        position: new Position({latitude: "34.036531", longitude: "-118.157120"}), position_attr: new Position_attr({accuracy: "100", time: convertToUnix(new Date(2012, 11, 03, 14, 57, 00))})}), 
      new Entity({_id: 'e8', type: 'virtual', name: 'Discussion Forum', desc: 'Terrorists favourite web forum', path: ['o1'], level: 'auto', photos: [], handles: [new Handle({name: 'Main website', handle: 'www.howtomakeabomb.com', type: 'url'})], 
        links: [new Link({le: "e1", level: "automatic", type: "virtual", rel: 0, versus: "in", info: new LinkInfo({"url":[["http://www.howtomakeabomb.com"]]})}), 
                new Link({le: "e3", level: "automatic", type: "virtual", rel: 0, versus: "in", info: new LinkInfo({"url":[["http://www.howtomakeabomb.com"]]})})]
 			}),

      //groups
      new Entity({_id: 'g1', type: 'group', name: 'Friends', desc: 'Jimmy\'s friends', path: ['o1'], level: 'auto', photos: [], handles: [], links: [], children:['e5','e7']})
			]);


		private static function convertToUnix(value:Date):Number
		{

			return Math.round(value.getTime() / 1000)
		}


		public function all(onResult:Function=null, onFault:Function=null):void
		{
			if (onResult != null)
				onResult(new ResultEvent('target.all', false, true, entities));
		}

		public function add_photo(fileReference:FileReference, id:String, onResult:Function=null, onFault:Function=null):void
		{

		}

		public function delete_photo(entityId:String, photoId:String, onResult:Function=null, onFault:Function=null):void
		{

		}

		public function destroy(id:String, onResult:Function=null, onFault:Function=null):void
		{

		}


		public function show(id:String, onResult:Function=null, onFault:Function=null):void
		{

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
			h._id="h" + entities.length;
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
			for (var i:int=0; i < entities.length; i++)
			{
				if (entities.getItemAt(i)._id == id)
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
			result.addItem({host: "www.cnn.com", count: 500, percent: 50});
			result.addItem({host: "www.howtomakeabomb.com", count: 200, percent: 20});
			result.addItem({host: "www.facebook.com", count: 200, percent: 15});
			result.addItem({host: "www.gmail.com", count: 200, percent: 15});

			if (onResult != null)
				onResult(new ResultEvent('entity.most_contacted', false, true, result));
		}

		public function most_visited_places(entityId:String, from:String, to:String, num:String, onResult:Function=null, onFault:Function=null):void
		{
		}

		public function most_contacted(entityId:String, from:String, to:String, num:String, onResult:Function=null, onFault:Function=null):void
		{
			var result:ArrayCollection=new ArrayCollection();
			var contacts:Array=new Array();
			if (entityId == "e1")
			{
			
				contacts.push(new Contact({peer: "joey.fargo", type: "facebook", count: 5.0, size: 208.0, percent: 100, peer_name: "Joey Fargo"}));
				result.addItem(contacts);
				/*contacts=new Array();
				contacts.push(new Contact({peer: "003214567", type: "whatsapp", count: 13, size: 208.0, percent: 50, peer_name: "Alejandro Reade"}));
				contacts.push(new Contact({peer: "547685469", type: "whatsapp", count: 13, size: 208.0, percent: 50, peer_name: "Joey Fargo"}));
				result.addItem(contacts);*/
				contacts=new Array();
				//contacts.push(new Contact({peer: "john.doe", type: "skype", count: 30, size: 208.0, percent: 60, peer_name: "John Doe"}));
				contacts.push(new Contact({peer: "alejandro.reade", type: "skype", count: 12, size: 208.0, percent: 60, peer_name: "Alejandro Reade"}));
				contacts.push(new Contact({peer: "joeyfargo", type: "skype", count: 8, size: 208.0, percent: 40, peer_name: "Joey Fargo"}));
				result.addItem(contacts);
			}

			if (entityId == "e2")
			{
				contacts.push(new Contact({peer: "jimmypage", type: "facebook", count: 15.0, size: 208.0, percent: 75, peer_name: "John Doe"}));
				contacts.push(new Contact({peer: "alejandro", type: "facebook", count: 5.0, size: 208.0, percent: 25, peer_name: "Alejandro Reade"}));
				result.addItem(contacts);
				contacts=new Array();
				contacts.push(new Contact({peer: "1278615469", type: "whatsapp", count: 13, size: 208.0, percent: 50, peer_name: "Alejandro Reade"}));
				contacts.push(new Contact({peer: "3247915422", type: "whatsapp", count: 13, size: 208.0, percent: 50, peer_name: "Jimmy"}));
				result.addItem(contacts);
				contacts=new Array();
				contacts.push(new Contact({peer: "john.doe", type: "skype", count: 30, size: 208.0, percent: 60, peer_name: "John Doe"}));
				contacts.push(new Contact({peer: "alejandroreade", type: "skype", count: 12, size: 208.0, percent: 24, peer_name: "Alejandro Reade"}));

				result.addItem(contacts);
			}

			if (entityId == "e3")
			{
				contacts.push(new Contact({peer: "jimmypage", type: "facebook", count: 15.0, size: 208.0, percent: 75, peer_name: "John Doe"}));
				contacts.push(new Contact({peer: "joeyfargo", type: "facebook", count: 5.0, size: 208.0, percent: 25, peer_name: "Joey Fargo"}));
				result.addItem(contacts);
				contacts=new Array();
				contacts.push(new Contact({peer: "1278615469", type: "whatsapp", count: 13, size: 208.0, percent: 50, peer_name: "Alejandro Reade"}));
				contacts.push(new Contact({peer: "3247915422", type: "whatsapp", count: 13, size: 208.0, percent: 50, peer_name: "Joey Fargo"}));
				result.addItem(contacts);
				contacts=new Array();
				contacts.push(new Contact({peer: "john.doe", type: "skype", count: 30, size: 208.0, percent: 60, peer_name: "John Doe"}));
				contacts.push(new Contact({peer: "joeyfargo", type: "skype", count: 12, size: 208.0, percent: 24, peer_name: "Joey Fargo"}));
				result.addItem(contacts);
			}


			if (onResult != null)
				onResult(new ResultEvent('entity.most_contacted', false, true, result));
		}

		public function create(params:Object, operation:Operation, onResult:Function=null, onFault:Function=null):void
		{
			params._id=new Date().time.toString();
			params.position=new Position()
			params.position_attr=new Position_attr()
			var entity:Entity=new Entity(params);
			entity.path=[operation._id];
			entities.addItem(entity);
			DBSearchDemo.addItemAsSearchItem(entity, 0, null);
			if (onResult != null)
				onResult(new ResultEvent('entity.create', false, true, entity));
		}

		public function flow(entities:Array, from:String, to:String, onResult:Function=null, onFault:Function=null):void
		{
			//An array of FLOW with date and n flows....

			var now:Date=new Date()
			var date1:Date=new Date() //10 days ago
			date1.time-=(DAY * 10)
			var date2:Date=new Date() //11 days ago
			date2.time-=DAY * 11
			var date3:Date=new Date() //12 days ago
			date3.time-=DAY * 12


			var flows:ArrayCollection=new ArrayCollection();

			var flow1:Flow=new Flow()
			flow1.date=String(date1.fullYear) + doubleDigits(date1.month + 1) + doubleDigits(date1.date);
			flow1.flows=new ArrayCollection();

			var flows1:Flows=new Flows();
			flows1.from="e1";
			flows1.rcpt="e2";
			flows1.count=10;
			flow1.flows.addItem(flows1);

			var flows2:Flows=new Flows();
			flows2.from="e2";
			flows2.rcpt="e1";
			flows2.count=10;
			flow1.flows.addItem(flows2);

			var flows3:Flows=new Flows();
			flows3.from="e3";
			flows3.rcpt="e1";
			flows3.count=10;
			flow1.flows.addItem(flows3)

			flows.addItem(flow1);

			//second day
			var flow2:Flow=new Flow()
			flow2.date=String(date2.fullYear) + doubleDigits(date2.month + 1) + doubleDigits(date2.date);
			flow2.flows=new ArrayCollection();

			var flows4:Flows=new Flows();
			flows4.from="e3";
			flows4.rcpt="e1";
			flows4.count=20;

			flow2.flows.addItem(flows4)

			flows.addItem(flow2);

			//third day
			var flow3:Flow=new Flow()
			flow3.date=String(date3.fullYear) + doubleDigits(date3.month + 1) + doubleDigits(date3.date);
			flow3.flows=new ArrayCollection();

			var flows5:Flows=new Flows();
			flows5.from="e1";
			flows5.rcpt="e2";
			flows5.count=10;
			flow3.flows.addItem(flows5);

			var flows6:Flows=new Flows();
			flows6.from="e1";
			flows6.rcpt="e3";
			flows6.count=10;
			flow3.flows.addItem(flows6);

			var flows7:Flows=new Flows();
			flows7.from="e2";
			flows7.rcpt="e1";
			flows7.count=10;
			flow3.flows.addItem(flows7);

			flows.addItem(flow3);

			if (onResult != null)
				onResult(new ResultEvent('entity.flow', false, true, flows));


		}
    
    public function promote_to_target(id:String, onResult:Function=null, onFault:Function=null):void
    {
      trace("TODO: Promote Entity to target")
    }

		public function positions(entities:Array, from:String, to:String, summary:Boolean=false, onResult:Function=null, onFault:Function=null):void
		{
			var now:Date=new Date()
			var date1:Date=new Date() //10 days ago
			date1.hours=1
			date1.minutes=0
			date1.time-=(DAY * 10)

			var date2:Date=new Date() //11 days ago
			date2.hours=2
			date2.minutes=0
			date2.time-=DAY * 10


			var date3:Date=new Date() //12 days ago
			date3.hours=3
			date3.minutes=0
			date3.time-=DAY * 10

			var date4:Date=new Date() //12 days ago
			date4.hours=4
			date4.minutes=0
			date4.time-=DAY * 10

			var hours:ArrayCollection=new ArrayCollection()

			var minutes:ArrayCollection=new ArrayCollection()

			var flow1:PositionsFlow=new PositionsFlow()

			flow1.time=date1.time / 1000; //1381053600  
			//1382273988
			flow1.alpha=50;
			flow1.positions=new ArrayCollection()

			var pos1:Positions=new Positions()
			pos1._id="pos1";
			pos1._id="e1"
			pos1.position=new Position({latitude: 34.031249, longitude: -118.151848})
			pos1.alpha=60
			flow1.positions.addItem(pos1)

			var pos2:Positions=new Positions()
			pos2._id="pos2";
			pos2._id="e2"
			pos2.position=new Position({latitude: 34.031300, longitude: -118.151999})
			pos2.alpha=60
			flow1.positions.addItem(pos2)


			var flow2:PositionsFlow=new PositionsFlow()
			flow2.time=date2.time / 1000
			flow2.alpha=40;
			flow2.positions=new ArrayCollection()

			var flow3:PositionsFlow=new PositionsFlow()
			flow3.time=date3.time / 1000
			flow3.alpha=50;
			flow3.positions=new ArrayCollection();

			var flow4:PositionsFlow=new PositionsFlow();
			flow4.time=date4.time / 1000
			flow4.alpha=50
			flow4.positions=new ArrayCollection();


			hours.addItem(flow1)
			hours.addItem(flow2)
			hours.addItem(flow3)
			hours.addItem(flow4)

			var lat1:Number=34.032153;
			var lon1:Number=-118.154563;

			var lat2:Number=34.034733;
			var lon2:Number=-118.152413;

			var min:PositionsFlow;

			var positions1:Positions;
			var positions2:Positions;

			var alpha1:Number=60;
			var alpha2:Number=60;

			for (var m:int=0; m < 240; m++)
			{
				min=new PositionsFlow()
				min.time=date1.time / 1000 + (60 * m) // /1000 ? date1.time ???
				min.alpha=60
				min.positions=new ArrayCollection()

				if (m > 180)
				{
					alpha1-=5
					alpha2-=5
				}
				else
				{
					lat1+=0.00003
					lon1-=0.00001

					lat2-=0.00001
					lon1-=0.00002
				}

				positions1=new Positions();
				positions1._id="e1"
				positions1.alpha=alpha1;
				positions1.position=new Position({latitude: String(lat1), longitude: String(lon1)})

				positions2=new Positions();
				positions2._id="e2";
				positions2.alpha=alpha2;
				positions2.position=new Position({latitude: String(lat2), longitude: String(lon2)})

				min.positions.addItem(positions1)
				min.positions.addItem(positions2)

				minutes.addItem(min)
			}

			if (summary)
        onResult(new ResultEvent('entity.positions', false, true, hours));
			else
				onResult(new ResultEvent('entity.positions', false, true, minutes));
		}

		private function doubleDigits(n:Number):String
		{
			if (n < 10)
				return "0" + n;
			return String(n)
		}
	}

}
