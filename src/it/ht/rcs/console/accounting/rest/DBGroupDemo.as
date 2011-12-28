package it.ht.rcs.console.accounting.rest
{
  import it.ht.rcs.console.accounting.model.Group;
  import it.ht.rcs.console.accounting.model.User;
  import it.ht.rcs.console.operation.model.Operation;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class DBGroupDemo implements IDBGroup
  {
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      var a:Array = [
        new Group({ _id: '1', name: 'demo',       alert: false, user_ids: ['1', '2', '3'],                          item_ids: ['o1', 'o2', 'o3'] }),
        new Group({ _id: '2', name: 'developers', alert: false, user_ids: ['2', '3', '4', '5', '6', '7', '8', '9'], item_ids: ['o3'] }),
        new Group({ _id: '3', name: 'test',       alert: true,  user_ids: ['10'],                                   item_ids: [] })
      ];
      var items:ArrayCollection = new ArrayCollection(a);

      var event:ResultEvent = new ResultEvent('group.index', false, true, items);
      if (onResult != null) 
        onResult(event);
    }
    
    public function show(id:String, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function create(params:Object, onResult:Function=null, onFault:Function=null):void
    {
      var g:Group = new Group(params);
      g._id = new Date().time.toString();
      g.user_ids = new ArrayCollection(params.user_ids);
      var event:ResultEvent = new ResultEvent('user.create', false, true, g);
      if (onResult != null) 
        onResult(event);
    }
    
    public function update(group:Group, property:Object, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function destroy(group:Group, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function add_user(group:Group, user:User, onResult:Function=null, onFault:Function=null):void
    {
      group.user_ids.addItem(user._id);
      user.group_ids.addItem(group._id);
      var event:ResultEvent = new ResultEvent('group.add_user', false, true, group);
      if (onResult != null) 
        onResult(event);
    }
    
    public function del_user(group:Group, user:User, onResult:Function=null, onFault:Function=null):void
    {
      var idx:int = group.user_ids.getItemIndex(user._id);
      if (idx >= 0)
        group.user_ids.source.splice(idx, 1);
      
      var idy:int = user.group_ids.getItemIndex(group._id);
      if (idy >= 0)
        user.group_ids.source.splice(idy, 1);
      
      var event:ResultEvent = new ResultEvent('group.del_user', false, true, group);
      if (onResult != null) 
        onResult(event);
    }
    
    public function alert(group:Group, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function add_operation(group:Group, op:Operation, onResult:Function=null, onFault:Function=null):void
    {
      group.item_ids.addItem(op._id);
      op.group_ids.addItem(group._id);
      var event:ResultEvent = new ResultEvent('group.add_operation', false, true, group);
      if (onResult != null) 
        onResult(event);
    }
    
    public function del_operation(group:Group, op:Operation, onResult:Function=null, onFault:Function=null):void
    {
      var idx:int = group.item_ids.getItemIndex(op._id);
      if (idx >= 0)
        group.item_ids.source.splice(idx, 1);
      
      var idy:int = op.group_ids.getItemIndex(group._id);
      if (idy >= 0)
        op.group_ids.source.splice(idy, 1);
      
      var event:ResultEvent = new ResultEvent('group.del_operation', false, true, group);
      if (onResult != null) 
        onResult(event);
    }
    
  }
  
}