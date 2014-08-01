package it.ht.rcs.console.push
{
	import flash.events.Event;
	
	public class PushEvent extends Event
	{
    public static const UNKNOWN:String = "unknown";
		public static const MONITOR:String = "monitor";
    public static const ALERT:String = "alert";
    public static const OPERATION:String = "operation";
    public static const TARGET:String = "target";
    public static const ENTITY:String = "entity";
    public static const AGENT:String = "agent";
    public static const FACTORY:String = "factory";
    public static const MESSAGE:String = "message";
    public static const DASHBOARD:String = "dashboard";
    public static const LOGOUT:String = "logout";
    public static const FILESYSTEM:String = "filesystem";
    public static const USER:String = "user";
    public static const GROUP:String = "group";
    
    public static const CREATE:String = "create";
    public static const MODIFY:String = "modify";
    public static const DESTROY:String = "destroy";
    
		public var data:*;
		
		public function PushEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}