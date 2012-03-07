package it.ht.rcs.console.controller
{
  import it.ht.rcs.console.events.SessionEvent;
  
  import mx.collections.ArrayList;
  import mx.collections.ISort;
  import mx.collections.ListCollectionView;
  import mx.events.CollectionEvent;
  import mx.events.CollectionEventKind;
  
  import spark.collections.SortField;
  
  public class ItemManager extends Manager
  {
    
    protected var _items:ArrayList = new ArrayList();
    protected var _class:Class = null;
    
    public function ItemManager(_class:Class=null)
    {
      super();
      trace(_classname + ' (itemManager) -- Init');
      
      this._class = _class;
      
      /* detect changes on the list */
      _items.addEventListener(CollectionEvent.COLLECTION_CHANGE, onItemsChange);
    }
    
    override protected function onLogout(e:SessionEvent):void
    {
      super.onLogout(e);
      trace(_classname + ' (itemManager) -- Logout');
      _items.removeAll();
    }
    
    protected function onItemsChange(e:CollectionEvent):void
    {
      switch (e.kind) {
        
        case CollectionEventKind.ADD:
          for each (var added:* in e.items)
            if (_class && added is _class)
              onItemAdd(added);
          break;
        
        case CollectionEventKind.REMOVE:
          for each (var removed:* in e.items)
            if (_class && removed is _class)
              onItemRemove(removed);
          break;
        
        case CollectionEventKind.UPDATE:
          for each (var event:* in e.items) // event is PropertyChangeEvent
            if (_class && event.source is _class)
              onItemUpdate(event);
          break;
        
        default:
          break;
      
      }
    }
    
    protected function onItemAdd(item:*):void {}
    protected function onItemRemove(item:*):void {}
    protected function onItemUpdate(event:*):void {}
    
    public function addItem(item:Object):void
    {
      _items.addItem(item);
    }
    
    public function removeItem(item:Object):void
    {
      _items.removeItem(item);
    }
    
    public function clear():void
    {
      _items.removeAll();
    }
    
    public function getItem(_id:String):*
    {
      for each (var o:* in _items.source)
        if (o._id == _id)
          return o;
      return null;
    }
    
    public function getView(sort:ISort=null, filterFunction:Function=null):ListCollectionView
    {
      trace(_classname + ' (itemManager) -- GetView');
      
      /* create the view for the caller */
      var lcv:ListCollectionView = new ListCollectionView(_items);
      
      var def:spark.collections.Sort = new spark.collections.Sort();
      def.fields = [new SortField('name')];
      
      //lcv.sort = sort ? sort : new Sort();
      lcv.sort = sort || def;
      lcv.filterFunction = filterFunction;
      
      lcv.refresh();
      
      return lcv;
    }
    
  }
  
}