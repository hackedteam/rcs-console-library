package it.ht.rcs.console
{

  import it.ht.rcs.console.accounting.rest.DBSession;
  import it.ht.rcs.console.accounting.rest.DBSessionDemo;
  import it.ht.rcs.console.accounting.rest.DBGroup;
  import it.ht.rcs.console.accounting.rest.DBGroupDemo;
  import it.ht.rcs.console.accounting.rest.DBUser;
  import it.ht.rcs.console.accounting.rest.DBUserDemo;
  import it.ht.rcs.console.accounting.rest.IDBSession;
  import it.ht.rcs.console.accounting.rest.IDBGroup;
  import it.ht.rcs.console.accounting.rest.IDBUser;
  import it.ht.rcs.console.audit.rest.DBAudit;
  import it.ht.rcs.console.audit.rest.DBAuditDemo;
  import it.ht.rcs.console.audit.rest.IDBAudit;
  import it.ht.rcs.console.task.rest.DBTask;
  import it.ht.rcs.console.task.rest.DBTaskDemo;
  import it.ht.rcs.console.task.rest.IDBTask;
  import it.ht.rcs.console.monitor.rest.DBLicense;
  import it.ht.rcs.console.monitor.rest.DBLicenseDemo;
  import it.ht.rcs.console.monitor.rest.DBMonitor;
  import it.ht.rcs.console.monitor.rest.DBMonitorDemo;
  import it.ht.rcs.console.monitor.rest.IDBLicense;
  import it.ht.rcs.console.monitor.rest.IDBMonitor;
  import it.ht.rcs.console.network.rest.DBNetwork;
  import it.ht.rcs.console.network.rest.DBNetworkDemo;
  import it.ht.rcs.console.network.rest.IDBNetwork;
  
  import mx.rpc.CallResponder;
  import mx.rpc.events.FaultEvent;
  import mx.rpc.events.ResultEvent;

  public class DB
  {
    public var session:IDBSession;
    public var audit:IDBAudit;
    public var task:IDBTask;
    public var network:IDBNetwork;
    public var license:IDBLicense;
    public var monitor:IDBMonitor;
    public var user:IDBUser;
    public var group:IDBGroup;
    
    private static var notifier:IFaultNotifier;
    public static var i18n:II18N;
    
    public function DB(host:String, notifier:IFaultNotifier, i18n:II18N)
    {
      DB.notifier = notifier;
      DB.i18n = i18n;
      host == 'demo' ? initDemo() : initRemote(host);
    }
    
    private function initRemote(host:String):void
    {
      session = new DBSession(host);
      audit = new DBAudit(host);
      task = new DBTask(host);
      network = new DBNetwork(host);
      license = new DBLicense(host);
      monitor = new DBMonitor(host);
      user = new DBUser(host);
      group = new DBGroup(host);
    }

    private function initDemo():void
    {
      session = new DBSessionDemo();
      audit = new DBAuditDemo();
      task = new DBTaskDemo();
      network = new DBNetworkDemo();
      license = new DBLicenseDemo();
      monitor = new DBMonitorDemo();
      user = new DBUserDemo();
      group = new DBGroupDemo();
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
