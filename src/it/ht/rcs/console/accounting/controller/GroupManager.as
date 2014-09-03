package it.ht.rcs.console.accounting.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.ObjectUtils;
  import it.ht.rcs.console.accounting.model.Group;
  import it.ht.rcs.console.accounting.model.User;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.operation.model.Operation;
  import it.ht.rcs.console.push.PushController;
  import it.ht.rcs.console.push.PushEvent;
  
  import mx.collections.ArrayCollection;
  import mx.events.CollectionEvent;
  import mx.events.PropertyChangeEvent;
  import mx.rpc.events.ResultEvent;
  
  public class GroupManager extends ItemManager
  {

    public function GroupManager()
    {
      super(Group);
      //PushController.instance.addEventListener(PushEvent.GROUP, onGroupPush);
    }
    
    
    public function listenPush():void
    {
      PushController.instance.addEventListener( PushEvent.GROUP, onGroupPush);
    }
    public function unlistenPush():void
    {
      PushController.instance.removeEventListener( PushEvent.GROUP, onGroupPush);
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
    
    private function onGroupPush(e:PushEvent):void
    {
      //show(e.data.id as String);
      
      var g:Group;
      switch (e.data.action)
      {
        case PushEvent.CREATE:
          trace("group creation");
          g=new Group(e.data.changes);
          if(!getItem(e.data.id))
            addItem(g);
          break;
        
        case PushEvent.MODIFY:
          trace("group update");
          g = getItem(e.data.id)
          if(!g)
            return;
          _items.removeEventListener(CollectionEvent.COLLECTION_CHANGE, onItemsChange);
          for(var property:String in e.data.changes)
          {
            if( g[property])
              g[property] = e.data.changes[property];
          }
          _items.addEventListener(CollectionEvent.COLLECTION_CHANGE, onItemsChange);
          break;
        
        case PushEvent.DESTROY:
          trace("group deletion");
          _items.removeEventListener(CollectionEvent.COLLECTION_CHANGE, onItemsChange);
          removeItem(getItem(e.data.id))
          _items.addEventListener(CollectionEvent.COLLECTION_CHANGE, onItemsChange);
          break;
      }
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
    
    public function addUser(g:Group, u:User, callback:Function=null):void
    {
      DB.instance.group.add_user(g, u, function(e:ResultEvent):void {
        if (g.user_ids.getItemIndex(u._id)  == -1) g.user_ids.addItem(u._id);
        if (u.group_ids.getItemIndex(g._id) == -1) u.group_ids.addItem(g._id);
        g.dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_CHANGE));
        u.dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_CHANGE));
        if (callback != null) callback();
      });
    }
    
    public function removeUser(g:Group, u:User, callback:Function):void
    {
      DB.instance.group.del_user(g, u, function(e:ResultEvent):void {
        var ux:int = g.user_ids.getItemIndex(u._id);
        if (ux != -1) g.user_ids.removeItemAt(ux);
        var gx:int = u.group_ids.getItemIndex(g._id);
        if (gx != -1) u.group_ids.removeItemAt(gx);
        g.dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_CHANGE));
        u.dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_CHANGE));
        if (callback != null) callback();
      });
    }

    public function addOperation(g:Group, o:Operation, callback:Function):void
    {
      DB.instance.group.add_operation(g, o, function(e:ResultEvent):void {
        if (g.item_ids.getItemIndex(o._id)  == -1) g.item_ids.addItem(o._id);
        if (o.group_ids.getItemIndex(g._id) == -1) o.group_ids.addItem(g._id);
        g.dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_CHANGE));
        o.dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_CHANGE));
        if (callback != null) callback();
      });
    }
    
    public function removeOperation(g:Group, o:Operation, callback:Function):void
    {
      DB.instance.group.del_operation(g, o, function(e:ResultEvent):void {
        var ox:int = g.item_ids.getItemIndex(o._id);
        if (ox != -1) g.item_ids.removeItemAt(ox);
        var gx:int = o.group_ids.getItemIndex(g._id);
        if (gx != -1) o.group_ids.removeItemAt(gx);
        g.dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_CHANGE));
        o.dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_CHANGE));
        if (callback != null) callback();
      });
    }
    
    public function addGroup(group:Group, callback:Function):void
    {
      DB.instance.group.create(ObjectUtils.toHash(group), function(e:ResultEvent):void {
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
      if (g != null) { 
        g.alert = true;
      } else {
        var idx:int;
        /* clear all the alerts */
        for (idx = 0; idx < _items.length; idx++) {
          var elem:* = _items.getItemAt(idx);
          elem.alert = false;
        }
      }
        
    }
    
  }
  
}