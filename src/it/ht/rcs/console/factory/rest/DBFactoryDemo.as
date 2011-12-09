package it.ht.rcs.console.factory.rest
{
  import it.ht.rcs.console.factory.model.Factory;
  import it.ht.rcs.console.operation.model.Operation;
  import it.ht.rcs.console.target.model.Target;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class DBFactoryDemo implements IDBFactory
  {
    public static var factories:ArrayCollection = new ArrayCollection([
      // John Doe (SwordFish)
      new Factory({ _id: "f1", _kind: "factory", name: "John's Laptop Configuration", desc: "Catch all",                                   status: "open",   path: ["o1", "t1"], ident: "RCS_01", counter: 1 }),
      new Factory({ _id: "f2", _kind: "factory", name: "John's Mobile Configuration", desc: "Voice and position",                          status: "open",   path: ["o1", "t1"], ident: "RCS_02", counter: 1 }),
      // Alejandro Reade (Swordfish)                                                                                                                                           
      new Factory({ _id: "f3", _kind: "factory", name: "Alejandro's Setup",           desc: "Documents & contacts",                        status: "open",   path: ["o1", "t2"], ident: "RCS_03", counter: 1 }),
      // Joey Fargo (SwordFish)                                                                                                                                                
      new Factory({ _id: "f4", _kind: "factory", name: "Joey's Desktop conf",         desc: "All accessed files",                          status: "open",   path: ["o1", "t3"], ident: "RCS_04", counter: 1 }),
      new Factory({ _id: "f5", _kind: "factory", name: "Joey's Mobile conf",          desc: "Position and location upon sms",              status: "open",   path: ["o1", "t3"], ident: "RCS_05", counter: 1 }),
                                                                                                                                                                               
      // Guido (Blackjack)                                                                                                                                                     
      new Factory({ _id: "f6", _kind: "factory", name: "Guido PC setup",              desc: "Get everything",                              status: "open",   path: ["o2", "t4"], ident: "RCS_06", counter: 1 }),
      new Factory({ _id: "f7", _kind: "factory", name: "IPad agent setup for Guido",  desc: "Contacts & emails",                           status: "open",   path: ["o2", "t4"], ident: "RCS_07", counter: 1 }),
                                                                                                                                                                               
      // Dmitry Vitaly (All In)                                                                                                                                                
      new Factory({ _id: "f8", _kind: "factory", name: "Dmitry's mobile conf",        desc: "Eveything ok, watch out for battery levels!", status: "closed", path: ["o3", "t5"], ident: "RCS_08", counter: 1 })  
    ]);
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      if (onResult != null)
        onResult(new ResultEvent('factory.all', false, true, factories));
    }
    
    public function show(id:String, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function create(params:Object, operation:Operation, target:Target, onResult:Function=null, onFault:Function=null):void
    {
      params._id = new Date().getTime().toString();
      
      var factory:Factory = new Factory(params);
      factory.path = [operation._id, target._id];
      factories.addItem(factory);
      
      if (onResult != null)
        onResult(new ResultEvent('factory.create', false, true, factory));
    }
    
    public function update(factory:Factory, property:Object, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function destroy(id:String, onResult:Function=null, onFault:Function=null):void
    {
      if (onResult != null)
        onResult(new ResultEvent('factory.destroy'));
    }
    
  }
  
}