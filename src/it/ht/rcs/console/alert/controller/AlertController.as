package it.ht.rcs.console.alert.controller
{
  
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.alert.model.Alert;
  import it.ht.rcs.console.backdoor.controller.BackdoorManager;
  import it.ht.rcs.console.backdoor.model.Backdoor;
  import it.ht.rcs.console.controller.Manager;
  import it.ht.rcs.console.events.RefreshEvent;
  import it.ht.rcs.console.operation.controller.OperationManager;
  import it.ht.rcs.console.operation.model.Operation;
  import it.ht.rcs.console.target.controller.TargetManager;
  import it.ht.rcs.console.target.model.Target;
  
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
      OperationManager.instance.refresh();
      TargetManager.instance.refresh();
      BackdoorManager.instance.refresh();
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
      var op:Operation = OperationManager.instance.getItem(id);
      if (op != null)
        return op.name;
      
      return id;
    }
    
    public function getTargetName(id:String):String
    {
      var trg:Target = TargetManager.instance.getItem(id);
      if (trg != null)
        return trg.name;
      
      return id;
    }
    
    public function getBackdoorName(id:String):String
    {
      var bck:Backdoor = BackdoorManager.instance.getItem(id);
      if (bck != null)
        return bck.name;
      
      return id;
    }
  }
}