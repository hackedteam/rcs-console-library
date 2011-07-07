package it.ht.rcs.console.accounting.rest
{
  import it.ht.rcs.console.accounting.model.Group;
  import it.ht.rcs.console.accounting.model.User;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class DBGroupDemo implements IDBGroup
  {
    public function DBGroupDemo()
    {
    }
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      var items:ArrayCollection = new ArrayCollection();
      items.addItem({_id: '1', name: 'demo', user_ids:new ArrayCollection(['1','2','3']), alert: false});
      items.addItem({_id: '2', name: 'developers', user_ids:new ArrayCollection(['2','3','4','5','6','7','8','9']), alert: false});
      items.addItem({_id: '3', name: 'test', user_ids:new ArrayCollection(['10']), alert: true});
      var event:ResultEvent = new ResultEvent("group.index", false, true, items);
      if (onResult != null) 
        onResult(event);
    }
    
    public function show(id:String, onResult:Function=null, onFault:Function=null):void
    {
      /* do nothing */
    }
    
    public function create(params:Object, onResult:Function=null, onFault:Function=null):void
    {
      var g:Object = params;
      g._id = new Date().getTime().toString();
      g.user_ids = new ArrayCollection(g.user_ids);
      var event:ResultEvent = new ResultEvent("user.create", false, true, g);
      if (onResult != null) 
        onResult(event);
    }
    
    public function update(group:Group, property:Object, onResult:Function=null, onFault:Function=null):void
    {
      /* do nothing */
    }
    
    public function destroy(group:Group, onResult:Function=null, onFault:Function=null):void
    {
      /* do nothing */
    }
    
    public function add_user(group:Group, user:User, onResult:Function=null, onFault:Function=null):void
    {
      group.user_ids.addItem(user._id);
      user.group_ids.addItem(group._id);
      var event:ResultEvent = new ResultEvent("group.add_user", false, true, group);
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
      
      var event:ResultEvent = new ResultEvent("group.del_user", false, true, group);
      if (onResult != null) 
        onResult(event);
    }
    
    public function alert(group:Group, onResult:Function=null, onFault:Function=null):void
    {
      /* do nothing */
    }
  }
}