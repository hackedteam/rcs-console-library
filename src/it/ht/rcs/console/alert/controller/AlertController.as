package it.ht.rcs.console.alert.controller
{
  import it.ht.rcs.console.controller.Manager;
  import it.ht.rcs.console.search.controller.SearchManager;
  import it.ht.rcs.console.search.model.SearchItem;
  
  import mx.collections.ISort;
  import mx.collections.ListCollectionView;
  
  public class AlertController extends Manager
  {
    
    /* singleton */
    private static var _instance:AlertController = new AlertController();
    public static function get instance():AlertController { return _instance; } 
    
    public function AlertController()
    {
      super();
    }
    
    override public function refresh():void
    {
      AlertManager.instance.refresh();
    }
    
    public function getView(sort:ISort=null, filterFunction:Function=null):ListCollectionView
    {
      return AlertManager.instance.getView(sort, filterFunction);
    }
    
    public function addAlert(alert:Object, callback:Function):void
    {     
      AlertManager.instance.addAlert(alert, callback);
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
  
    public function getItemName(id:String):String
    {
      var item:SearchItem = SearchManager.instance.getItem(id);
      if (item != null)
        return item.name;
      
      return id;
    }

    public function getOperationName(id:String):String
    {
      return getItemName(id);
    }
    
    public function getTargetName(id:String):String
    {
      return getItemName(id);
    }
    
    public function getAgentName(id:String):String
    {
      return getItemName(id);
    }
  }
}