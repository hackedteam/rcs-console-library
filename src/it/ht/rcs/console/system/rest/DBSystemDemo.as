package it.ht.rcs.console.system.rest
{
  import it.ht.rcs.console.system.model.Shard;
  import it.ht.rcs.console.system.model.ShardStat;
  import it.ht.rcs.console.system.model.System;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;

  public class DBSystemDemo implements IDBSystem
  {
    public function DBSystemDemo()
    {
    }
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      var event:ResultEvent = new ResultEvent("system.index", false, true, 
        new System({ shards: [new Shard({ _id: "shard0000", host: "localhost:27018" })], ok: "1" }));
      if (onResult != null) 
        onResult(event);
    }
    
    public function show(id:String, onResult:Function=null, onFault:Function=null):void
    {
      var event:ResultEvent = new ResultEvent("system.show", false, true, new ShardStat({dataSize: 14197900, storageSize: 28241664}));
      if (onResult != null) 
        onResult(event);
    }
  }
}