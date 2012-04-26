package it.ht.rcs.console.events
{
  import flash.events.Event;
  
  public class UploadEvent extends Event
  {
    public static const COMPLETE:String = "uploadCompleted";
    
    public var itemId:String;
    
    public function UploadEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
    {
      super(type, bubbles, cancelable);
    }
  }
}