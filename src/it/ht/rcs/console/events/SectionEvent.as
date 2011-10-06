package it.ht.rcs.console.events
{
  import flash.events.Event;
  
  import it.ht.rcs.console.search.model.SearchItem;
  
  public class SectionEvent extends Event
  {
    
    public static const CHANGE_SECTION:String = "changeSection";
    
    public static const ACCOUNTING:String = "Accounting";
    public static const OPERATIONS:String = "Operations";
    public static const DASHBOARD:String = "Dashboard";
    public static const ALERTING:String = "Alerting";
    public static const CORRELATION:String = "Correlation";
    public static const SYSTEM:String = "System";
    public static const AUDIT:String = "Audit";
    public static const MONITOR:String = "Monitor";
    
    public var section:String;
    public var item:SearchItem;
    
    public function SectionEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
    {
      super(type, bubbles, cancelable);
    }
  }
}