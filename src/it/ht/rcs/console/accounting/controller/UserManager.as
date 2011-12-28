package it.ht.rcs.console.accounting.controller
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.accounting.model.User;
  import it.ht.rcs.console.controller.ItemManager;
  import it.ht.rcs.console.search.model.SearchItem;
  import it.ht.rcs.console.utils.AlertPopUp;
  
  import mx.collections.ArrayCollection;
  import mx.resources.ResourceManager;
  import mx.rpc.events.ResultEvent;
  
  public class UserManager extends ItemManager
  {

    public function UserManager()
    {
      super(User);
    }
    
    private static var _instance:UserManager = new UserManager();
    public static function get instance():UserManager { return _instance; } 
    
    override public function refresh():void
    {
      super.refresh();
      DB.instance.user.all(onResult);
    }
    
    public function onResult(e:ResultEvent):void
    {
      clear();
      for each (var item:* in e.result.source)
        addItem(item);
      dispatchDataLoadedEvent();
    }
    
    override protected function onItemRemove(o:*):void
    { 
      DB.instance.user.destroy(o);
    }
    
    override protected function onItemUpdate(event:*):void
    { 
      var property:Object = new Object();
      property[event.property] = event.newValue is ArrayCollection ? event.newValue.source : event.newValue;
      DB.instance.user.update(event.source, property);
    }
    
    public function reload(u:User):void
    {
      DB.instance.user.show(u._id, function (e:ResultEvent):void {
        u.enabled = e.result.enabled;
        u.name = e.result.name;
        u.pass = e.result.pass;
        u.desc = e.result.desc;
        u.contact = e.result.contact;
        u.privs = e.result.privs;
        u.locale = e.result.locale;
        u.timezone = e.result.timezone;
        u.group_ids = e.result.group_ids;
      });
    }
      
    public function newUser(callback:Function):void
    {     
      DB.instance.user.create(User.defaultUser(), function (e:ResultEvent):void {
        var u:User = e.result as User;
        addItem(u);
        callback(u);
      });
    }
    
    public function changePassword(user:User, password:String):void
    {
      DB.instance.user.update(user, {pass: password}, function (e:ResultEvent):void {
        AlertPopUp.show(ResourceManager.getInstance().getString('localized_main', 'PASSWORD_CHANGED'));
      });
    }
    
    public function update(user:User, properties:Object):void
    {
      DB.instance.user.update(user, properties);
    }

    public function add_recent(user:User, item:SearchItem):void
    {
      DB.instance.user.add_recent(user, item._id);   
    }
    
  }
  
}