package it.ht.rcs.console.monitor.rest
{
  import com.adobe.serialization.json.JSON;
  
  import mx.rpc.events.ResultEvent;

  public class DBLicenseDemo implements IDBLicense
  {
    public function DBLicenseDemo()
    {
    }
    
    public function limit(onResult:Function=null, onFault:Function=null):void
    {
      var limits:Object = {"type":"reusable",
        "serial":1234567890,
        "users":15,
        "backdoors":{"total":Infinity,"desktop":15,"mobile":15,"windows":true,"macos":true,"linux":false,"winmo":false,"iphone":false,"blackberry":true,"symbian":false,"android":true},
        "alerting":true,
        "correlation":false,
        "rmi":true,
        "ipa":5,
        "collectors":{"collectors":Infinity,"anonymizers":5}};
      
      var event:ResultEvent = new ResultEvent("license.limit", false, true, JSON.encode(limits));
      if (onResult != null) 
        onResult(event);  
    }
    
    public function count(onResult:Function=null, onFault:Function=null):void
    {
      var counters:Object = {"users":10,
        "backdoors":{"total":5,"desktop":3,"mobile":2},
        "collectors":{"collectors":1,"anonymizers":1},
        "ipa":2};
      var event:ResultEvent = new ResultEvent("license.count", false, true, JSON.encode(counters));
      if (onResult != null) 
        onResult(event);  
    }
  }
}