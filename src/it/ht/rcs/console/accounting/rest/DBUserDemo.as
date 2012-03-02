package it.ht.rcs.console.accounting.rest
{
  import it.ht.rcs.console.accounting.model.User;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;

  public class DBUserDemo implements IDBUser
  {
    
    public static var users:ArrayCollection = new ArrayCollection([
      new User({ _id: '2',  name: 'alor',   group_ids: ['1', '2'], enabled: true,  privs: ['ADMIN', 'SYS', 'TECH', 'VIEW'], locale: 'en_US' }),
      new User({ _id: '3',  name: 'daniel', group_ids: ['1', '2'], enabled: true,  privs: ['ADMIN', 'SYS', 'TECH', 'VIEW'], locale: 'it_IT' }),
      new User({ _id: '4',  name: 'naga',   group_ids: ['2'],      enabled: true,  privs: ['VIEW'] }),
      new User({ _id: '5',  name: 'que',    group_ids: ['2'],      enabled: false, privs: [] }),
      new User({ _id: '6',  name: 'zeno',   group_ids: ['2'],      enabled: true,  privs: ['TECH', 'VIEW'] }),
      new User({ _id: '7',  name: 'rev',    group_ids: ['2'],      enabled: false, privs: [] }),
      new User({ _id: '8',  name: 'kiodo',  group_ids: ['2'],      enabled: false, privs: [] }),
      new User({ _id: '9',  name: 'fabio',  group_ids: ['2'],      enabled: false, privs: [] }),
      new User({ _id: '10', name: 'br1',    group_ids: ['3'],      enabled: false, privs: ['SYS'] })
    ]);
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      if (onResult != null)
        onResult(new ResultEvent('user.all', false, true, users));
    }
    
    public function create(params:Object, onResult:Function=null, onFault:Function=null):void
    {
      params._id = new Date().time.toString();
      params.privs = new ArrayCollection(params.privs);
      params.group_ids = new ArrayCollection(params.group_ids);
      
      var user:User = new User(params);
      
      if (onResult != null)
        onResult(new ResultEvent('user.create', false, true, user));
    }
    
    public function destroy(user:User, onResult:Function=null, onFault:Function=null):void
    {
      if (onResult != null)
        onResult(new ResultEvent('user.destroy'));
    }
    
    public function show(id:String, onResult:Function=null, onFault:Function=null):void
    {
      /* do nothing */
    }
    
    public function update(user:User, property:Object, onResult:Function=null, onFault:Function=null):void
    {
      /* do nothing */
    }
    
    public function add_recent(user:User, id:String, onResult:Function=null, onFault:Function=null):void
    {
      if (user.recent_ids.getItemIndex(id) == -1)
      {
        user.recent_ids.addItemAt(id, 0);
        if (user.recent_ids.length > 5)
          user.recent_ids.removeItemAt(5);
      }
      
      if (onResult != null)
        onResult(new ResultEvent('user.add_recent', false, true, user));
    }
    
  }
  
}