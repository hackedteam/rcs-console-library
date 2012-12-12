

package it.ht.rcs.console.entities.rest
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.entities.rest.IDBEntity

  import mx.rpc.CallResponder;

  public class DBEntity extends _Super_DBEntity implements IDBEntity
  {
    public function DBEntity(host:String)
    {
      super();
      _serviceControl.baseURL = host;
    }

    public function all(onResult:Function = null, onFault:Function = null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = all_();
    }

  }

}
