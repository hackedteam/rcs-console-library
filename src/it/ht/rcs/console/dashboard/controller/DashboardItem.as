package it.ht.rcs.console.dashboard.controller
{
  import it.ht.rcs.console.search.model.Stat;
  
  import mx.collections.ArrayCollection;

  public class DashboardItem
  {
    public var _id:String;
    public var _kind:String;

    [Bindable] public var name:String;
    
    [Bindable] public var modules:ArrayCollection;
    [Bindable] public var targets:ArrayCollection;
    
    [Bindable] public var totSync:Number = 0;
    [Bindable] public var totTot:Number = 0;
    
    [Bindable] public var lastSync:Number = 0;
    
    [Bindable] public var baseline:Stat;
    public var targetBaselines:Object = {};
  }
}