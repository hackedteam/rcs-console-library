package it.ht.rcs.console.push
{
	import flash.events.Event;
	
	public class PushEvent extends Event
	{
    public static const UNKNOWN:String = "unknown";
		public static const MONITOR:String = "monitor";
    public static const ALERT:String = "alert";
    public static const AGENT:String = "agent";
		
		public var data:*;
		
		public function PushEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}