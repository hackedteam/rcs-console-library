package it.ht.rcs.console
{
	import it.ht.rcs.console.network.rest.DBNetwork;
	import it.ht.rcs.console.network.rest.IDBNetwork;

	public class DB
	{
		public var network: IDBNetwork;
		
		private function initRemote(host:String):void
		{
			network = new DBNetwork(host);
		}
		
		private function initDemo():void
		{
			
		}
		
		public function DB(host: String)
		{
			if (host == 'demo') {
				initDemo()
			} else {
				initRemote(host);
			}
		}
	}
}