package it.ht.rcs.console.audit.rest
{
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;

	public class DBAuditDemo implements IDBAudit
	{
		public function DBAuditDemo()
		{
		}
		
		public function all(filter:Object, onResult:Function=null, onFault:Function=null):void
		{
      var items:ArrayCollection = new ArrayCollection();
      var time:int = (new Date().time) / 1000;
      items.addItem({_id: "4dd1312b963d351900000003", action: "user.update", actor: "admin", desc: "Updated 'privs' to '[\"ADMIN\", \"TECH\", \"VIEW\"]' for user 'test'", time: time, user: "test" });
      items.addItem({_id: "4dd133ef963d351a90000004", action: "user.update", actor: "admin", desc: "Updated 'desc' to 'This is a test user' for user 'test'", time: time, user: "test"});
      items.addItem({_id: "4dd134b9963d351af6000003", action: "user.update", actor: "admin", desc: "Updated 'desc' to 'This is a test user ' for user 'test'", time: time, user:"test"});
      items.addItem({_id: "4dd134b9963d351af6000004", action: "user.update", actor: "admin", desc: "Updated 'contact' to 'ask@me.it' for user 'test'", time: time, user:"test"});
      items.addItem({_id: "4dd134ec963d351af6000007", action: "user.update", actor: "admin", desc: "Changed password for user 'New User'", time: time, user:"test"});
      items.addItem({_id: "4dd134f5963d351af6000008", action: "user.update", actor: "admin", desc: "Updated 'privs' to '[\"ADMIN\", \"TECH\"]' for user 'admin'", time: time, user:"test"});
      var event:ResultEvent = new ResultEvent("audit.index", false, true, items);
      if (onResult != null) 
        onResult(event);
		}
		
		public function filters(onResult:Function=null, onFault:Function=null):void
		{
      var filters:Object = new Object;
      /*
      "{"_id":"4dd4e801963d350598000003","actions":["login","user.update","user.create","logout"],"actors":["admin"],"users":["admin","test","New User","finochky"]}"
      */
      filters["_id"] = "4dd4e801963d350598000003";
      filters["actions"] = ["login","user.update","user.create","logout"];
      filters["actors"] = ["admin"];
      filters["users"] = ["admin","test","New User","finochky"];
      var event:ResultEvent = new ResultEvent("audit.filters", false, true, filters);
      if (onResult != null)
        onResult(event);
		}
	}
}