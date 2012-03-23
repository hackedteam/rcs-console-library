package it.ht.rcs.console.evidence.rest
{
  import it.ht.rcs.console.evidence.model.Evidence;
  
  import mx.rpc.events.ResultEvent;

  public class DBEvidenceDemo implements IDBEvidence
  {
    
    public function all(filter:Object, onResult:Function=null, onFault:Function=null):void
    {
      if (onResult != null)
        onResult(new ResultEvent('evidence.all', false, true));
    }
    
    public function update(evidence:Evidence, property:Object, target:String, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function agent_status(params:Object, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function sync_start(params:Object, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function sync_stop(params:Object, onResult:Function=null, onFault:Function=null):void
    {
    }
	  
  	public function info(filter:Object, onResult:Function=null, onFault:Function=null):void
  	{
  	}
    
    public function total(filter:Object, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function filesystem(targetId:String, agentId:String, onResult:Function = null, onFault:Function = null):void
    {
    }
    
  }
  
}