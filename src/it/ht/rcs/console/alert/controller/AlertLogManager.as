package it.ht.rcs.console.alert.controller
{
  import flash.events.Event;
  import flash.events.TimerEvent;
  import flash.utils.Timer;
  
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.alert.model.Alert;
  import it.ht.rcs.console.controller.SubManager;
  
  import mx.collections.ArrayCollection;
  import mx.core.FlexGlobals;
  import mx.rpc.events.ResultEvent;
  
  public class AlertLogManager extends SubManager
  {
    
    public function AlertLogManager(alert:Alert, data:ArrayCollection)
    {
      super(alert, data);
    }
    
    override protected function onItemRemove(o:*):void
    { 
      DB.instance.alert.destroy_log(_owner, o);
    }
    
    override protected function onReset():void
    {
      DB.instance.alert.destroy_all_logs(_owner);
    }
    
  }
}