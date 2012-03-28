package it.ht.rcs.console.push
{
  import flash.events.EventDispatcher;
  import flash.events.IEventDispatcher;
  
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.events.SessionEvent;
  
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
  }
}