package it.ht.rcs.console.push
{
	import flash.events.Event;
	
	public class EMWebSocketEvent extends Event
	{
		public static const CLOSE:String = "close";
		public static const CONNECT:String = "connect";
		public static const MESSAGE:String = "message";
		public static const IO_ERROR:String = "ioError";
		public static const SECURITY_ERROR:String = "securityError";
		public static const DISCONNECT:String = "disconnect";
		public static const CONNECT_ERROR:String = "connectError";
		
		public var data:*;
		
		public function EMWebSocketEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}