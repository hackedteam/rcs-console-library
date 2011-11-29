package it.ht.rcs.console.shard.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.events.RefreshEvent;
  import it.ht.rcs.console.network.model.Collector;
  import it.ht.rcs.console.shard.model.Shard;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class ShardManager extends ItemManager
  {
    
    /* singleton */
    private static var _instance:ShardManager = new ShardManager();
    public static function get instance():ShardManager { return _instance; } 
    
    public function ShardManager()
    {
      super();
    }
    
    override public function refresh():void
    {
      super.refresh();
      DB.instance.system.all(onResult);
    }
    
    private function onResult(e:ResultEvent):void
    {
      var shards:ArrayCollection = e.result.shards;
      _items.removeAll();
      for each (var shard:Shard in shards)
        addItem(shard);
      dispatchDataLoadedEvent();
    }
    
    public function getStats(_id:String, callback:Function):void
    {
      DB.instance.system.show(_id, function(e:ResultEvent):void {
        callback(e.result);
      });
    }
    
  }
  
}