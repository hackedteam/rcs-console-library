package it.ht.rcs.console.backup.controller
{
	import it.ht.rcs.console.DB;
	import it.ht.rcs.console.ObjectUtils;
	import it.ht.rcs.console.backup.model.BackupJob;
	import it.ht.rcs.console.backup.model.BackupJobTime;
	import it.ht.rcs.console.controller.ItemManager;
	import it.ht.rcs.console.events.RefreshEvent;
	import it.ht.rcs.console.push.PushController;
	import it.ht.rcs.console.push.PushEvent;

	import mx.collections.ArrayCollection;
	import mx.collections.ISort;
	import mx.collections.ListCollectionView;
	import mx.collections.Sort;
	import mx.collections.SortField;
	import mx.events.CollectionEvent;
	import mx.rpc.events.ResultEvent;

	public class BackupJobManager extends ItemManager
	{

		/* singleton */
		private static var _instance:BackupJobManager=new BackupJobManager();

		public static function get instance():BackupJobManager
		{
			return _instance;
		}

		public function BackupJobManager()
		{
			super(BackupJob);
		}

		override public function refresh():void
		{
			super.refresh();
			DB.instance.backup.all_job(onResult);
		}

		public function listenPush():void
		{
			PushEvent
			PushController.instance.addEventListener(PushEvent.BACKUPJOB, onBackupPush);
		}

		public function unlistenPush():void
		{
			PushController.instance.removeEventListener(PushEvent.BACKUPJOB, onBackupPush);
		}


		private function onBackupPush(e:PushEvent):void
		{
			//show(e.data.id as String);

			var bj:BackupJob;
			switch (e.data.action)
			{
				case PushEvent.CREATE:
					trace("backup creation");
					bj=new BackupJob(e.data.changes);
					if (!getItem(e.data.id))
						addItem(bj);
					break;

				case PushEvent.MODIFY:
					trace("backup update");
					bj=getItem(e.data.id)
					_items.removeEventListener(CollectionEvent.COLLECTION_CHANGE, onItemsChange);
					for (var property:String in e.data.changes)
					{
						if (bj.hasOwnProperty(property))
						{
							if (property == "when")
							{
								bj[property]=new BackupJobTime(e.data.changes[property]);
							}
							else
							{
								bj[property]=e.data.changes[property];
							}
						}

					}
					_items.addEventListener(CollectionEvent.COLLECTION_CHANGE, onItemsChange);
					break;

				case PushEvent.DESTROY:
					trace("backup deletion");
					_items.removeEventListener(CollectionEvent.COLLECTION_CHANGE, onItemsChange);
					removeItem(getItem(e.data.id))
					_items.addEventListener(CollectionEvent.COLLECTION_CHANGE, onItemsChange);
					break;
			}
		}

		private function onResult(e:ResultEvent):void
		{
			_items.removeAll();
			for each (var item:* in e.result.source)
				_items.addItem(item);
			dispatchDataLoadedEvent();
		}

		override protected function onItemRemove(o:*):void
		{
			DB.instance.backup.destroy_job(o);
		}

		override protected function onItemUpdate(e:*):void
		{
			var o:Object=new Object;

			if (e.newValue is BackupJobTime)
			{
				var bjt:BackupJobTime=e.newValue as BackupJobTime;
				o[e.property]={week: bjt.week.source, month: bjt.month.source, time: bjt.time};
			}
			else
			{
				o[e.property]=e.newValue;
			}

			DB.instance.backup.update_job(e.source, o);
		}

		public function addJob(b:Object, callback:Function):void
		{
			b.when={week: b.when.week.source, month: b.when.month.source, time: b.when.time};
			DB.instance.backup.create_job(b, function(e:ResultEvent):void
			{
				var j:BackupJob=e.result as BackupJob;
				_items.addItem(j);
				callback(j);
			});
		}

		public function runJob(j:BackupJob, callback:Function=null):void
		{
			DB.instance.backup.run_job(j, function(e:ResultEvent):void
			{
				callback(j);
			});
		}

		override public function getView(sortCriteria:ISort=null, filterFunction:Function=null):ListCollectionView
		{
			var sort:Sort=new Sort();
			sort.fields=[new SortField('_id', true, false, true)];
			return super.getView(sort);
		}
	}
}
