package it.ht.rcs.console.update.rest
{
  import it.ht.rcs.console.update.model.UpdateVersions;
  
  import mx.rpc.events.ResultEvent;

  public class DBUpdateDemo implements IDBUpdate
  {
    public function DBUpdateDemo()
    {
    }
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      var event:ResultEvent = new ResultEvent("update.index", false, true, new UpdateVersions({console: "-1", db: "-1"}));
      if (onResult != null) 
        onResult(event);
    }
    
  }
}