package it.ht.rcs.console.monitor.rest
{
  import it.ht.rcs.console.monitor.model.License;
  import it.ht.rcs.console.monitor.model.LicenseAgents;
  import it.ht.rcs.console.monitor.model.LicenseCollectors;
  import it.ht.rcs.console.monitor.model.LicenseCount;
  
  import mx.rpc.events.ResultEvent;

  public class DBLicenseDemo implements IDBLicense
  {
    
    public function limit(onResult:Function=null, onFault:Function=null):void
    {
      var limits:License = new License(
        {
          alerting: true,
          agents: new LicenseAgents(
            {
              android: [true, true],
              blackberry: [true, true],
              desktop: 15,
              ios: [true, true],
              linux: [false, false],
              mobile: 15,
              osx: [true, true],
              symbian: [true, true],
              total: null,
              windows: [true, true],
              winmo: [false, false]
            }),
          collectors: new LicenseCollectors(
            {
              collectors: null,
              anonymizers: 5
            }),
          correlation: false,
          forwarders: true,
          nia: 5,
          rmi: true,
          serial: 1234567890,
          type: 'reusable',
          users: 15,
          shards: 1
        });
      var event:ResultEvent = new ResultEvent("license.limit", false, true, limits);
      if (onResult != null) 
        onResult(event);  
    }
    
    public function count(onResult:Function=null, onFault:Function=null):void
    {
      var counters:LicenseCount = new LicenseCount(
        {
          agents: new LicenseAgents(
            {
              total: 5,
              desktop: 3,
              mobile: 2
            }),
          collectors: new LicenseCollectors(
            {
              collectors: 1,
              anonymizers: 1
            }),
          nia: 2,
          users: 10,
          shards: 1
        });
      var event:ResultEvent = new ResultEvent("license.count", false, true, counters);
      if (onResult != null) 
        onResult(event);  
    }
    
  }
  
}