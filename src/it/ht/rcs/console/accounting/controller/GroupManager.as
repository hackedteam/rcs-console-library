package it.ht.rcs.console.accounting.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.accounting.model.Group;
  import it.ht.rcs.console.accounting.model.User;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.operation.model.Operation;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class GroupManager extends ItemManager
  {

    public function GroupManager()
    {
      super(Group);
    }
    
    private static var _instance:GroupManager = new GroupManager();
    public static function get instance():GroupManager { return _instance; }
    
    override public function refresh():void
    {
      super.refresh();
      DB.instance.group.all(onResult);
    }
    
    private function onResult(e:ResultEvent):void
    {
      clear();
      for each (var item:* in e.result.source)
        addItem(item);
      dispatchDataLoadedEvent();
    }
    
    override protected function onItemRemove(item:*):void
    {
      DB.instance.group.destroy(item);
    }
    
    override protected function onItemUpdate(event:*):void
    { 
      var property:Object = new Object();
      property[event.property] = event.newValue is ArrayCollection ? event.newValue.source : event.newValue;
      DB.instance.group.update(event.source, property);
    }
    
    public function removeUser(g:Group, u:User):void
    {
      DB.instance.group.del_user(g, u, function():void {
        reload(g);
        UserManager.instance.reload(u);
      });
    }
    
    public function addUser(g:Group, u:User):void
    {
      DB.instance.group.add_user(g, u, function():void {
        reload(g);
        UserManager.instance.reload(u);
      });
    }

    public function removeOperation(g:Group, o:Operation):void
    {
      DB.instance.group.del_operation(g, o, function():void {
        reload(g);
      });
    }
    
    public function addOperation(g:Group, o:Operation):void
    {
      DB.instance.group.add_operation(g, o, function():void {
        reload(g);
      });
    }
    
    public function reload(g:Group):void
    {
      DB.instance.group.show(g._id, function(e:ResultEvent):void {
        g.name = e.result.name;
        g.user_ids = e.result.user_ids;
        g.item_ids = e.result.item_ids;
      });
    }
    
    public function newGroup(callback:Function):void
    {
      DB.instance.group.create(Group.defaultGroup(), function(e:ResultEvent):void {
        var g:Group = e.result as Group;
        addItem(g);
        callback(g);
      });
    }
    
    public function alertGroup():Group
    {
      var idx:int;
      /* search for the item with alert = true and return it */
      for (idx = 0; idx < _items.length; idx++) {
        var elem:* = _items.getItemAt(idx);
        if (elem.alert == true)
          return elem;
      }
      return null;
    }
    
    public function setalertGroup(g:Group):void
    {
      DB.instance.group.alert(g);
      if (g != null) 
        g.alert = true;
    }
    
  }
  
}