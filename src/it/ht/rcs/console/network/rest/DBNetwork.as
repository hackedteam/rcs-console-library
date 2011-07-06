/**
 * This is a generated sub-class of _DBNetwork.as and is intended for behavior
 * customization.  This class is only generated when there is no file already present
 * at its target location.  Thus custom behavior that you add here will survive regeneration
 * of the super-class. 
 **/
 
package it.ht.rcs.console.network.rest
{
	import com.adobe.serialization.json.JSON;
	
	import mx.rpc.CallResponder;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;

public class DBNetwork extends _Super_DBNetwork implements IDBNetwork
{
  /**
   * Override super.init() to provide any initialization customization if needed.
   */
  protected override function preInitializeService():void
  {
    super.preInitializeService();
    // Initialization customization goes here
  }
	
	public function DBNetwork(host: String) {
		super();
		_serviceControl.baseURL = "https://" + host + ":4444/";
	}
	
	private function onDeFault(event: FaultEvent):void
	{
		trace("cacca");	
		trace(event);
	}
	
	private function getCallResponder(onResult:Function, onFault:Function):CallResponder
	{
		/* set up the responder */
		var resp:CallResponder = new CallResponder();
		
		if (onResult != null) 
			resp.addEventListener(ResultEvent.RESULT, onResult);
		
		/* 
		if the Fault handler is provided, use it.
		otherwise use the default one.
		*/
		if (onFault != null) 
			resp.addEventListener(FaultEvent.FAULT, onFault);
		else
			resp.addEventListener(FaultEvent.FAULT, onDeFault);
		
		return resp;
	}
	
	public function login(params:Object, onResult:Function, onFault:Function): void
	{
		var resp:CallResponder = getCallResponder(onResult, onFault);
		resp.token = _login(JSON.encode(params));
	}
}

}
