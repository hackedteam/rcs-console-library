package it.ht.rcs.console.build.rest
{
  import it.ht.rcs.console.build.model.Exploit;
  import it.ht.rcs.console.build.model.ExploitParam;
  import it.ht.rcs.console.build.model.SymbianConf;
  import it.ht.rcs.console.build.model.Template;
  
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
      items.addItem(new Exploit({id: 'HT-2012-001', name: 'Microsoft Office Powerpoint 2010', version: 20120101, platform: 'windows', format: new ArrayCollection(["ppt"]), category: 'private', embed: true, params: new ExploitParam({file: 'Document'}), description: 'This is a test exploit for windows'}) );
      items.addItem(new Exploit({id: 'HT-2012-002', name: 'Adobe Acrobat Reader 10', version: 20120101, platform: 'windows', format: new ArrayCollection(["pdf"]), category: 'zeroday', embed: false, params: new ExploitParam({string: 'URL'}), description: 'This is a test exploit for windows'}) );
      items.addItem(new Exploit({id: 'HT-2012-003', name: 'Safari 5.1', version: 20120101, platform: 'osx', format: new ArrayCollection(["html"]), category: 'zeroday', embed: false, params: new ExploitParam({combo: new ArrayCollection(['First Option', 'Second Option'])}), description: 'This is a test exploit for OSX'}) );
      items.addItem(new Exploit({id: 'HT-2012-004', name: 'PDF < 4.3.3', version: 20120101, platform: 'ios', format: new ArrayCollection(["pdf"]), category: 'zeroday', embed: false, params: new ExploitParam({combo: new ArrayCollection(['First Option', 'Second Option'])}), description: 'This is a test exploit for iOS'}) );
      
      var event:ResultEvent = new ResultEvent("exploit.index", false, true, items);
      if (onResult != null) 
        onResult(event);
    }

    public function exploit_version(onResult:Function=null, onFault:Function=null):void
    {
      var event:ResultEvent = new ResultEvent("exploit.version", false, true, {version: "demo"});
      if (onResult != null) 
        onResult(event);
    }
    
    public function symbian_conf(conf:Object, onResult:Function=null, onFault:Function=null):void
    {
      
    }
    
    public function create_template(template:Template, onResult:Function=null, onFault:Function=null):void
    {
      
    }
    public function get_templates(onResult:Function=null, onFault:Function=null):void
    {
    
    }
    
    public function destroy_template(template:Template, onResult:Function=null, onFault:Function=null):void
    {
    
    }
    
  }

}
