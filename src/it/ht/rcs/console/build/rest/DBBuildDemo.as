package it.ht.rcs.console.build.rest
{
  import it.ht.rcs.console.build.model.Exploit;
  import it.ht.rcs.console.build.model.ExploitParam;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;

  public class DBBuildDemo implements IDBBuild
  {
    public function DBBuildDemo()
    {
    }
    
    public function exploit_all(onResult:Function=null, onFault:Function=null):void
    {
      var items:ArrayCollection = new ArrayCollection();
      items.addItem(new Exploit({id: 'HT-2012-001', name: 'Microsoft Office Powerpoint 2010', version: 20120101, platform: 'windows', category: 'private', embed: true, params: new ExploitParam({file: 'Document'}), description: 'This is a test exploit for windows'}) );
      items.addItem(new Exploit({id: 'HT-2012-002', name: 'Adobe Acrobat Reader 10', version: 20120101, platform: 'windows', category: 'zeroday', embed: false, params: new ExploitParam({string: 'URL'}), description: 'This is a test exploit for windows'}) );
      items.addItem(new Exploit({id: 'HT-2012-003', name: 'Safari 5.1', version: 20120101, platform: 'osx', category: 'zeroday', embed: false, params: new ExploitParam({combo: {first: 'First Option', secodn: 'Second Option'}}), description: 'This is a test exploit for OSX'}) );
      items.addItem(new Exploit({id: 'HT-2012-004', name: 'PDF < 4.3.3', version: 20120101, platform: 'ios', category: 'zeroday', embed: false, params: new ExploitParam({combo: {first: 'First Option', secodn: 'Second Option'}}), description: 'This is a test exploit for iOS'}) );
      
      var event:ResultEvent = new ResultEvent("exploit.index", false, true, items);
      if (onResult != null) 
        onResult(event);
    }
    
  }

}
