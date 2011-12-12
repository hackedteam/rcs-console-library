package it.ht.rcs.console.build.controller
{
  import it.ht.rcs.console.DB;
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
      items.source.forEach(function(element:*, index:int, arr:Array):void {
        addItem(element);
      });
      dispatchDataLoadedEvent();
    }
    
    public function getExploitView(sortCriteria:ISort=null, filterFunction:Function=null):ListCollectionView
    {
      var sort:Sort = new Sort();
      sort.fields = [new SortField('id', true, true, false)];
      return super.getView(sort, filterFunction);
    }
    
  }
}