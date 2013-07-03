package it.ht.rcs.console.update.rest
{
  import it.ht.rcs.console.update.model.Core;
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
      var event:ResultEvent = new ResultEvent("update.index", false, true, new UpdateVersions({console: "-1", db: "8.4.0"}));
      if (onResult != null) 
        onResult(event);
    }

    public function core_all(onResult:Function=null, onFault:Function=null):void
    {
      var event:ResultEvent = new ResultEvent("core.index", false, true, new ArrayCollection([
          new Core({name: 'windows', version: '2013010101'}),
          new Core({name: 'osx', version: '2013010101'}),
          new Core({name: 'android', version: '2013010101'}),
          new Core({name: 'blackberry', version: '2013010101'}),
          new Core({name: 'ios', version: '2013010101'}),
          new Core({name: 'linux', version: '2013010101'}),
          new Core({name: 'symbian', version: '2013010101'}),
          new Core({name: 'winmo', version: '2013010101'})
        ]));
      if (onResult != null) 
        onResult(event);
    }
  }
}