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
    protected function onLogout(e:SessionEvent):void { stop(); }
    
    public function start():void
    {
      /* react to the global refresh event */
      listenRefresh();
      /* retrieve the data on startup */
      refresh();
    }
    
    public function stop():void
    {
      /* after stop, we don't want to refresh anymore */
      unlistenRefresh();
    }
    
    private function listenRefresh():void
    {
      trace(_classname + ' (manager) -- ListenRefresh');
      /* react to the global refresh event */
      FlexGlobals.topLevelApplication.addEventListener(RefreshEvent.REFRESH, onRefresh);
    }
    
    private function unlistenRefresh():void
    {
      trace(_classname + ' (manager) -- UnlistenRefresh');
      /* after stop, we don't want to refresh anymore */
      FlexGlobals.topLevelApplication.removeEventListener(RefreshEvent.REFRESH, onRefresh);
    }
    
    public function refresh():void
    {
      trace(_classname + ' (manager) -- Refresh');
    }
    
    protected function onRefresh(e:Event=null):void
    {
      trace(_classname + ' (manager) -- Refresh');
      refresh();
    }
    
    protected function dispatchDataLoadedEvent():void
    {
      dispatchEvent(new DataLoadedEvent(DataLoadedEvent.DATA_LOADED, this));
    }
    
//    protected function onRefresh(e:RefreshEvent):void
//    {
//      trace(_classname + ' (manager) -- Refresh');
//      /* get the new items from the DB, override this function */
//    }
    
  }
  
}