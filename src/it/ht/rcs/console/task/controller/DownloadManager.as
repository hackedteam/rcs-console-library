package it.ht.rcs.console.task.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.events.SessionEvent;
  import it.ht.rcs.console.notifications.NotificationPopup;
  import it.ht.rcs.console.task.model.Task;
  
  import mx.collections.ArrayCollection;
  import mx.resources.ResourceManager;
  import mx.rpc.events.FaultEvent;
  import mx.rpc.events.ResultEvent;
  
  public class DownloadManager extends ItemManager
  {

    public function DownloadManager() { super(DownloadTask); }
    
    private static var _instance:DownloadManager = new DownloadManager();
    public static function get instance():DownloadManager { return _instance; }
    
    [Bindable]
    public var active:Boolean = false;

    [Bindable]
    public var running:Boolean = false;
    
    override public function refresh():void
    {
      super.refresh();
      DB.instance.task.all(onResult);
    }
    
    private function onResult(e:ResultEvent):void
    {
      var items:ArrayCollection = e.result as ArrayCollection;
      clear();
      
      active = items.length > 0;
      
      if (items.length > 0)
        items.source.forEach(itemToDownloadTask);
    }
    
    private function itemToDownloadTask(task:Object, index:int, arr:Array):void
    {
      trace(_classname + ' (itemToDownloadTask) e.result = ' + task);
      var downloadTask:DownloadTask = new DownloadTask(task, DB.instance);
      addTask(downloadTask);
      downloadTask.start_update();
    }
    
    override protected function onBeforeLogout(e:SessionEvent):void
    {
      trace(_classname + ' (instance) -- Before Log Out');
      for (var i:int = 0; i < _items.length; i++) {
        var t:DownloadTask = _items.getItemAt(i) as DownloadTask;
        if (t.running()) {
          e.preventDefault();
          return;
        }
      }
    }
    
    override protected function onLogout(e:SessionEvent):void
    {
      trace(_classname + ' (instance) -- Log Out');
      clearFinished();
      for (var i:int = 0; i < _items.length; i++) {
        var t:DownloadTask = _items.getItemAt(i) as DownloadTask;
        t.cleanup();
        _items.removeItem(t);
      }
      active = false;
      running = false;
      super.onLogout(e);
    }
    
    public function checkRunning():void
    {
      for (var i:int = 0; i < _items.length; i++) {
        var t:DownloadTask = _items.getItemAt(i) as DownloadTask;
        if (t.running()) {
          running = true;
          return;
        }
      }
      running = false;
    }
    
    public function clearFinished():void
    {
      for (var i:int = _items.length-1; i >= 0; i--)
      {
        if (_items.source[i].isFinished())
          removeTask(_items.getItemAt(i) as DownloadTask);
      }
    }
    
    public function createTask(type:String, fileName:String, params:Object, onSuccess:Function=null, onFailure:Function=null):void
    {
      DB.instance.task.create({type: type, file_name: fileName, params: params}, 
        function (e:ResultEvent):void { 
          // success
          onTaskCreateResult(e); 
          if (onSuccess != null) 
            onSuccess(e); 
        }, 
        function (e:FaultEvent):void { 
          // failure
          onTaskCreateError(e);
          if (onFailure != null)
            onFailure(e);
        }
      );
    }
    
    public function onTaskCreateResult(e:ResultEvent):void
    {
      itemToDownloadTask(new Task(e.result), 0, null);
    }
    
    public function onTaskCreateError(e:FaultEvent):void
    {
      trace(e.statusCode);
      NotificationPopup.showNotification(ResourceManager.getInstance().getString('localized_main', 'TASK_CREATE_ERROR', [e.message.body.toString().replace('"', '').replace('"', '')]));
    }
    
    override protected function onItemRemove(t:*):void
    {
      t.cleanup();
      t.destroy();
    }
    
    public function addTask(t:DownloadTask):void
    {
      addItem(t);
      active = _items.length > 0;
      checkRunning();
    }
    
    public function removeTask(t:DownloadTask):void
    {
      removeItem(t);
      active = _items.length > 0;
    }
  }
}