package it.ht.rcs.console.monitor.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.controller.Manager;
  import it.ht.rcs.console.monitor.model.CurrMaxObject;
  import it.ht.rcs.console.monitor.model.License;
  import it.ht.rcs.console.monitor.model.LicenseCount;
  
  import mx.rpc.events.ResultEvent;
  
  [Bindable]
  public class LicenseManager extends Manager
  {
    public var type:String = "reusable";
    public var serial:String = "off";
    public var users:CurrMaxObject = new CurrMaxObject("0", "0");
    public var expiry:int;
    public var maintenance:int;
    
    public var agent_total:CurrMaxObject = new CurrMaxObject("0", "0");
    public var agent_desktop:CurrMaxObject = new CurrMaxObject("0", "0");
    public var agent_mobile:CurrMaxObject = new CurrMaxObject("0", "0");
    
    public var agent_linux:Boolean = false;
    public var agent_osx:Boolean = false;
    public var agent_windows:Boolean = false;
    public var agent_android:Boolean = false;
    public var agent_blackberry:Boolean = false;
    public var agent_ios:Boolean = false;
    public var agent_symbian:Boolean = false;
    public var agent_winmo:Boolean = false;
    
    public var agent_linux_demo:Boolean = false;
    public var agent_osx_demo:Boolean = false;
    public var agent_windows_demo:Boolean = false;
    public var agent_android_demo:Boolean = false;
    public var agent_blackberry_demo:Boolean = false;
    public var agent_ios_demo:Boolean = false;
    public var agent_symbian_demo:Boolean = false;
    public var agent_winmo_demo:Boolean = false;
    
    public var collectors:CurrMaxObject = new CurrMaxObject("0", "0");
    public var anonymizers:CurrMaxObject = new CurrMaxObject("0", "0");
    
    public var alerting:Boolean = false;
    public var correlation:Boolean = false;
    public var connectors:Boolean = false;
    
    public var nia:CurrMaxObject = new CurrMaxObject("0", "0");
    public var nia_demo:Boolean = false;
    public var rmi:Boolean = false;
    public var rmi_demo:Boolean = false;
    
    public var shards:CurrMaxObject = new CurrMaxObject("0", "0");
    
    public var exploits:Boolean = false;
    public var deletion:Boolean = false;
    
    public var limits:License;
    
    /* singleton */
    private static var _instance:LicenseManager = new LicenseManager();
    public static function get instance():LicenseManager { return _instance; }
    
    public function LicenseManager()
    {
      super();
      /* always get new data upon startup */
      refresh();
    }
    
    override public function refresh():void
    {
      super.refresh();
      DB.instance.license.limit(onLoadLimit);
      DB.instance.license.count(onLoadCount);
    }
    
    private function onLoadLimit(e:ResultEvent):void
    {
      limits = e.result as License;
        
      type = limits['type'];
      serial = limits['serial'].toString();
      expiry = limits['expiry'];
      maintenance = limits['maintenance'];
      
      users.max = (limits['users'] == null) ? 'U' : limits['users'].toString();
      
      agent_total.max = (limits['agents']['total'] == null) ? 'U' : limits['agents']['total'].toString();
      agent_desktop.max = (limits['agents']['desktop'] == null) ? 'U' : limits['agents']['desktop'].toString();
      agent_mobile.max = (limits['agents']['mobile'] == null) ? 'U' : limits['agents']['mobile'].toString();
      
      agent_linux = limits['agents']['linux'][0];
      agent_osx = limits['agents']['osx'][0];
      agent_windows = limits['agents']['windows'][0];
      agent_android = limits['agents']['android'][0];
      agent_blackberry = limits['agents']['blackberry'][0];
      agent_ios = limits['agents']['ios'][0];
      agent_symbian = limits['agents']['symbian'][0];
      agent_winmo = limits['agents']['winmo'][0];
      
      agent_linux_demo = limits['agents']['linux'][1];
      agent_osx_demo = limits['agents']['osx'][1];
      agent_windows_demo = limits['agents']['windows'][1];
      agent_android_demo = limits['agents']['android'][1];
      agent_blackberry_demo = limits['agents']['blackberry'][1];
      agent_ios_demo = limits['agents']['ios'][1];
      agent_symbian_demo = limits['agents']['symbian'][1];
      agent_winmo_demo = limits['agents']['winmo'][1];
      
      collectors.max = (limits['collectors']['collectors'] == null) ? 'U' : limits['collectors']['collectors'].toString();
      anonymizers.max = (limits['collectors']['anonymizers'] == null) ? 'U' : limits['collectors']['anonymizers'].toString();
      
      alerting = limits['alerting'];
      correlation = limits['correlation'];
      connectors = limits['connectors'];
      
      nia.max = (limits['nia'][0] == null) ? 'U' : limits['nia'][0].toString();
      nia_demo = limits['nia'][1];
      rmi = limits['rmi'][0];
      rmi_demo = limits['rmi'][1];
      
      shards.max = (limits['shards'] == null) ? 'U' : limits['shards'].toString();
      
      exploits = limits['exploits'];
      deletion = limits['deletion'];
      
      dispatchDataLoadedEvent();
    }

    private function onLoadCount(e:ResultEvent):void
    {
      var current:LicenseCount = e.result as LicenseCount;
      
      users.curr = current['users'].toString();
      
      agent_total.curr = current['agents']['total'].toString();
      agent_desktop.curr = current['agents']['desktop'].toString();
      agent_mobile.curr = current['agents']['mobile'].toString();
      
      collectors.curr = current['collectors']['collectors'].toString();
      anonymizers.curr = current['collectors']['anonymizers'].toString();
      
      nia.curr = current['nia'].toString();
      
      shards.curr = current['shards'].toString();
    }

    public function haveDemo(platform:String):Boolean
    {
      return limits['agents'][platform][1];
    }

    public function canBuild(platform:String):Boolean
    {
      return limits['agents'][platform][0]; 
    }
    
  }
  
}