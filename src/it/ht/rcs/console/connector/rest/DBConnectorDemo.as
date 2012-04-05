package it.ht.rcs.console.connector.rest
{
  import it.ht.rcs.console.connector.model.Connector;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class DBConnectorDemo implements IDBConnector
  {
    public function DBConnectorDemo()
    {
    }
    
    public static var connectors:ArrayCollection = new ArrayCollection([
      new Connector({name: 'Third party integration', keep: true, raw: false, dest: '\\export\\thirdparty', path: ['o1'], enabled: true, type: 'JSON'})
    ]);
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      if (onResult != null)
        onResult(new ResultEvent('connector.all', false, true, connectors));
    }

    public function create(params:Object, onResult:Function=null, onFault:Function=null):void
    {
      params._id = new Date().time.toString();
      
      var user:Connector = new Connector(params);
      
      if (onResult != null)
        onResult(new ResultEvent('connector.create', false, true, user));
    }
    
    public function update(f:Connector, property:Object, onResult:Function=null, onFault:Function=null):void
    {
      /* do nothing */
    }
    
    public function destroy(f:Connector, onResult:Function=null, onFault:Function=null):void
    {
      if (onResult != null)
        onResult(new ResultEvent('connector.destroy'));
    }
    
  }
}