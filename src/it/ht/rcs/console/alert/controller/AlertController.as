package it.ht.rcs.console.alert.controller
{
  
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.alert.model.Alert;
  import it.ht.rcs.console.controller.Manager;
  import it.ht.rcs.console.events.RefreshEvent;
  
  import mx.collections.ISort;
  import mx.collections.ListCollectionView;
  import mx.rpc.events.ResultEvent;
  
  public class AlertController extends Manager
  {
    
    /* singleton */
    private static var _instance:AlertController = new AlertController();
    public static function get instance():AlertController { return _instance; } 
    
    public function AlertController()
    {
      super();
    }
    
    override protected function onRefresh(e:RefreshEvent):void
    {
      AlertManager.instance.refresh();
      //ItemManager.instance.refresh();
    }
    
    public function getView(sortCriteria:ISort=null, filterFunction:Function=null):ListCollectionView
    {
      return AlertManager.instance.getView();
    }
    
    public function newAlert(callback:Function):void
    {     
      AlertManager.instance.newAlert(callback);
    }
    
    public function removeItem(o:Object):void
    {
      AlertManager.instance.removeItem(o);
    }
    
    public function start_counters():void
    {
      AlertManager.instance.start_counters();
    }
    
    public function stop_counters():void
    {
      AlertManager.instance.stop_counters();
    }
  
    public function getOperationName(id:String):String
    {
      return "operation"
    }
    
    public function getTargetName(id:String):String
    {
      return "target"
    }
    
    public function getBackdoorName(id:String):String
    {
      return "backdoor"
    }
  }
}