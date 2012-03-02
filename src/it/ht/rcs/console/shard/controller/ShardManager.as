package it.ht.rcs.console.shard.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.shard.model.Shard;
  
  import mx.rpc.events.ResultEvent;
  
  public class ShardManager extends ItemManager
  {
    
    private static var _instance:ShardManager = new ShardManager();
    public static function get instance():ShardManager { return _instance; }
    
    override public function refresh():void
    {
      super.refresh();
      DB.instance.system.all(onResult);
    }
    
    private function onResult(e:ResultEvent):void
    {
      clear();
      for each (var shard:Shard in e.result.shards)
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