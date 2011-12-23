package it.ht.rcs.console.controller
{
  import flash.events.Event;
  import flash.events.EventDispatcher;
  import flash.utils.getQualifiedClassName;
  
  import it.ht.rcs.console.events.DataLoadedEvent;
  import it.ht.rcs.console.events.RefreshEvent;
  import it.ht.rcs.console.events.SessionEvent;
  
  import mx.core.FlexGlobals;
  
  public class Manager extends EventDispatcher
  {
    
    protected var _classname:String;
    
    public function Manager()
    {
      _classname = flash.utils.getQualifiedClassName(this).split('::')[1];
      trace(_classname + ' (manager) -- Init');
       
      FlexGlobals.topLevelApplication.addEventListener(SessionEvent.LOGIN, onLogin);
      FlexGlobals.topLevelApplication.addEventListener(SessionEvent.BEFORE_LOGOUT, onBeforeLogout);
      FlexGlobals.topLevelApplication.addEventListener(SessionEvent.LOGOUT, onLogout);
    }
    
    /* OVERRIDE WHEN NEEDED */
    protected function onLogin(e:SessionEvent):void {}
    protected function onBeforeLogout(e:SessionEvent):void {}
    protected function onLogout(e:SessionEvent):void
    {
      trace(_classname + ' (manager) -- Logout');
      unlistenRefresh();
    }
    
    public function listenRefresh():void
    {
      trace(_classname + ' (manager) -- ListenRefresh');
      FlexGlobals.topLevelApplication.addEventListener(RefreshEvent.REFRESH, onRefresh);
    }
    
    public function unlistenRefresh():void
    {
      trace(_classname + ' (manager) -- UnlistenRefresh');
      FlexGlobals.topLevelApplication.removeEventListener(RefreshEvent.REFRESH, onRefresh);
    }
    
    private function onRefresh(e:Event=null):void
    {
      refresh();
    }
    
    public function refresh():void
    {
      trace(_classname + ' (manager) -- Refresh');
    }
    
    protected function dispatchDataLoadedEvent():void
    {
      dispatchEvent(new DataLoadedEvent(DataLoadedEvent.DATA_LOADED, this));
    }
    
  }
  
}