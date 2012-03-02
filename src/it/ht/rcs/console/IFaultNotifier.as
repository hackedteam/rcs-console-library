package it.ht.rcs.console
{
	import mx.rpc.events.FaultEvent;

	public interface IFaultNotifier
	{
		function fault(event:FaultEvent):void;
	}
}