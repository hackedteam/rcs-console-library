package it.ht.rcs.console.events
{
  import flash.events.Event;
  
  public class SectionEvent extends Event
  {
    
    public static const CHANGE_SECTION:String = "changeSection";
    
    public static const ACCOUNTING:String = "accounting";
    public static const OPERATIONS:String = "operations";
    public static const DASHBOARD:String = "dashboard";
    public static const ALERTING:String = "alerting";
    public static const CORRELATION:String = "correlation";
    public static const SYSTEM:String = "system";
    public static const AUDIT:String = "audit";
    public static const MONITOR:String = "monitor";
    
    public var section:String;
    
    public function SectionEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
    {
      super(type, bubbles, cancelable);
    }
  }
}