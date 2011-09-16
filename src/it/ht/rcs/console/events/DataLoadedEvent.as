package it.ht.rcs.console.events
{
  import flash.events.Event;
  
  public class DataLoadedEvent extends Event
  {
    
    public static const DATA_LOADED:String = 'dataLoaded';
    
    public function DataLoadedEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
    {
      super(type, bubbles, cancelable);
    }
    
  }
  
}