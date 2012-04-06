package it.ht.rcs.console.push
{
  import flash.events.Event;
  import flash.events.EventDispatcher;
  import flash.events.IEventDispatcher;
  
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.events.SessionEvent;
  import it.ht.rcs.console.utils.AlertPopUp;
  
  import mx.core.FlexGlobals;
  import mx.rpc.Fault;
  import mx.rpc.events.FaultEvent;
  
  public class PushController extends EventDispatcher
  {
    [Bindable]
    protected var socket:EMWebSocket;
    
    /* singleton */
    private static var _instance:PushController = new PushController();
    public static function get instance():PushController { return _instance; }
    
    
    public function PushController(target:IEventDispatcher=null)
    {
      super(target);
    }
    
    public function connect(host:String, port:int):void
    {
      socket = new EMWebSocket("wss://" + host + ":" + port.toString() + "/");
      socket.addEventListener(EMWebSocketEvent.CONNECT, onConnect);
      socket.addEventListener(EMWebSocketEvent.CLOSE, onClose);
      socket.addEventListener(EMWebSocketEvent.MESSAGE, onMessage);
      socket.addEventListener(EMWebSocketEvent.IO_ERROR, onError);
      socket.addEventListener(EMWebSocketEvent.CONNECT_ERROR, onErrorConnect);
      socket.addEventListener(EMWebSocketEvent.SECURITY_ERROR, onError);
      
      FlexGlobals.topLevelApplication.addEventListener(SessionEvent.LOGOUT, onLogout);
    }
      
    protected function onConnect(event:EMWebSocketEvent):void {
      // on connection we send our cookie to link the websocket to the currentSession in the db
      socket.send(JSON.stringify({type: 'auth', cookie: Console.currentSession.cookie}));
    }
    
    protected function onErrorConnect(event:EMWebSocketEvent):void {
      trace("Cannot connect");
      
      var f:Fault = new Fault("connect", event.data);
      var e:FaultEvent = new FaultEvent("ws", false, false, f);
      DB.notifier.fault(e);
    }
    
    protected function onError(event:EMWebSocketEvent):void {
      trace("something went wrong");
      
      var f:Fault = new Fault("error", event.data);
      var e:FaultEvent = new FaultEvent("ws", false, false, f);
      DB.notifier.fault(e);
    }

    protected function onClose(event:EMWebSocketEvent):void {
      trace("connection closed");
      var f:Fault = new Fault("error", event.data);
      var e:FaultEvent = new FaultEvent("ws", false, false, f);
      DB.notifier.fault(e);
    }
    
    protected function onLogout(e:SessionEvent):void
    {
      socket.close();  
    }
       
    protected function onMessage(event:EMWebSocketEvent):void{
      trace('we got message: ' + event.data);
      
      var message:Object = JSON.parse(event.data);
      
      switch (message['type']) {
        case 'auth':
          onAuth(message);
          break;
        case 'ping':
          onPing();
          break;
        default:
          handleEvent(message);
          break;
      }
    }
    
    protected function onAuth(message:Object):void
    {
      /* invalid auth */
      if (message['result'] != 'granted') {
        var f:Fault = new Fault("auth", "invalid auth");
        var e:FaultEvent = new FaultEvent("ws", false, false, f);
        DB.notifier.fault(e);
      }          
    }
    
    protected function onPing():void
    {
      send({type: 'pong'});
    }
    
    public function send(message:Object):void
    {
      var encoded:String = JSON.stringify(message);
      trace('sent message: ' + encoded);
      socket.send(encoded);
    }
    
    private function handleEvent(message:Object):void
    {
      var event:PushEvent; 
      
      switch (message['type']) {
        case 'monitor':
          trace('PushManager: dispatching MONITOR event');
          event = new PushEvent(PushEvent.MONITOR);
          break;
        case 'alert':
          trace('PushManager: dispatching ALERT event');
          event = new PushEvent(PushEvent.ALERT);   
          break;
        case 'operation':
          trace('PushManager: dispatching OPERATION event');
          event = new PushEvent(PushEvent.OPERATION);
          event.data = message;
          break;
        case 'target':
          trace('PushManager: dispatching TARGET event');
          event = new PushEvent(PushEvent.TARGET);
          event.data = message;
          break;
        case 'agent':
          trace('PushManager: dispatching AGENT event');
          event = new PushEvent(PushEvent.AGENT);
          event.data = message;
          break;
        case 'message':
          trace('PushManager: MESSAGE event');
          event = new PushEvent(PushEvent.AGENT);
          event.data = message;
          var from:String = "Message From: ";
          if (message['from'])
            from += message ['from'];
          // display the message
          AlertPopUp.show(message['text'], from);
          break;
        default:
          trace('PushManager: UNKNOWN event');
          event = new PushEvent(PushEvent.UNKNOWN);
          event.data = message;
          break;
      }
      
      dispatchEvent(event);
    }
    
  }
}