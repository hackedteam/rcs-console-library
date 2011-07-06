package it.ht.rcs.console
{

  import it.ht.rcs.console.network.rest.DBNetwork;
	import it.ht.rcs.console.network.rest.DBNetworkDemo;
	import it.ht.rcs.console.network.rest.IDBNetwork;
	
	import mx.rpc.CallResponder;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
  
	public class DB
	{
    
		public var network:IDBNetwork;
		
    public function DB(host: String)
    {
      host == 'demo' ? initDemo() :	initRemote(host);
    }
    
		private function initRemote(host:String):void
		{
			network = new DBNetwork(host);
		}
		
		private function initDemo():void
		{
			network = new DBNetworkDemo();
		}
		
    public static function getCallResponder(onResult:Function, onFault:Function):CallResponder
    {
      // Set up the responder
      var resp:CallResponder = new CallResponder();
      
      if (onResult != null) 
        resp.addEventListener(ResultEvent.RESULT, onResult);
      
      // If the fault handler is provided, use it. Otherwise, use the default one.
      if (onFault != null) 
        resp.addEventListener(FaultEvent.FAULT, onFault);
      else
        resp.addEventListener(FaultEvent.FAULT, onDeFault);
      
      return resp;
    }
    
    public static function onDeFault(event:FaultEvent):void {
    {
        trace("cacca");
        trace(event);
    }

  }

}