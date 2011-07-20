package it.ht.rcs.console.accounting.rest
{
  import it.ht.rcs.console.accounting.model.User;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;

  public class DBUserDemo implements IDBUser
  {
    
    private var demo_user:User = new User({_id: '1', name: 'demo', contact:'demo@hackingteam.it', privs:new ArrayCollection(['ADMIN', 'TECH', 'VIEW']), locale:'en_US', group_ids:new ArrayCollection(['1']), dashboard_ids: new ArrayCollection(['1', '2', '3']), timezone:0, enabled:true});

    public function DBUserDemo()
    {
    }
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      var items:ArrayCollection = new ArrayCollection();
      items.addItem(demo_user);
      items.addItem(new User({_id: '2', name: 'alor', locale:'en_US', group_ids:new ArrayCollection(['1','2']), enabled:true, privs:new ArrayCollection(['ADMIN', 'TECH', 'VIEW'])}) );
      items.addItem(new User({_id: '3', name: 'daniel', locale:'it_IT', group_ids:new ArrayCollection(['1','2']), enabled:true, privs:new ArrayCollection(['ADMIN', 'TECH', 'VIEW'])}) );
      items.addItem(new User({_id: '4', name: 'naga', group_ids:new ArrayCollection(['2']), enabled:true, privs:new ArrayCollection(['VIEW'])}) );
      items.addItem(new User({_id: '5', name: 'que', group_ids:new ArrayCollection(['2']), enabled:false}) );
      items.addItem(new User({_id: '6', name: 'zeno', group_ids:new ArrayCollection(['2']), enabled:true, privs:new ArrayCollection(['TECH', 'VIEW'])}) );
      items.addItem(new User({_id: '7', name: 'rev', group_ids:new ArrayCollection(['2']), enabled:false}) );
      items.addItem(new User({_id: '8', name: 'kiodo', group_ids:new ArrayCollection(['2']), enabled:false}) );
      items.addItem(new User({_id: '9', name: 'fabio', group_ids:new ArrayCollection(['2']), enabled:false}) );
      items.addItem(new User({_id: '10', name: 'br1', group_ids:new ArrayCollection(['3']), enabled:false}) );
      var event:ResultEvent = new ResultEvent("user.index", false, true, items);
      if (onResult != null) 
        onResult(event);
    }
    
    public function create(params:Object, onResult:Function=null, onFault:Function=null):void
    {
      params._id = new Date().getTime().toString();
      params.privs = new ArrayCollection(params.privs);
      params.group_ids = new ArrayCollection(params.group_ids);
      
      var user:User = new User(params);
      
      var event:ResultEvent = new ResultEvent("user.create", false, true, user);
        onResult(event);
    }
    
    public function destroy(user:User, onResult:Function=null, onFault:Function=null):void
    {
      /* do nothing */
    }
    
    public function show(id:String, onResult:Function=null, onFault:Function=null):void
    {
      /* do nothing */
    }
    
    public function update(user:User, property:Object, onResult:Function=null, onFault:Function=null):void
    {
      /* do nothing */
    }
    
  }
}