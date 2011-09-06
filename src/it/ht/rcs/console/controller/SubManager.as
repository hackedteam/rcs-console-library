package it.ht.rcs.console.controller
{
  
  import flash.utils.getQualifiedClassName;
  
  import it.ht.rcs.console.events.RefreshEvent;
  import it.ht.rcs.console.events.SessionEvent;
  
  import mx.collections.ArrayCollection;
  import mx.events.CollectionEvent;
  import mx.events.CollectionEventKind;
  
  public class SubManager
  {
    protected var _classname:String;
    
    [Bindable]
    protected var _items:ArrayCollection;
    
    protected var _owner:*;
    
    public function SubManager(owner:*, data:ArrayCollection)
    {
      _classname = flash.utils.getQualifiedClassName(this).split('::')[1];
      trace(_classname + ' (submanager) -- Init');

      _items = data ? data : new ArrayCollection();
      _owner = owner;
      
      /* detect changes on the list */
      _items.addEventListener(CollectionEvent.COLLECTION_CHANGE, onItemsChange, false, 0, true);
    }
    
    
    protected function onItemsChange(event:CollectionEvent):void
    {
      
      /* all the logic to the db is here, override this method */
      switch (event.kind) {
        case CollectionEventKind.ADD:
          event.items.forEach(function _(element:*, index:int, arr:Array):void {
            onItemAdd(element);
          });
          break;
        
        case CollectionEventKind.REMOVE:
          event.items.forEach(function _(element:*, index:int, arr:Array):void {
            onItemRemove(element);
          });
          break;
        
        case CollectionEventKind.UPDATE:
          event.items.forEach(function _(element:*, index:int, arr:Array):void {
            onItemUpdate(element);
          });
          break;
        
        case CollectionEventKind.RESET:
          onReset();
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
      _items.removeItemAt(_items.getItemIndex(o));
    }
    
    protected function onItemRemove(element:*):void
    { 
    }
    
    protected function onItemUpdate(element:*):void
    { 
    }
    
    protected function onReset():void
    {
    }
    
    
  }
  
}