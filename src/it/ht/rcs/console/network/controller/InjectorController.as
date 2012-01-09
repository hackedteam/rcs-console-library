package it.ht.rcs.console.network.controller
{
  import it.ht.rcs.console.controller.Manager;
  import it.ht.rcs.console.events.RefreshEvent;
  
  import mx.collections.ArrayCollection;
  import mx.collections.ISort;
  import mx.collections.ListCollectionView;
  
  public class InjectorController extends Manager
  {
    
    /* singleton */
    private static var _instance:InjectorController = new InjectorController();
    public static function get instance():InjectorController { return _instance; } 
    
    public function InjectorController()
    {
      super();
    }
    
    override public function refresh():void
    {
      InjectorManager.instance.refresh();
      //TargetManager.instance.refresh();
    }
    
    public function getView(sortCriteria:ISort=null, filterFunction:Function=null):ListCollectionView
    {
      return InjectorManager.instance.getView();
    }
    
    public function addProxy(callback:Function):void
    {
      InjectorManager.instance.addProxy(callback);
    }
    
    public function removeItem(o:Object):void
    {
      InjectorManager.instance.removeItem(o);
    }
    
    public function getTargetList():ListCollectionView
    {
      // TargetManager.getView();
      return new ListCollectionView(new ArrayCollection(['Target 1', 'Target 2']));
    }
    
  }
  
}