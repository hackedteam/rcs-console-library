package it.ht.rcs.console.alert.rest
{
  import it.ht.rcs.console.alert.model.Alert;
  import it.ht.rcs.console.alert.model.AlertLog;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;

  public class DBAlertDemo implements IDBAlert
  {
    
    private var alerts:ArrayCollection = new ArrayCollection([
      /*new Alert({ _id: '1', enabled: false, suppression: 600, type: 'LOG',  action: 'EVIDENCE', evidence: 'print',  keywords: 'secret', tag: 1, path: ['o1', 't1', 'a1'] }),
      new Alert({ _id: '2', enabled: false, suppression: 600, type: 'LOG',  action: 'EVIDENCE', evidence: 'keylog', keywords: 'RCS',    tag: 4, path: ['o1', 't1'] }),
      new Alert({ _id: '3', enabled: true,  suppression: 600, type: 'MAIL', action: 'SYNC',                         keywords: '',               path: ['o1'] }),
      new Alert({ _id: '4', enabled: true,  suppression: 600, type: 'MAIL', action: 'INSTANCE',                     keywords: '',               path: ['o1', 't1', 'a1'] }),
      
      new Alert({ _id: '5', enabled: true,  suppression: 600, type: 'MAIL', action: 'EVIDENCE', evidence: '*',      keywords: 'HT',     tag: 2, path: [], 
        logs: [new AlertLog({ time: new Date().time / 1000, path: ['o1', 't1', 'a1'], evidence: [2132468] })] }),*/
      
      new Alert({ _id: '1', enabled: true,  suppression: 600, type: 'LOG',  action: 'EVIDENCE', evidence: '*',      keywords: 'Nashville',   tag: 4, path: ['o1', 't1'], 
        logs: [new AlertLog({ time: new Date().time / 1000, path: ['o1', 't1', 'a1'], evidence: ['e24'] })
               ] })
      
      //ultimo elenco rosso (1 nashville parola chiave linkare a tweet )
    ]);
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      if (onResult != null)
        onResult(new ResultEvent('alert.index', false, true, alerts));
    }
    
    public function show(id:String, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function create(params:Object, onResult:Function=null, onFault:Function=null):void
    {
      params._id = new Date().time.toString();
      params.path = new ArrayCollection(params.path);
      
      var alert:Alert = new Alert(params);
      alerts.addItem(alert);
      
      if (onResult != null)
        onResult(new ResultEvent('alert.create', false, true, alert));
    }
    
    public function update(alert:Alert, property:Object, onResult:Function=null, onFault:Function=null):void
    {
      /* do nothing */
    }
    
    public function destroy(alert:Alert, onResult:Function=null, onFault:Function=null):void
    {
      if (onResult != null)
        onResult(new ResultEvent('alert.destroy'));
    }
    
    public function counters(onResult:Function=null, onFault:Function=null):void
    {
      var event:ResultEvent = new ResultEvent('alert.counters', false, true, 1);
      if (onResult != null)
        onResult(event);
    }
    
    public function destroy_log(alert:Alert, log:AlertLog, onResult:Function = null, onFault:Function = null):void
    {
      /* do nothing */
    }
    
    public function destroy_all_logs(alert:Alert, onResult:Function = null, onFault:Function = null):void
    {
      /* do nothing */
    }
    
  }
  
}