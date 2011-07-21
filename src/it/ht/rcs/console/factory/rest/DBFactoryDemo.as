package it.ht.rcs.console.factory.rest
{
  import it.ht.rcs.console.factory.model.Factory;
  import it.ht.rcs.console.operation.model.Operation;
  import it.ht.rcs.console.target.model.Target;
  
  public class DBFactoryDemo implements IDBFactory
  {
    public function DBFactoryDemo()
    {
    }
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function show(id:String, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function create(params:Object, operation:Operation, target:Target, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function update(factory:Factory, property:Object, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function destroy(id:String, onResult:Function=null, onFault:Function=null):void
    {
    }
  }
}