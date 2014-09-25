package it.ht.rcs.console.build.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.build.model.Exploit;
  import it.ht.rcs.console.build.model.SymbianConf;
  import it.ht.rcs.console.build.model.Template;
  import it.ht.rcs.console.controller.ItemManager;
  
  import mx.collections.ArrayCollection;
  import mx.collections.ISort;
  import mx.collections.ListCollectionView;
  import mx.collections.Sort;
  import mx.collections.SortField;
  import mx.rpc.events.ResultEvent;
  
  public class BuildManager extends ItemManager
  {
    
    /* singleton */
    private static var _instance:BuildManager = new BuildManager();
    public static function get instance():BuildManager { return _instance; }
    
    //private var _formats:ArrayCollection = new ArrayCollection();
    private var _formats:Object = {
      windows: new ArrayCollection(),
      osx: new ArrayCollection(),
      android: new ArrayCollection(),
      blackberry: new ArrayCollection(),
      ios: new ArrayCollection(),
      symbian: new ArrayCollection()
    };
    
    [Bindable]
    public var symbianConf:SymbianConf;
    
    public function BuildManager()
    {
      super();
    }
    
    override public function refresh():void
    {
      super.refresh();
      DB.instance.build.exploit_all(onResult);
    }
    
    private function onResult(e:ResultEvent):void
    {
      var items:ArrayCollection = e.result as ArrayCollection;
      _items.removeAll();
      
      for (var key:String in _formats) {
        _formats[key].removeAll();
        _formats[key].addItem('*');
      }
     
      items.source.forEach(function(element:*, index:int, arr:Array):void {
        addItem(element);
        var exploit:Exploit = element as Exploit
        exploit.format.source.forEach(function(f:*, i:int, a:Array):void {
          // remove duplicates
          if (_formats[exploit.platform].source.indexOf(f) == -1)
            _formats[exploit.platform].addItem(f);
        });
      });
      dispatchDataLoadedEvent();
    }
    
    public function getExploitView(sortCriteria:ISort=null, filterFunction:Function=null):ListCollectionView
    {
      var sort:Sort = new Sort();
      sort.fields = [new SortField('name', true, false, false)];
      return super.getView(sort, filterFunction);
    }
    
    public function getVersion(onResult:Function=null, onFault:Function=null):void
    {
      DB.instance.build.exploit_version(onResult,onFault);
    }
    
    public function getSymbianConf(conf:Object=null,onResult:Function=null, onFault:Function=null):void
    {
      DB.instance.build.symbian_conf(conf,onResult,onFault);
    }
    
    public function addTemplate(template:Template=null,onResult:Function=null, onFault:Function=null):void
    {
      DB.instance.build.create_template(template,onResult,onFault);
    }
    
    public function getTemplates(onResult:Function=null, onFault:Function=null):void
    {
      DB.instance.build.get_templates(onResult,onFault);
    }
    
    public function destroyTemplate(template:Template, onResult:Function=null, onFault:Function=null):void
    {
      DB.instance.build.destroy_template(template, onResult, onFault);
    }
    
    public function getFormats(platform:String):ArrayCollection
    {
      return _formats[platform];
    }
    
  }
}