package it.ht.rcs.console.accounting.rest
{
  import it.ht.rcs.console.accounting.model.Session;
  import it.ht.rcs.console.accounting.model.User;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;

  public class DBSessionDemo implements IDBSession
  {
    
    public static var demo_user:User = new User({_id: '1', name: 'demo', contact:'demo@hackingteam.it', 
                                                 privs:new ArrayCollection(['ADMIN', 'SYS', 'TECH', 'VIEW']), locale:'en_US', group_ids:new ArrayCollection(['1']), 
                                                 dashboard_ids: new ArrayCollection(['4df7246d963d350964000001', '4e2683f3963d350658000001', '4e26a850963d350f4e000006']), 
                                                 recent_ids: new ArrayCollection(['4df7246d963d350964000001', '4e2683f3963d350658000001', '4e26a850963d350f4e000006', "4e25a173963d354260000003", "4e26a862963d350f4e000009", "4e26a712963d350f4e000002"]), 
                                                 timezone:0, enabled:true});

    public static var demo_user_admin:User = new User({_id: '2', name: 'demoa', contact:'demo@hackingteam.it', 
                                                      privs:new ArrayCollection(['ADMIN']), locale:'en_US', group_ids:new ArrayCollection(['1']), 
                                                      dashboard_ids: new ArrayCollection(), recent_ids: new ArrayCollection(), timezone:0, enabled:true});
    public static var demo_user_sys:User = new User({_id: '3', name: 'demos', contact:'demo@hackingteam.it', 
                                                      privs:new ArrayCollection(['SYS']), locale:'en_US', group_ids:new ArrayCollection(['1']), 
                                                      dashboard_ids: new ArrayCollection(), recent_ids: new ArrayCollection(), timezone:0, enabled:true});
    public static var demo_user_tech:User = new User({_id: '4', name: 'demot', contact:'demo@hackingteam.it', 
                                                      privs:new ArrayCollection(['TECH']), locale:'en_US', group_ids:new ArrayCollection(['1']), 
                                                      dashboard_ids: new ArrayCollection(), recent_ids: new ArrayCollection(), timezone:0, enabled:true});
    public static var demo_user_view:User = new User({_id: '5', name: 'demov', contact:'demo@hackingteam.it', 
                                                      privs:new ArrayCollection(['VIEW']), locale:'en_US', group_ids:new ArrayCollection(['1']), 
                                                      dashboard_ids: new ArrayCollection(), recent_ids: new ArrayCollection(), timezone:0, enabled:true});
    public static var demo_user_nothing:User = new User({_id: '6', name: 'demon', contact:'demo@hackingteam.it', 
                                                      privs:new ArrayCollection([]), locale:'en_US', group_ids:new ArrayCollection(['1']), 
                                                      dashboard_ids: new ArrayCollection(), recent_ids: new ArrayCollection(), timezone:0, enabled:true});

    public function DBSessionDemo()
    {
    }
    
    public function login(credentials:Object, onResult:Function, onFault:Function):void
    {
      var current_user:User = demo_user;;

      if (credentials.user == 'demo') current_user = demo_user;
      if (credentials.user == 'demoa') current_user = demo_user_admin;
      if (credentials.user == 'demos') current_user = demo_user_sys;
      if (credentials.user == 'demot') current_user = demo_user_tech;
      if (credentials.user == 'demov') current_user = demo_user_view;
      if (credentials.user == 'demon') current_user = demo_user_nothing;
      
      var result:Session = new Session({cookie: 0, time: 0, user: current_user});
      var event:ResultEvent = new ResultEvent("login", false, true, result);
      onResult(event);
    }
    
    public function logout(onResult:Function=null, onFault:Function=null):void
    {
      var i:int = parseInt("0");
      var event:ResultEvent = new ResultEvent("logout", false, true, null);
      if (onResult != null) 
        onResult(event);
    }
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      var items:ArrayCollection = new ArrayCollection();
      items.addItem(new Session({user: new User({name:"alor"}), address:"1.1.2.3", time:(new Date().time - 20000) / 1000, level: new ArrayCollection(['view'])}) );
      items.addItem(new Session({user: new User({name:"demo"}), address:"demo", time:new Date().time / 1000, level: new ArrayCollection(['admin', 'sys', 'tech', 'view'])}) );
      items.addItem(new Session({user: new User({name:"daniel"}), address:"5.6.7.8", time:(new Date().time - 5000) / 1000, level: new ArrayCollection(['tech', 'view'])}) );
      items.addItem(new Session({user: new User({name:"admin"}), address:"10.11.12.13", time:(new Date().time - 2000) / 1000, level: new ArrayCollection(['admin'])}) );
      items.addItem(new Session({user: new User({name:"sysadmin"}), address:"3.4.5.6", time:(new Date().time - 2000) / 1000, level: new ArrayCollection(['sys'])}) );
      var event:ResultEvent = new ResultEvent("session.index", false, true, items);
      if (onResult != null) 
        onResult(event);
    }
    
    public function destroy(cookie:String, onResult:Function=null, onFault:Function=null):void
    {
      /* do nothing */
    }
    
    
  }
}