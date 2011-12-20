package it.ht.rcs.console.audit.rest
{
  import it.ht.rcs.console.audit.model.Audit;
  import it.ht.rcs.console.audit.model.AuditFilter;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;

	public class DBAuditDemo implements IDBAudit
	{
		
		public function all(filter:Object, onResult:Function=null, onFault:Function=null):void
		{
      var time:int = (new Date().time) / 1000;
      var a:Array = [
        new Audit({_id: "a1", action: "user.update", actor: "admin", desc: "Updated 'privs' to '[ADMIN, TECH, VIEW]' for user 'test'", time: time, user: "test"}),
        new Audit({_id: "a2", action: "user.update", actor: "admin", desc: "Updated 'desc' to 'This is a test user' for user 'test'",  time: time, user: "test"}),
        new Audit({_id: "a3", action: "login",       actor: "alor",  desc: "User 'alor' logged in",                                    time: time, user: "test"}),
        new Audit({_id: "a4", action: "user.update", actor: "admin", desc: "Updated 'desc' to 'This is a test user ' for user 'test'", time: time, user: "test"}),
        new Audit({_id: "a5", action: "user.update", actor: "admin", desc: "Updated 'contact' to 'ask@me.it' for user 'test'",         time: time, user: "test"}),
        new Audit({_id: "a6", action: "user.create", actor: "alor",  desc: "Created a new user 'disgrunted'",                          time: time, user: "test"}),
        new Audit({_id: "a7", action: "user.update", actor: "admin", desc: "Changed password for user 'test'",                         time: time, user: "test"}),
        new Audit({_id: "a8", action: "user.update", actor: "admin", desc: "Updated 'privs' to '[ADMIN, TECH]' for user 'admin'",      time: time, user: "test"}),
        new Audit({_id: "a9", action: "logout",      actor: "alor",  desc: "User 'alor' logged out",                                   time: time, user: "test"})
      ];
      var items:ArrayCollection = new ArrayCollection(a);
      
      if (onResult != null) 
        onResult(new ResultEvent('audit.index', false, true, items));
		}
		
		public function filters(onResult:Function=null, onFault:Function=null):void
		{
      var filters:AuditFilter = new AuditFilter;
      filters._id       = 'f1';
      filters.action    = ['login', 'user.update', 'user.create', 'logout'];
      filters.actor     = ['admin', 'alor'];
      filters.agent     = []; // If we do not explicitely set a dataProvider, we get a bad internal NPE in the filter comboboxes...
      filters.group     = [];
      filters.operation = [];
      filters.target    = [];
      filters.user      = ['admin', 'test'];

      if (onResult != null)
        onResult(new ResultEvent('audit.filters', false, true, filters));
		}
    
	}
  
}