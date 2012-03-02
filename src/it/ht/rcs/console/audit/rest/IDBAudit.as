package it.ht.rcs.console.audit.rest
{
	public interface IDBAudit
	{
		function all(filter:Object, onResult:Function=null, onFault:Function=null):void;
		function filters(onResult:Function=null, onFault:Function=null):void;
	}
}