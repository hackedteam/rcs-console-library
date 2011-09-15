package it.ht.rcs.console.system.rest
{
  import it.ht.rcs.console.system.model.Shard;
  import it.ht.rcs.console.system.model.ShardStat;
  import it.ht.rcs.console.system.model.System;
  
  import mx.rpc.events.ResultEvent;

  public class DBSystemDemo implements IDBSystem
  {
    public function DBSystemDemo()
    {
    }
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      var event:ResultEvent = new ResultEvent("system.index", false, true, 
        new System({ shards: [new Shard({ _id: "shard0000", host: "shard-server-a:27018" }),
                              new Shard({ _id: "shard0001", host: "shard-server-b:27018" })],
                     ok: "1" }));
      if (onResult != null)
        onResult(event);
    }
    
    public function show(id:String, onResult:Function=null, onFault:Function=null):void
    {
      var event:ResultEvent;
      
      if (id == "shard0000")
        event = new ResultEvent("system.show", false, true, new ShardStat({ dataSize: 141897900, storageSize: 282641664 }));
      else if (id == "shard0001")
        event = new ResultEvent("system.show", false, true, new ShardStat({ dataSize: 40325641, storageSize: 55632187 }));
      
      if (onResult != null)
        onResult(event);
    }
  }
}