package it.ht.rcs.console.push
{
  import flash.events.EventDispatcher;
  import flash.events.IEventDispatcher;
  
  import it.ht.rcs.console.events.SessionEvent;
  
  import mx.core.FlexGlobals;
  
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
    }
    
    protected function onError(event:EMWebSocketEvent):void {
      trace("something went wrong");
    }

    protected function onClose(event:EMWebSocketEvent):void {
      trace("connection closed");
    }
    
    protected function onMessage(event:EMWebSocketEvent):void{
      trace('we got message: ' + event.data);
      
      //socket.send("from flex");
    }
    
    protected function onLogout(e:SessionEvent):void
    {
      socket.close();  
    }
    
  }
}