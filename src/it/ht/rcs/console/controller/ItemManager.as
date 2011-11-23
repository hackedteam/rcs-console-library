package it.ht.rcs.console.controller
{
  import flash.utils.getQualifiedClassName;
  
  import it.ht.rcs.console.events.SessionEvent;
  
  import mx.collections.ArrayList;
  import mx.collections.ISort;
  import mx.collections.ListCollectionView;
  import mx.collections.Sort;
  import mx.collections.SortField;
  import mx.events.CollectionEvent;
  import mx.events.CollectionEventKind;
  
  public class ItemManager extends Manager
  {
    
    [Bindable]
    protected var _items:ArrayList = new ArrayList();
    
    public function ItemManager()
    {
      super();
      
      _classname = flash.utils.getQualifiedClassName(this).split('::')[1];
      trace(_classname + ' (itemManager) -- Init');
      
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
      
      /* all the logic to the db is here, override this method */
      switch (e.kind) {
        case CollectionEventKind.ADD:
          e.items.forEach(function _(element:*, index:int, arr:Array):void {
            onItemAdd(element);
          });
          break;
        
        case CollectionEventKind.REMOVE:
          e.items.forEach(function _(element:*, index:int, arr:Array):void {
            onItemRemove(element);
          });
          break;
        
        case CollectionEventKind.UPDATE:
          e.items.forEach(function _(element:*, index:int, arr:Array):void {
            onItemUpdate(element);
          });
          break;
        
        default:
          break;
      }
      
    }
    
    /* SPECIALIZE THIS: to specialize the type of object returned  */
    public function newItem():Object
    {
      var obj:Object = new Object();
      _items.addItem(obj);
      return obj;
    }
    
    public function addItem(o:Object):void
    {
      _items.addItem(o);
    }
    
    protected function onItemAdd(element:*):void
    {
    }
    
    public function removeItem(o:Object):void
    {
      _items.removeItem(o);
    }

    protected function onItemRemove(element:*):void
    { 
    }

    protected function onItemUpdate(element:*):void
    { 
    }
    
    public function getItem(_id:String):*
    {
      var idx:int;
      /* search for the item with _id and return it */
      for (idx = 0; idx < _items.length; idx++) {
        var elem:* = _items.getItemAt(idx);
        if (elem._id == _id)
          return elem;
      }
      return null;
    }
    
    public function getView(sortCriteria:ISort=null, filterFunction:Function=null):ListCollectionView
    {
      trace(_classname + ' (itemManager) -- GetView');
      
      /* create the view for the caller */
      var lcv:ListCollectionView = new ListCollectionView(_items);
      
      if (sortCriteria == null) {
        /* default sorting is alphabetical */
        var sort:Sort = new Sort();
        sort.fields = [new SortField('name', true, false, false)];
        lcv.sort = sort;
      } else {
        lcv.sort = sortCriteria;
      }
      
      lcv.filterFunction = filterFunction;
      lcv.refresh();
      
      return lcv;
    }
    
  }
  
}