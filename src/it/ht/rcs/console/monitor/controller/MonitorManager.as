package it.ht.rcs.console.monitor.controller
{
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	import it.ht.rcs.console.DB;
	import it.ht.rcs.console.controller.ItemManager;
	import it.ht.rcs.console.events.RefreshEvent;
	import it.ht.rcs.console.events.SessionEvent;
	import it.ht.rcs.console.monitor.model.Status;
	import it.ht.rcs.console.push.PushController;
	import it.ht.rcs.console.push.PushEvent;
	
	import mx.core.FlexGlobals;
	import mx.events.CollectionEvent;
	import mx.events.PropertyChangeEvent;
	import mx.rpc.events.ResultEvent;

	public class MonitorManager extends ItemManager
	{

		public function MonitorManager()
		{
			super(Status);
		}

		private static var _instance:MonitorManager=new MonitorManager();

		public static function get instance():MonitorManager
		{
			return _instance;
		}

		private var autoRefresh:Timer=new Timer(30000);

		/*  public function startAutorefresh():void
			{

				autoRefresh.addEventListener(TimerEvent.TIMER, onAutorefresh);
			 // autoRefresh.start();
				refresh();
			}

			public function stopAutorefresh():void
			{
				autoRefresh.removeEventListener(TimerEvent.TIMER, onAutorefresh);
				autoRefresh.stop();
			}
			*/
		public function listenPush():void
		{
			PushController.instance.addEventListener(PushEvent.MONITOR, onMonitorPush);
		}

		public function unlistenPush():void
		{
			PushController.instance.removeEventListener(PushEvent.MONITOR, onMonitorPush);
		}

		private function onMonitorPush(e:PushEvent):void
		{
			//show(e.data.id as String);

			var o:*;
			switch (e.data.action)
			{
				case PushEvent.CREATE:
					o=new Status(e.data.changes);
					addItem(o);
					break;

				case PushEvent.MODIFY:
					o=getItem(e.data.id)
					_items.removeEventListener(CollectionEvent.COLLECTION_CHANGE, onItemsChange);
					for (var property:String in e.data.changes)
					{
						if (o[property])
							o[property]=e.data.changes[property];
					}
					_items.addEventListener(CollectionEvent.COLLECTION_CHANGE, onItemsChange);
					break;

				case PushEvent.DESTROY:
					_items.removeEventListener(CollectionEvent.COLLECTION_CHANGE, onItemsChange);
					removeItem(getItem(e.data.id))
					_items.addEventListener(CollectionEvent.COLLECTION_CHANGE, onItemsChange);
					break;
			}
      var event:PushEvent = new PushEvent(PushEvent.MONITOR);
      event.data = e.data;
      dispatchEvent(event)
		}

		public function onAutorefresh(e:*):void
		{
			refresh();
		}

		override public function refresh():void
		{
			super.refresh();
			DB.instance.monitor.all(onResult);
		}

		private function onResult(e:ResultEvent):void
		{
			clear();
			for each (var item:* in e.result.source)
				addItem(item);
			dispatchDataLoadedEvent();
		}

		override protected function onItemRemove(o:*):void
		{
			// refresh the counters after deletion
			DB.instance.monitor.destroy(o._id, onMonitorEvent);
		}

		override protected function onLogout(e:SessionEvent):void
		{
			super.onLogout(e);
			stopCounters();
		}

		public function getStatusByAddress(address:String):Status
		{
			if (address == null)
				return null;

			for each (var o:* in _items.source)
				if (o.address == address)
					return o as Status;
			return null;
		}

		private var _monitorCounter:Object={value: NaN, style: 'info'};

		public function startCounters():void
		{
			FlexGlobals.topLevelApplication.addEventListener(RefreshEvent.REFRESH, onMonitorEvent);
			PushController.instance.addEventListener(PushEvent.MONITOR_COUNTERS, onCounterPush);

			/* the first refresh */
			onMonitorEvent(null);
		}

		public function stopCounters():void
		{
			FlexGlobals.topLevelApplication.removeEventListener(RefreshEvent.REFRESH, onMonitorEvent);
			PushController.instance.removeEventListener(PushEvent.MONITOR_COUNTERS, onCounterPush);
		}
    
    private function onCounterPush(e:PushEvent):void
    {
      var error:int=e.data.error as int;
      var warn:int=e.data.warn as int;
      
      if (error > 0)
      {
        _monitorCounter.value=error;
        _monitorCounter.style='alert';
      }
      else if (warn > 0)
      {
        _monitorCounter.value=warn;
        _monitorCounter.style='warn';
      }
      else
      {
        _monitorCounter.value=null;
      }
      
      dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, 'monitorCounter', null, _monitorCounter));
    }
    
		private function onMonitorEvent(e:Event):void
		{
			DB.instance.monitor.counters(onMonitorCountersResult);
			refresh();
		}

		private function onMonitorCountersResult(e:ResultEvent):void
		{
			var error:int=e.result.error as int;
			var warn:int=e.result.warn as int;

			if (error > 0)
			{
				_monitorCounter.value=error;
				_monitorCounter.style='alert';
			}
			else if (warn > 0)
			{
				_monitorCounter.value=warn;
				_monitorCounter.style='warn';
			}
			else
			{
				_monitorCounter.value=null;
			}

			dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, 'monitorCounter', null, _monitorCounter));
		}

		[Bindable(event='propertyChange')]
		public function get monitorCounter():Object
		{
			return _monitorCounter;
		}

	}

}
