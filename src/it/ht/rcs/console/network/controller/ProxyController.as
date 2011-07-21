package it.ht.rcs.console.network.controller
{
  import it.ht.rcs.console.controller.Manager;
  import it.ht.rcs.console.events.RefreshEvent;
  
  import mx.collections.ArrayCollection;
  import mx.collections.ISort;
  import mx.collections.ListCollectionView;
  
  public class ProxyController extends Manager
  {
    
    /* singleton */
    private static var _instance:ProxyController = new ProxyController();
    public static function get instance():ProxyController { return _instance; } 
    
    public function ProxyController()
    {
      super();
    }
    
    override protected function onRefresh(e:RefreshEvent):void
    {
      ProxyManager.instance.refresh();
      //TargetManager.instance.refresh();
    }
    
    public function getView(sortCriteria:ISort=null, filterFunction:Function=null):ListCollectionView
    {
      return ProxyManager.instance.getView();
    }
    
    public function addProxy(callback:Function):void
    {
      ProxyManager.instance.addProxy(callback);
    }
    
    public function removeItem(o:Object):void
    {
      ProxyManager.instance.removeItem(o);
    }
    
    public function getTargetList():ListCollectionView
    {
      // TargetManager.getView();
      return new ListCollectionView(new ArrayCollection(['Target 1', 'Target 2']));
    }
    
  }
  
}