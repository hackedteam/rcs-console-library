package it.ht.rcs.console.dashboard.controller
{
  import flash.events.EventDispatcher;
  
  import mx.events.PropertyChangeEvent;

  public class TargetInfo extends EventDispatcher
  {
    
    private var __id:String;
    private var _name:String;
    private var _tot:Number = 0;
    private var _sync:Number = 0;
    
    [Bindable(event="propertyChange")]
    public function get _id() : String
    {
      return __id;
    }
    
    public function set _id(value:String) : void
    {
      var oldValue:String = __id;
      if (oldValue !== value)
      {
        __id = value;
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_id", oldValue, __id));
      }
    }
    
    [Bindable(event="propertyChange")]
    public function get name() : String
    {
      return _name;
    }
    
    public function set name(value:String) : void
    {
      var oldValue:String = _name;
      if (oldValue !== value)
      {
        _name = value;
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "name", oldValue, _name));
      }
    }
    
    [Bindable(event="propertyChange")]
    public function get tot() : Number
    {
      return _tot;
    }
    
    public function set tot(value:Number) : void
    {
      var oldValue:Number = _tot;
      if (oldValue !== value)
      {
        _tot = value;
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tot", oldValue, _tot));
      }
    }
    
    [Bindable(event="propertyChange")]
    public function get sync() : Number
    {
      return _sync;
    }
    
    public function set sync(value:Number) : void
    {
      var oldValue:Number = _sync;
      if (oldValue !== value)
      {
        _sync = value;
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sync", oldValue, _sync));
      }
    }
    
  }
}