package it.ht.rcs.console.accounting.controller
{
  import flash.filesystem.File;
  import flash.filesystem.FileMode;
  import flash.filesystem.FileStream;
  
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.IFaultNotifier;
  import it.ht.rcs.console.II18N;
  import it.ht.rcs.console.accounting.model.Session;
  import it.ht.rcs.console.accounting.model.User;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.events.SessionEvent;
  
  import mx.collections.ISort;
  import mx.collections.ListCollectionView;
  import mx.collections.Sort;
  import mx.collections.SortField;
  import mx.core.FlexGlobals;
  import mx.managers.CursorManager;
  import mx.rpc.events.FaultEvent;
  import mx.rpc.events.ResultEvent;
  
  public class SessionManager extends ItemManager
  {
    
    public function SessionManager()
    {
      super(Session);
      loadPreviousLoginDetails();
    }
    
    private static var _instance:SessionManager = new SessionManager();
    public static function get instance():SessionManager { return _instance; }
    
    [Bindable]
    public var lastUsername:String;
    
    [Bindable]
    public var lastServer:String;
    
//    [Bindable]
//    public var lastPassword:String;
    
    private var _onLoginResult:Function;
    private var _onLoginFault:Function;
    
    /* SESSIONS LIST MANAGEMENT */
    
    override public function refresh():void
    {
      super.refresh();
      DB.instance.session.all(onResult);
    }
    
    public function onResult(e:ResultEvent):void
    {
      clear();
      for each (var item:* in e.result.source)
        addItem(item);
      dispatchDataLoadedEvent();
    }
    
    public function disconnectUser(user:User):void
    {
      DB.instance.session.destroy(user.session.cookie, function(e:ResultEvent):void
      {
        removeItem(user.session);
        user.session = null;
      });
    }
    
    override public function getView(sortCriteria:ISort=null, filterFunction:Function=null):ListCollectionView
    {
      /* sorting by time */
      var sort:Sort = new Sort();
      sort.fields = [new SortField('time', true, false, true)];
      return super.getView(sort);
    }
    
    /* CURRENT SESSION MANAGEMENT */
    
    public function login(user:String, pass:String, server:String, notifier:IFaultNotifier, i18n:II18N, onResult:Function, onFault:Function):void
    {
      trace('SessionManager.login');
      
      this.lastUsername = user;
      this.lastServer = server;
      
      //this.lastPassword = pass;
      
      /* this is for DEMO purpose only, no database will be contacted, all the data are fake */
      var demoMode:Boolean = (user.indexOf('demo') != -1 && pass == '' && server == 'demo');
      DB.instance.connect(server, notifier, i18n, demoMode);
      
      /* remember the function for the async handlers */
      _onLoginResult = onResult;
      _onLoginFault = onFault;
      
      DB.instance.session.login({ user: user, pass: pass }, onLoginResult, onLoginFault);
    }
    
    private function onLoginResult(e:ResultEvent):void
    {
      /* save the current session */
      var session:Session = e.result as Session;
      session.server = lastServer;
      
      /* save the info for the next login */
      savePreviousLoginDetails();
      
      /* invoke the callback */
      _onLoginResult(session);
    }
    
    private function onLoginFault(e:FaultEvent):void
    {
      /* HTTP 403 is 'not authorized' */
      if (e.statusCode == 403) {
        _onLoginFault('Incorrect Username or Password...');
        return;
      } 
      
      _onLoginFault('Cannot connect to server');
    }
    
    public function logout(exitApplicationAfterLogout:Boolean=false):void
    {
      trace('SessionManager.logout');
      
      var beforeLogoutEvent:SessionEvent = new SessionEvent(SessionEvent.BEFORE_LOGOUT);
      FlexGlobals.topLevelApplication.dispatchEvent(beforeLogoutEvent);
      
      if (beforeLogoutEvent.isDefaultPrevented()) {
        var abortEvent:SessionEvent = new SessionEvent(SessionEvent.ABORT_LOGOUT);
        abortEvent.exitApplicationAfterLogout = exitApplicationAfterLogout;
        FlexGlobals.topLevelApplication.dispatchEvent(abortEvent);
      } else {
        forceLogout(exitApplicationAfterLogout);
      }
      
      CursorManager.removeBusyCursor();
    }
    
    public function forceLogout(exitApplicationAfterLogout:Boolean=false):void
    {
      trace('SessionManager.forceLogout');
      
      var event:SessionEvent = new SessionEvent(SessionEvent.LOGOUT);
      FlexGlobals.topLevelApplication.dispatchEvent(event);
      
      /* if we exit application before the first login, BD.instance.session is null */
      if (DB.instance.session != null)
        DB.instance.session.logout();
      
      if (exitApplicationAfterLogout)
        FlexGlobals.topLevelApplication.exit();
    }
    
    /* Methods to read and write last login details */
    
    private function loadPreviousLoginDetails():void
    {
      try {
        var s:FileStream = new FileStream();
        var f:File = File.applicationStorageDirectory.resolvePath('login.info');
        s.open(f, FileMode.READ);
        var lastLogon:Object = s.readObject();
        this.lastUsername = lastLogon.username;
        this.lastServer = lastLogon.server; 
        
        //this.lastPassword = lastLogon.password;
          
        s.close();
      } catch(e:*) {
        /* in case the file does not exist */
      }
    }
    
    private function savePreviousLoginDetails():void
    {
      try {
        var s:FileStream = new FileStream();
        var f:File = File.applicationStorageDirectory.resolvePath('login.info');
        s.open(f, FileMode.WRITE);
        var lastLogon:Object = new Object();
        lastLogon.username = this.lastUsername;
        lastLogon.server = this.lastServer;
        
        //lastLogon.password = this.lastPassword;
        
        s.writeObject(lastLogon);
        s.close();
      } catch(e:*) {
      }
    }
    
  }
  
}