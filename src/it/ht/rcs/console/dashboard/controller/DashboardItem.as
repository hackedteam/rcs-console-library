package it.ht.rcs.console.dashboard.controller
{
  import it.ht.rcs.console.search.model.Stat;
  
  import mx.collections.ArrayCollection;

  public class DashboardItem
  {
    [Bindable] public var _id:String;
    [Bindable] public var _kind:String;

    [Bindable] public var name:String;
    [Bindable] public var desc:String;

    [Bindable] public var type:String;
    [Bindable] public var platform:String;

    [Bindable] public var status:String;
    [Bindable] public var demo:Boolean;
    
    [Bindable] public var level:String;
    
    [Bindable] public var modules:ArrayCollection;
    [Bindable] public var targets:ArrayCollection;
    
    [Bindable] public var totSync:Number = 0;
    [Bindable] public var totTot:Number = 0;
    
    [Bindable] public var lastSync:Number = 0;
    [Bindable] public var lastSyncStatus:Number = 0;
    
    [Bindable] public var baseline:Stat;
    public var targetBaselines:Object = {};
  }
}