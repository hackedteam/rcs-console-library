package it.ht.rcs.console.push 
{
  import flash.events.Event;
  import flash.events.EventDispatcher;
  import flash.events.IOErrorEvent;
  import flash.events.SecurityErrorEvent;

  public class EMWebSocket extends EventDispatcher implements IWebSocketWrapper
  {
    protected var webSocket:WebSocket;
    protected var socketURL:String;
    
    public function EMWebSocket(url:String)
    {
      webSocket = new WebSocket(this, url, null, null, 0, null);
      webSocket.addEventListener("event", onData);
      webSocket.addEventListener(Event.CLOSE, onClose);
      webSocket.addEventListener(Event.CONNECT, onConnect);
      webSocket.addEventListener(IOErrorEvent.IO_ERROR, onIoError);
      webSocket.addEventListener(SecurityErrorEvent.SECURITY_ERROR, onSecurityError);
    }
    
    public function getOrigin():String
    {
      return "http://localhost:8080";
    }
    
    public function getCallerHost():String
    {
      return null;
    }
    
    public function log(message:String):void
    {
      //trace("webSocketLog: " + message);
    }
    
    public function fatal(message:String):void
    {
      trace("webSocketFatal: " + message);
    }
    
    public function error(message:String):void
    {
      trace("webSocketError: " + message);
    }
    
    public function send(msg:Object, event:String = null,callback:Function = null):void{
      var messageId: String = "";
      
      webSocket.send(msg as String);
    }
    
    public function close():void
    {
      webSocket.close();
    }
    
    protected function onData(e:*):void{
      var event:Object = (e.target as WebSocket).receiveEvents();
      var data:Object = event[0];
      
      if ( data.type == "message" ){
        var msg:String = unescape(data.data);
        if (msg){
          var fem:EMWebSocketEvent = new EMWebSocketEvent(EMWebSocketEvent.MESSAGE);
          fem.data = msg;
          dispatchEvent(fem);
        }
      } else if (data.type == "open") {
        var feo:EMWebSocketEvent = new EMWebSocketEvent(EMWebSocketEvent.CONNECT);
        dispatchEvent(feo);
      } else if (data.type == "close"){
        var fec:EMWebSocketEvent = new EMWebSocketEvent(EMWebSocketEvent.CLOSE);
        dispatchEvent(fec);
      } else {
        log("We got a data message that is not 'message': " + data.type);
      }
    }
    
    protected function onClose(event:Event):void{
      var fe:EMWebSocketEvent = new EMWebSocketEvent(EMWebSocketEvent.CLOSE);
      dispatchEvent(fe);
    }
    protected function onConnect(event:Event):void{
      var fe:EMWebSocketEvent = new EMWebSocketEvent(EMWebSocketEvent.CONNECT);
      dispatchEvent(fe);
    }
    protected function onIoError(event:Event):void{
      var fe:EMWebSocketEvent = new EMWebSocketEvent(EMWebSocketEvent.IO_ERROR);
      dispatchEvent(fe);
    }
    protected function onSecurityError(event:Event):void{
      var fe:EMWebSocketEvent = new EMWebSocketEvent(EMWebSocketEvent.SECURITY_ERROR);
      dispatchEvent(fe);
    }
        
  }
}