package it.ht.rcs.console.accounting.rest
{
  import it.ht.rcs.console.accounting.model.Session;
  import it.ht.rcs.console.accounting.model.User;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;

  public class DBSessionDemo implements IDBSession
  {
    
    public static var demo_user:User         = new User({ _id: '1', name: 'demo', contact: 'demo@hackingteam.it',
                                                          privs: ['ADMIN','ADMIN_USERS','ADMIN_OPERATIONS','ADMIN_TARGETS','ADMIN_AUDIT','ADMIN_LICENSE','ADMIN_PROFILES',
                                                                  'SYS','SYS_FRONTEND','SYS_BACKEND','SYS_BACKUP','SIS_INJECTORS','SYS_CONNECTORS', 
                                                                  'TECH', 'TECH_FACTORIES','TECH_BUILD','TECH_CONFIG','TECH_EXEC','TECH_UPLOAD','TECH_IMPORT','TECH_NI_RULES', 
                                                                  'VIEW', 'VIEW_ALERTS',''], locale: 'en_US', group_ids: ['1'],
                                                          dashboard_ids: ['o1', 't1', 'a1'], recent_ids: ['o1', 't1', 'a6', 't3', 'f6'],
                                                          timezone: 0, enabled: true});
    
    public static var demo_user_admin:User   = new User({ _id: '1', name: 'demoa', contact: 'demoa@hackingteam.it',
                                                          privs: ['ADMIN'], locale: 'en_US', group_ids: ['1'],
                                                          dashboard_ids: [], recent_ids: [], timezone: 0, enabled: true});
    
    public static var demo_user_sys:User     = new User({ _id: '1', name: 'demos', contact:'demos@hackingteam.it',
                                                          privs: ['SYS'], locale: 'en_US', group_ids: ['1'],
                                                          dashboard_ids: [], recent_ids: [], timezone: 0, enabled: true});
    
    public static var demo_user_tech:User    = new User({ _id: '1', name: 'demot', contact:'demot@hackingteam.it',
                                                          privs: ['TECH'], locale: 'en_US', group_ids: ['1'],
                                                          dashboard_ids: [], recent_ids: [], timezone: 0, enabled: true});
    
    public static var demo_user_view:User    = new User({ _id: '1', name: 'demov', contact:'demov@hackingteam.it',
                                                          privs: ['VIEW'], locale: 'en_US', group_ids: ['1'],
                                                          dashboard_ids: [], recent_ids: [], timezone: 0, enabled: true});
    
    public static var demo_user_nothing:User = new User({ _id: '1', name: 'demon', contact:'demon@hackingteam.it',
                                                          privs: [], locale: 'en_US', group_ids: ['1'],
                                                          dashboard_ids: [], recent_ids: [], timezone: 0, enabled: true});
    
    public function login(credentials:Object, onResult:Function, onFault:Function):void
    {
      var current_user:User;

           if (credentials.user == 'demo')  current_user = demo_user;
      else if (credentials.user == 'demoa') current_user = demo_user_admin;
      else if (credentials.user == 'demos') current_user = demo_user_sys;
      else if (credentials.user == 'demot') current_user = demo_user_tech;
      else if (credentials.user == 'demov') current_user = demo_user_view;
      else if (credentials.user == 'demon') current_user = demo_user_nothing;
      
      if (DBUserDemo.users.getItemAt(0)._id == '1')
        DBUserDemo.users.removeItemAt(0);
      DBUserDemo.users.addItemAt(current_user, 0);
           
      var result:Session = new Session({ cookie: 0, time: 0, user: current_user });
      onResult(new ResultEvent('login', false, true, result));
    }
    
    public function logout(onResult:Function=null, onFault:Function=null):void
    {
      if (onResult != null)
        onResult(new ResultEvent('logout'));
    }
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      var sessions:ArrayCollection = new ArrayCollection([
        new Session({ user: new User({ _id: '1', name: 'demo' }),   address: 'demo',        time: (new Date().time - 10000) / 1000, level: ['ADMIN', 'SYS', 'TECH', 'VIEW'] }),
        new Session({ user: new User({ _id: '2', name: 'alor' }),   address: '1.1.2.3',     time: (new Date().time - 20000) / 1000, level: ['VIEW'] }),
        new Session({ user: new User({ _id: '4', name: 'naga' }),   address: '10.11.12.13', time: (new Date().time - 2000)  / 1000, level: ['ADMIN'] })
      ]);

      if (onResult != null)
        onResult(new ResultEvent('session.index', false, true, sessions));
    }
    
    public function destroy(cookie:String, onResult:Function=null, onFault:Function=null):void
    {
      if (onResult != null)
        onResult(new ResultEvent('session.destroy'));
    }
    
  }
  
}