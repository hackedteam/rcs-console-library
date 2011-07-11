package it.ht.rcs.console.monitor.rest
{
  import it.ht.rcs.console.monitor.model.License;
  import it.ht.rcs.console.monitor.model.LicenseBackdoors;
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
          backdoors: new LicenseBackdoors(
            {
              android: true,
              blackberry: true,
              desktop: 15,
              ios: false,
              linux: false,
              mobile: 15,
              osx: true,
              symbian: false,
              total: Infinity,
              windows: true,
              winmo: false
            }),
          collectors: new LicenseCollectors(
            {
              collectors: Infinity,
              anonymizers: 5
            }),
          correlation: false,
          ipa: 5,
          rmi: true,
          serial: 1234567890,
          type: 'reusable',
          users: 15
        });
      var event:ResultEvent = new ResultEvent("license.limit", false, true, limits);
      if (onResult != null) 
        onResult(event);  
    }
    
    public function count(onResult:Function=null, onFault:Function=null):void
    {
      var counters:LicenseCount = new LicenseCount(
        {
          backdoors: new LicenseBackdoors(
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
          ipa: 2,
          users: 10
        });
      var event:ResultEvent = new ResultEvent("license.count", false, true, counters);
      if (onResult != null) 
        onResult(event);  
    }
    
  }
  
}