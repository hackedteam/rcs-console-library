package it.ht.rcs.console.alert.controller
{
  import flash.events.Event;
  
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.alert.model.Alert;
  import it.ht.rcs.console.alert.model.AlertLog;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.events.RefreshEvent;
  import it.ht.rcs.console.events.SessionEvent;
  import it.ht.rcs.console.push.PushController;
  import it.ht.rcs.console.push.PushEvent;
  
  import mx.collections.ArrayCollection;
  import mx.core.FlexGlobals;
  import mx.events.CollectionEvent;
  import mx.events.PropertyChangeEvent;
  import mx.rpc.events.ResultEvent;

  public class AlertManager extends ItemManager
  {

    public function AlertManager()
    {
      PushController.instance.addEventListener(PushEvent.ALERT, onAlertPush);
      super(Alert);
    }

    private static var _instance:AlertManager = new AlertManager();

    public static function get instance():AlertManager
    {
      return _instance;
    }

  /*  public function startAutorefresh():void
    {
      PushController.instance.addEventListener(PushEvent.ALERT, onAutorefresh);
      refresh();
    }*/

    private function onAlertPush(e:PushEvent):void
    {
      //no data action here (is always 'create')
      var a:Alert;
     var log:AlertLog


     switch (e.data.action) {
        case PushEvent.CREATE:
          trace("alert creation");
          a = getItem(e.data.id);
          _items.removeEventListener(CollectionEvent.COLLECTION_CHANGE, onItemsChange);
          log=new AlertLog(e.data.changes)
          if(!a.logs)
            a.logs=new ArrayCollection()    
          a.logs.addItem(log);
          _items.addEventListener(CollectionEvent.COLLECTION_CHANGE, onItemsChange);
          break;

        case PushEvent.MODIFY:
          trace("alert update");
          a = getItem(e.data.id);
         if(!a.logs)
           return
          var logs:ArrayCollection=a.logs as ArrayCollection;
          
          log=getLog(a,e.data.changes._id)
          log.evidence=e.data.changes.evidence
          log.entities=e.data.changes.entities
          log.time=e.data.changes.time;
          log.path=e.data.changes.path;
          break;

        case PushEvent.DESTROY:
          trace("alert deletion");
          break;
     }

    }
    
    private function getLog(a:Alert, id:String):AlertLog
    {
      var log:AlertLog;
      for(var i:int=0;i<a.logs.length;i++)
      {
        log=a.logs[i] as AlertLog
        if(log._id==id)
          break;
      }
      return log;
    }

    public function stopAutorefresh():void
    {
      PushController.instance.removeEventListener(PushEvent.ALERT, onAutorefresh);
    }

    public function onAutorefresh(e:*):void
    {
      refresh();
    }

    override public function refresh():void
    {
      super.refresh();
      DB.instance.alert.all(onResult);
    }

    private function onResult(e:ResultEvent):void
    {
      clear();

      for each (var item:* in e.result.source)
        addItem(item);
      dispatchDataLoadedEvent();
    }

    override protected function onItemRemove(o:*):void
    {
      DB.instance.alert.destroy(o);
    }

    override protected function onItemUpdate(event:*):void
    {
      var property:Object = new Object();
      property[event.property] = event.newValue is ArrayCollection ? event.newValue.source : event.newValue;
      DB.instance.alert.update(event.source, property);
    }

    public function addAlert(alert:Object, callback:Function):void
    {
      DB.instance.alert.create(alert, function(e:ResultEvent):void
      {
        var a:Alert = e.result as Alert;
        addItem(a);
        callback(a);
      });
    }

    override protected function onLogout(e:SessionEvent):void
    {
      super.onLogout(e);
      stopCounters();
    }

    private var _alertCounter:Object = {value: NaN, style: 'info'};

    public function startCounters():void
    {
      FlexGlobals.topLevelApplication.addEventListener(RefreshEvent.REFRESH, onAlertEvent);
      PushController.instance.addEventListener(PushEvent.ALERT, onAlertEvent);

      /* the first refresh */
      onAlertEvent(null);
    }

    public function stopCounters():void
    {
      FlexGlobals.topLevelApplication.removeEventListener(RefreshEvent.REFRESH, onAlertEvent);
      PushController.instance.removeEventListener(PushEvent.ALERT, onAlertEvent);
    }

    public function refreshCounters():void
    {
      onAlertEvent(null);
    }

    private function onAlertEvent(e:Event):void
    {
      DB.instance.alert.counters(onAlertCounters);
    }

    private function onAlertCounters(e:ResultEvent):void
    {
      _alertCounter.value = e.result as int;
      _alertCounter.style = 'info';
      dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, 'alertCounter', null, _alertCounter));
    }

    [Bindable(event = 'propertyChange')]
    public function get alertCounter():Object
    {
      return _alertCounter;
    }

  }

}
