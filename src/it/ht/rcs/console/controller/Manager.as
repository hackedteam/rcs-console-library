package it.ht.rcs.console.controller
{
  import flash.events.Event;
  import flash.events.EventDispatcher;
  import flash.events.IEventDispatcher;
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
       
      FlexGlobals.topLevelApplication.addEventListener(SessionEvent.LOGGING_IN, onLoggingIn);
      FlexGlobals.topLevelApplication.addEventListener(SessionEvent.LOGGING_OUT, onLoggingOut);
      FlexGlobals.topLevelApplication.addEventListener(SessionEvent.FORCE_LOG_OUT, onForceLogOut);
    }
    
    protected function onLoggingIn(e:SessionEvent):void
    {
      trace(_classname + ' (manager) -- Logging In');
    }
    
    protected function onLoggingOut(e:SessionEvent):void
    {
      trace(_classname + ' (manager) -- Logging Out');
    }
    
    protected function onForceLogOut(e:SessionEvent):void
    {
      trace(_classname + ' (manager) -- Force Log Out');
    }
    
    public function start():void
    {
      /* react to the global refresh event */
      listenRefresh();
      /* retrieve the data on startup */
      refresh(null);
    }
    
    public function stop():void
    {
      /* after stop, we don't want to refresh anymore */
      unlistenRefresh();
    }
    
    public function listenRefresh():void
    {
      trace(_classname + ' (manager) -- ListenRefresh');
      /* react to the global refresh event */
      FlexGlobals.topLevelApplication.addEventListener(RefreshEvent.REFRESH, onRefresh);
    }
    
    public function unlistenRefresh():void
    {
      trace(_classname + ' (manager) -- UnlistenRefresh');
      /* after stop, we don't want to refresh anymore */
      FlexGlobals.topLevelApplication.removeEventListener(RefreshEvent.REFRESH, onRefresh);
    }
    
    public function refresh(e:Event=null):void
    {
      trace(_classname + ' (manager) -- Explicit Refresh');
      onRefresh(null);
    }
    
    protected function dispatchDataLoadedEvent():void
    {
      dispatchEvent(new DataLoadedEvent(DataLoadedEvent.DATA_LOADED, this));
    }
    
    protected function onRefresh(e:RefreshEvent):void
    {
      trace(_classname + ' (manager) -- Refresh');
      /* get the new items from the DB, override this function */
    }
    
  }
  
}