package it.ht.rcs.console.network.controller
{
	import flash.events.Event;
	import flash.globalization.Collator;
	
	import it.ht.rcs.console.DB;
	import it.ht.rcs.console.controller.ItemManager;
	import it.ht.rcs.console.events.DataLoadedEvent;
	import it.ht.rcs.console.monitor.controller.MonitorManager;
	import it.ht.rcs.console.network.model.Collector;
	import it.ht.rcs.console.push.PushController;
	import it.ht.rcs.console.push.PushEvent;
	
	import mx.collections.ArrayCollection;
	import mx.collections.ISort;
	import mx.collections.ListCollectionView;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;

	public class CollectorManager extends ItemManager
	{

		public function CollectorManager()
		{
			super(Collector);
		}

		private static var _instance:CollectorManager=new CollectorManager();

		public static function get instance():CollectorManager
		{
			return _instance;
		}

		override public function refresh():void
		{
			super.refresh();
			DB.instance.collector.all(onResult);
		}

		private function onResult(e:ResultEvent):void
		{
			clear();
			for each (var item:* in e.result.source)
				addItem(item);
			dispatchDataLoadedEvent();
		}


		public function listenPush():void
		{
			MonitorManager.instance.listenPush()
      MonitorManager.instance.addEventListener(PushEvent.MONITOR, onMonitorPush)
		}

		public function unlistenPush():void
		{
      MonitorManager.instance.unlistenPush()
      MonitorManager.instance.removeEventListener(PushEvent.MONITOR, onMonitorPush)
		}

		private function onMonitorPush(e:PushEvent):void
		{
			//show(e.data.id as String);

			var c:Collector;
			switch (e.data.action)
			{
				case PushEvent.CREATE:
					trace("monitor creation");
					c=getCollcetorByIp(e.data.changes.address);
					if (c)
					{
           dispatchEvent(new DataLoadedEvent(DataLoadedEvent.DATA_LOADED))
					}
					break;

				case PushEvent.MODIFY:
					trace("monitor update");
					c=getCollcetorByIp(e.data.changes.address);
					if (c)
					{
           dispatchEvent(new DataLoadedEvent(DataLoadedEvent.DATA_LOADED))
					}
					break;

				case PushEvent.DESTROY:
					trace("monitor deletion");

					break;
			}
		}


		private function getCollcetorByIp(ip:String):Collector
		{
			for (var i:int=0; i < _items.length; i++)
			{
				var c:Collector=_items.getItemAt(i) as Collector
				if (c.address == ip)
					return c
			}
			return null
		}


		override public function removeItem(item:Object):void
		{
			if (item is Collector)
			{
				var current:Collector=item as Collector;
				var next:Collector=current.next[0] == null ? null : getItem(current.next[0]) as Collector;
				;
				var prev:Collector=current.prev[0] == null ? null : getItem(current.prev[0]) as Collector;

				if (current.type == "local")
				{
					if (prev)
						prev.next=[null];
					do
					{
						current.prev=[null];
						next=current.next[0] == null ? null : getItem(current.next[0]) as Collector;
						current.next=[null];
						current=next;
					} while (next != null);
				}
				else if (current.type == "remote")
				{
					if (prev)
						prev.next=current.next[0] == null ? null : [current.next[0]]
					if (next)
						next.prev=current.prev[0] == null ? null : [current.prev[0]]
				}

			}
			//DB.instance.collector.update(prev, prop);
			super.removeItem(item);

		}

		override protected function onItemRemove(o:*):void
		{
			DB.instance.collector.destroy(o._id);
		}

		override protected function onItemUpdate(event:*):void
		{
			var property:Object=new Object();
			property[event.property]=event.newValue is ArrayCollection ? event.newValue.source : event.newValue;
			//DB.instance.collector.update(event.source, property);
		}

		public function update(collector:Collector, callback:Function=null):void
		{
			var property:Object=new Object;
			property['_id']=collector._id;
			property['address']=collector.address;
			property['internal_address']=collector.internal_address;
			property['desc']=collector.desc;
			property['enabled']=collector.enabled;
			property['name']=collector.name;
			property['type']=collector.type;
			property['version']=collector.version;
			property['port']=collector.port;
			if (collector.prev)
				property['prev']=collector.prev.source;
			if (collector.next)
				property['next']=collector.next.source;

			DB.instance.collector.update(collector, property, callback);
		}

		public function addCollector(c:Object, callback:Function):void
		{
			DB.instance.collector.create(c, function(e:ResultEvent):void
			{
				var collector:Collector=e.result as Collector;
				addItem(collector);
				callback(collector);
			});
		}

		public function getLogs(_id:String, callback:Function):void
		{
			DB.instance.collector.logs(_id, function(e:ResultEvent):void
			{
				callback(e.result as ArrayCollection);
			});
		}

		public function clearLogs(_id:String, callback:Function):void
		{
			DB.instance.collector.del_logs(_id, function(e:ResultEvent):void
			{
				callback();
			});
		}

		private function entryFilter(item:Object):Boolean
		{
			if (item['address'] == null || item['address'] == '')
				return false;

			if (item['type'] == 'local' && item['next'][0] == null)
				return true;

			if (item['type'] == 'remote' && item['next'][0] == null && item['prev'][0] != null)
				return true;

			return false;
		}

		/*
		Return Collectors marked as good
		*/
		private function goodAnonFilter(item:Object):Boolean
		{
			if (item['address'] == null || item['address'] == '')
				return false;

			if (item['type'] == 'remote' && item['prev'][0] != null && item['good'])
				return true;

			return false;


		}

		private function goodCollectorFilter(item:Object):Boolean
		{
			if (item['address'] == null || item['address'] == '')
				return false;

			if (item['type'] == 'local' && item['next'][0] == null && item['good'])
				return true;

			return false;

		}

		/*
		Return Collectors marked as non-good
		*/
		private function nonGoodAnonFilter(item:Object):Boolean
		{
			if (item['address'] == null || item['address'] == '')
				return false;

			if (item['type'] == 'remote' && item['prev'][0] != null && !item['good'])
				return true;

			return false;

		}

		private function nonGoodCollectorFilter(item:Object):Boolean
		{
			if (item['address'] == null || item['address'] == '')
				return false;

			if (item['type'] == 'local' && item['next'][0] == null && !item['good'])
				return true;

			return false;

		}

		public function isValidEntryPoint(item:Object):Boolean
		{
			if (item['address'] == null || item['address'] == '')
				return false;

			if (item['type'] == 'local' && item['next'][0] == null)
				return true;

			if (item['type'] == 'remote' && item['next'][0] == null && item['prev'][0] != null)
				return true;

			return false;
		}

		private function connectedFilter(item:Object):Boolean
		{
			if (item['address'] == null || item['address'] == '')
				return false;

			if (item['type'] == 'local')
				return true;

			if (item['type'] == 'remote' && (item['next'][0] != null || item['prev'][0] != null))
				return true;

			return false;
		}

		public function getConnected(sortCriteria:ISort=null, filterFunction:Function=null):ListCollectionView
		{

			return super.getView(null, connectedFilter);

		}

		public function getEntryPointsView(sortCriteria:ISort=null, filterFunction:Function=null):ListCollectionView
		{

			return super.getView(null, entryFilter);

		}

		public function getCustomRelay(resultCallback:Function, faultCallback:Function):void
		{

			DB.instance.collector.custom_relay(function(e:ResultEvent):void
			{
				resultCallback(e);
			}, function(e:FaultEvent):void
			{
				faultCallback(e);
			});

		}

		public function getGoodAnon(sortCriteria:ISort=null, filterFunction:Function=null):ListCollectionView //collectors (not really entry points)
		{

			return super.getView(null, goodAnonFilter);

		}

		public function getNonGoodAnon(sortCriteria:ISort=null, filterFunction:Function=null):ListCollectionView //collectors (not really entry points)
		{

			return super.getView(null, nonGoodAnonFilter);

		}

		public function getGoodCollectors(sortCriteria:ISort=null, filterFunction:Function=null):ListCollectionView //collectors (not really entry points)
		{

			return super.getView(null, goodCollectorFilter);

		}

		public function getNonGoodCollectors(sortCriteria:ISort=null, filterFunction:Function=null):ListCollectionView //collectors (not really entry points)
		{

			return super.getView(null, nonGoodCollectorFilter);

		}

		public function upgradeAnon(_id:String, callback:Function=null, errback:Function=null):void
		{
			DB.instance.collector.upgrade(_id, function(e:ResultEvent):void
			{
				callback();
			}, function(e:ResultEvent):void
			{
				errback();
			});
		}

		public function get_public(callback:Function=null, errback:Function=null):void
		{
			DB.instance.collector.get_public(function(e:ResultEvent):void
			{
				callback(e);
			}, function(e:FaultEvent):void
			{
				errback(e);
			});
		}


		public function public_destroy(_id:String, callback:Function=null, errback:Function=null):void
		{
			DB.instance.collector.public_destroy(_id, function(e:ResultEvent):void
			{
				callback(e);
			}, function(e:FaultEvent):void
			{
				errback(e);
			});
		}

	}

}
