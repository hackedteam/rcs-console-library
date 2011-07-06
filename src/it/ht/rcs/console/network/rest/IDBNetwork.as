package it.ht.rcs.console.network.rest
{
	public interface IDBNetwork
	{
		function login(params:Object, onResult:Function, onFault:Function): void;
	}
}