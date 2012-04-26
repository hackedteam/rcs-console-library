package it.ht.rcs.console.events
{
  import flash.events.Event;
  
  import it.ht.rcs.console.controller.Manager;
  
  public class DataLoadedEvent extends Event
  {
    
    public static const DATA_LOADED:String = 'dataLoaded';
    
    public var manager:Manager;
    
    public function DataLoadedEvent(type:String, manager:Manager=null, bubbles:Boolean=false, cancelable:Boolean=false)
    {
      super(type, bubbles, cancelable);
      this.manager = manager;
    }
    
  }
  
}