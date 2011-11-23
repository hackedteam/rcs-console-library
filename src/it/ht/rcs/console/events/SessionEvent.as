package it.ht.rcs.console.events
{
  
  import flash.events.Event;
  
  public class SessionEvent extends Event
  {
    
    public static const LOGIN:String = "login";
    
    public static const BEFORE_LOGOUT:String = "beforeLogout";
    public static const ABORT_LOGOUT:String = "abortLogout";
    public static const LOGOUT:String = "logout";
    
    public var exitApplicationAfterLogout:Boolean = false;
    
    public function SessionEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=true)
    {
      super(type, bubbles, cancelable);
    }
    
  }
  
}