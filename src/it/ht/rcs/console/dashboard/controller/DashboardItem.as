package it.ht.rcs.console.dashboard.controller
{
  import it.ht.rcs.console.search.model.StatEvidence;
  
  import mx.collections.ArrayCollection;

  public class DashboardItem
  {
    [Bindable]
    public var _id:String;
    [Bindable]
    public var _kind:String;
    [Bindable]
    public var last_sync:int;
    [Bindable]
    public var name:String;
    [Bindable]
    public var evidence:ArrayCollection;
    [Bindable]
    public var totTot:Number;
    [Bindable]
    public var totSync:Number;
    
    public var baseline:StatEvidence;
    public var lastSyncBaseline:int;
    
  }
}