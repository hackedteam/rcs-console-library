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
    
    [Bindable] public var totTot:Number;
    [Bindable] public var totSync:Number;
    
    public var baseline:Stat;
  }
}