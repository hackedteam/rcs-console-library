package it.ht.rcs.console.forwarder.rest
{
  import it.ht.rcs.console.forwarder.model.Forwarder;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class DBForwarderDemo implements IDBForwarder
  {
    public function DBForwarderDemo()
    {
    }
    
    public static var forwarders:ArrayCollection = new ArrayCollection([
      new Forwarder({name: 'Third party integration', keep: true, raw: false, dest: '\\export\\thirdparty', path: ['o1'], enabled: true, type: 'JSON'})
    ]);
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      if (onResult != null)
        onResult(new ResultEvent('forwarder.all', false, true, forwarders));
    }

    public function create(params:Object, onResult:Function=null, onFault:Function=null):void
    {
      params._id = new Date().time.toString();
      
      var user:Forwarder = new Forwarder(params);
      
      if (onResult != null)
        onResult(new ResultEvent('forwarder.create', false, true, user));
    }
    
    public function update(f:Forwarder, property:Object, onResult:Function=null, onFault:Function=null):void
    {
      /* do nothing */
    }
    
    public function destroy(f:Forwarder, onResult:Function=null, onFault:Function=null):void
    {
      if (onResult != null)
        onResult(new ResultEvent('forwarder.destroy'));
    }
    
  }
}