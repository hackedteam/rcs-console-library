package it.ht.rcs.console.task.rest
{
  import it.ht.rcs.console.task.model.Task;
  import it.ht.rcs.console.task.model.TaskResource;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;

  public class DBTaskDemo implements IDBTask
  {
    private var dummyFile:String = 'http://www.birdlife.org/action/science/species/seabirds/tracking_ocean_wanderers.pdf';
    private var dummyFileSize:Number = 4993536;
    private var tasks:Object = {
      '5f58925c-2e86-9cff-5816-95fe5cbdd246': new Task({ _id: '5f58925c-2e86-9cff-5816-95fe5cbdd246',
        type: 'blotter',
        total: 1000,
        current: 0,
        desc: 'Blotter creation',
        resource: new TaskResource({type: 'demo', _id: 0}),
        file_name: 'test.pdf'
      })
    };
    
    public function DBTaskDemo()
    {
    }
    
    public function create(params:Object, onResult:Function=null, onFault:Function=null):void
    {
      var newTask:Object = { _id: '__' + Math.round(Math.random() * 1000),
        type: 'blotter',
        total: 1000,
        current: 0,
        desc: new Date().time + " " + params.type,
        resource: new TaskResource({type: 'demo', _id: 0}),
        file_name: params.file_name
      }
      tasks[newTask._id] = newTask;
      var event:ResultEvent = new ResultEvent("task.create", false, true, newTask);
      if (onResult != null)
        onResult(event);
    }
    
    public function destroy(task: Task, onResult:Function=null, onFault:Function=null):void
    {
      delete(tasks[task._id]);
      var event:ResultEvent = new ResultEvent("task.destroy", false, true, task._id);
      if (onResult != null)
        onResult(event);
    }
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      var task_list:ArrayCollection = new ArrayCollection();
      var event:ResultEvent = new ResultEvent("task.index", false, true, task_list);
      if (onResult != null)
        onResult(event);
    }
    
    public function show(id:String, onResult:Function=null, onFault:Function=null):void
    {
      var show:Object = {};
      show._id = tasks[id];
      show.resource = new TaskResource({_id: tasks[id].grid_id, type: 'demo'});
      show.current = tasks[id].current += 50;
      show.file_size = dummyFileSize;
      var event:ResultEvent = new ResultEvent("task.show", false, true, show);
      if (onResult != null)
        onResult(event);
    }
  }
}