package it.ht.rcs.console
{
  
  import it.ht.rcs.console.accounting.rest.DBGroup;
  import it.ht.rcs.console.accounting.rest.DBGroupDemo;
  import it.ht.rcs.console.accounting.rest.DBSession;
  import it.ht.rcs.console.accounting.rest.DBSessionDemo;
  import it.ht.rcs.console.accounting.rest.DBUser;
  import it.ht.rcs.console.accounting.rest.DBUserDemo;
  import it.ht.rcs.console.accounting.rest.IDBGroup;
  import it.ht.rcs.console.accounting.rest.IDBSession;
  import it.ht.rcs.console.accounting.rest.IDBUser;
  import it.ht.rcs.console.alert.rest.DBAlert;
  import it.ht.rcs.console.alert.rest.DBAlertDemo;
  import it.ht.rcs.console.alert.rest.IDBAlert;
  import it.ht.rcs.console.audit.rest.DBAudit;
  import it.ht.rcs.console.audit.rest.DBAuditDemo;
  import it.ht.rcs.console.audit.rest.IDBAudit;
  import it.ht.rcs.console.backdoor.rest.DBBackdoor;
  import it.ht.rcs.console.backdoor.rest.DBBackdoorDemo;
  import it.ht.rcs.console.backdoor.rest.IDBBackdoor;
  import it.ht.rcs.console.factory.rest.DBFactory;
  import it.ht.rcs.console.factory.rest.DBFactoryDemo;
  import it.ht.rcs.console.factory.rest.IDBFactory;
  import it.ht.rcs.console.monitor.rest.DBLicense;
  import it.ht.rcs.console.monitor.rest.DBLicenseDemo;
  import it.ht.rcs.console.monitor.rest.DBMonitor;
  import it.ht.rcs.console.monitor.rest.DBMonitorDemo;
  import it.ht.rcs.console.monitor.rest.IDBLicense;
  import it.ht.rcs.console.monitor.rest.IDBMonitor;
  import it.ht.rcs.console.network.rest.DBCollector;
  import it.ht.rcs.console.network.rest.DBCollectorDemo;
  import it.ht.rcs.console.network.rest.DBProxy;
  import it.ht.rcs.console.network.rest.DBProxyDemo;
  import it.ht.rcs.console.network.rest.IDBCollector;
  import it.ht.rcs.console.network.rest.IDBProxy;
  import it.ht.rcs.console.operation.rest.DBOperation;
  import it.ht.rcs.console.operation.rest.DBOperationDemo;
  import it.ht.rcs.console.operation.rest.IDBOperation;
  import it.ht.rcs.console.target.rest.DBTarget;
  import it.ht.rcs.console.target.rest.DBTargetDemo;
  import it.ht.rcs.console.target.rest.IDBTarget;
  import it.ht.rcs.console.task.rest.DBTask;
  import it.ht.rcs.console.task.rest.DBTaskDemo;
  import it.ht.rcs.console.task.rest.IDBTask;
  import it.ht.rcs.console.update.rest.DBUpdate;
  import it.ht.rcs.console.update.rest.DBUpdateDemo;
  import it.ht.rcs.console.update.rest.IDBUpdate;
  
  import mx.rpc.CallResponder;
  import mx.rpc.events.FaultEvent;
  import mx.rpc.events.ResultEvent;
  
  public class DB
  {
    public var session:IDBSession;
    public var audit:IDBAudit;
    public var task:IDBTask;
    public var collector:IDBCollector;
    public var proxy:IDBProxy;
    public var license:IDBLicense;
    public var monitor:IDBMonitor;
    public var user:IDBUser;
    public var group:IDBGroup;
    public var alert:IDBAlert;
    public var operation:IDBOperation;
    public var target:IDBTarget;
    public var backdoor:IDBBackdoor;
    public var factory:IDBFactory;
    public var update:IDBUpdate;
    
    private static var notifier:IFaultNotifier;
    public static var i18n:II18N;
    
    /* singleton */
    private static var _instance:DB = new DB();
    public static function get instance():DB { return _instance; } 
    
    public function DB()
    {
    }
    
    public function connect(host:String, notifier:IFaultNotifier, i18n:II18N, demo:Boolean=false):void
    {
      DB.notifier = notifier;
      DB.i18n = i18n;
      demo ? initDemo() : initRemote(host);
    }
    
    private function initRemote(host:String):void
    {
      /* auto completion of the host entered by the user */
      host = host_autocomplete(host);
      
      session = new DBSession(host);
      audit = new DBAudit(host);
      task = new DBTask(host);
      collector = new DBCollector(host);
      proxy = new DBProxy(host);
      license = new DBLicense(host);
      monitor = new DBMonitor(host);
      user = new DBUser(host);
      group = new DBGroup(host);
      alert = new DBAlert(host);
      operation = new DBOperation(host);
      target = new DBTarget(host);
      backdoor = new DBBackdoor(host);
      factory = new DBFactory(host);
      update = new DBUpdate(host);
    }

    private function initDemo():void
    {
      session = new DBSessionDemo();
      audit = new DBAuditDemo();
      task = new DBTaskDemo();
      collector = new DBCollectorDemo();
      proxy = new DBProxyDemo();
      license = new DBLicenseDemo();
      monitor = new DBMonitorDemo();
      user = new DBUserDemo();
      group = new DBGroupDemo();
      alert = new DBAlertDemo();
      operation = new DBOperationDemo();
      target = new DBTargetDemo();
      backdoor = new DBBackdoorDemo();
      factory = new DBFactoryDemo();
      update = new DBUpdateDemo();
    }

    public static function host_autocomplete(host:String):String
    {
      /* if the user doesn't declare the protocol, go with https by default */ 
      if (host.search("http") == -1) {
        host = "https://" + host;
      }
      
      /* if the user doesn't declare a specific port, go with default */ 
      if (host.lastIndexOf(":") == host.indexOf(":")) {
        host = host + ":4444/"
      }
      
      /* always be sure the url ends with / */
      if (host.lastIndexOf("/") != host.length -1) {
        host = host + "/"
      }
      
      return host;
    }
    
    public static function getCallResponder(onResult:Function, onFault:Function):CallResponder
    {
      // Set up the responder
      var resp:CallResponder = new CallResponder();

      if (onResult != null)
        resp.addEventListener(ResultEvent.RESULT, onResult);

      // If the fault handler is provided, use it. Otherwise, use the default one.
      if (onFault != null)
        resp.addEventListener(FaultEvent.FAULT, onFault);
      else
        resp.addEventListener(FaultEvent.FAULT, onDeFault);

      return resp;
    }
    
    /* default Fault handler */
    private static function onDeFault(e:FaultEvent):void
    {
      if (notifier)
        notifier.fault(e);
    }
  }
}
