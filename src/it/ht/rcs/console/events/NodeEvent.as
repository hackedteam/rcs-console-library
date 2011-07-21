package it.ht.rcs.console.events
{
  import flash.events.Event;
  
  public class NodeEvent extends Event
  {
    public static const CHANGED:String = "changed";
    public static const ADDED:String = "added";
    public static const REMOVED:String = "removed";
    
    public function NodeEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
    {
      super(type, bubbles, cancelable);
    }
  }
}