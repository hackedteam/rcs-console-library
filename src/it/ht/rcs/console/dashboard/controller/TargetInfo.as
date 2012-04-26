package it.ht.rcs.console.dashboard.controller
{
  import flash.events.EventDispatcher;
  
  import mx.events.PropertyChangeEvent;

  public class TargetInfo extends EventDispatcher
  {
    
    [Bindable] public var _id:String;
    [Bindable] public var name:String;
    [Bindable] public var tot:Number = 0;
    [Bindable] public var sync:Number = 0;
    
  }
}