package it.ht.rcs.console.update.rest
{
  import it.ht.rcs.console.update.model.UpdateVersions;
  
  import mx.collections.ArrayCollection;
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

    public function core_all(onResult:Function=null, onFault:Function=null):void
    {
      var event:ResultEvent = new ResultEvent("update.core_all", false, true, new ArrayCollection());
      if (onResult != null) 
        onResult(event);
    }
  }
}