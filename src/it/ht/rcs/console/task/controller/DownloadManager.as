package it.ht.rcs.console.task.controller
{
  
  
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.events.SessionEvent;
  import it.ht.rcs.console.task.model.Task;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class DownloadManager extends ItemManager
  {
    /* singleton */
    private static var _instance:DownloadManager = new DownloadManager();
    public static function get instance():DownloadManager { return _instance; } 
    
    [Bindable]
    public var active:Boolean = false;
    
    public function DownloadManager()
    {
      super();
    }
    
    override public function start():void
    {
      super.start();
      // get all available tasks
      DB.instance.task.all(onTaskIndexResult);
    }
    
    /*
    override protected function onLoggingIn(e:SessionEvent):void
    {
      trace(_classname + ' (instance) -- Logging In');
        // get all available tasks
        DB.instance.task.all(onTaskIndexResult);
    }
    */
    
    private function onTaskIndexResult(e:ResultEvent):void
    {
      var items:ArrayCollection = e.result as ArrayCollection;
      _items.removeAll();
      
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
      for each(var t:DownloadTask in _items)
        if (t.state != DownloadTask.STATE_FINISHED) {
          e.preventDefault();
          return;
        }
    }
    
    override protected function onLogout(e:SessionEvent):void
    {
      trace(_classname + ' (instance) -- Log Out');
      clearFinished();
      for each(var t:DownloadTask in _items)
        t.cleanup();
      super.onLogout(e);
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
      DB.instance.task.create({type: type, file_name: fileName, params: params}, function (e:ResultEvent):void { 
        onTaskCreateResult(e); 
        if (onSuccess) 
          onSuccess(e); 
      }, onFailure);
    }
    
    public function onTaskCreateResult(e:ResultEvent):void
    {
      itemToDownloadTask(new Task(e.result), 0, null);
    }
    
    override protected function onItemRemove(t:*):void
    {
      t.cleanup();
      removeTask(t);
      t.destroy();
    }
    
    public function addTask(t:DownloadTask):void
    {
      addItem(t);
      if (_items.length > 0) active = true;
    }
    
    public function removeTask(t:DownloadTask):void
    {
      removeItem(t);
      if (_items.length > 0) active = true;
    }
  }
}