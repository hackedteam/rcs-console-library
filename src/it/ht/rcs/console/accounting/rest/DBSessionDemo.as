package it.ht.rcs.console.accounting.rest
{
  import it.ht.rcs.console.accounting.model.Session;
  import it.ht.rcs.console.accounting.model.User;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;

  public class DBSessionDemo implements IDBSession
  {
    
    private var demo_user:User = new User({_id: '1', name: 'demo', contact:'demo@hackingteam.it', privs:new ArrayCollection(['ADMIN', 'TECH', 'VIEW']), locale:'en_US', group_ids:new ArrayCollection(['1']), timezone:0, enabled:true});

    public function DBSessionDemo()
    {
    }
    
    public function login(credentials:Object, onResult:Function, onFault:Function):void
    {
      var result:Session = new Session({cookie: 0, time: 0, user: demo_user});
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
      items.addItem(new Session({user: new User({name:"alor"}), address:"1.1.2.3", time:(new Date().time - 20000) / 1000, level: new ArrayCollection(['admin', 'tech', 'view'])}) );
      items.addItem(new Session({user: new User({name:"demo"}), address:"demo", time:new Date().time / 1000, level: new ArrayCollection(['view'])}) );
      items.addItem(new Session({user: new User({name:"daniel"}), address:"5.6.7.8", time:(new Date().time - 5000) / 1000, level: new ArrayCollection(['tech', 'view'])}) );
      items.addItem(new Session({user: new User({name:"admin"}), address:"10.11.12.13", time:(new Date().time - 2000) / 1000, level: new ArrayCollection(['admin'])}) );
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