package it.ht.rcs.console.alert.rest
{
  import it.ht.rcs.console.alert.model.Alert;
  import it.ht.rcs.console.alert.model.AlertLog;
  
  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;

  public class DBAlertDemo implements IDBAlert
  {
    public function DBAlertDemo()
    {
    }
    
    public function all(onResult:Function=null, onFault:Function=null):void
    {
      var items:ArrayCollection = new ArrayCollection();
      items.addItem(new Alert({_id: '1', enabled:false, suppression: 600, type: 'LOG', action: 'EVIDENCE', keywords: "secret", priority: 1, evidence: 'PRINT', path:new ArrayCollection(['1', '2', '3'])}) );
      items.addItem(new Alert({_id: '2', enabled:true, suppression: 600, type: 'MAIL', action: 'EVIDENCE', keywords: "HT", priority: 2, evidence: '*', path:new ArrayCollection([]), 
                                logs:new ArrayCollection([new AlertLog({time: new Date().time / 1000, path: new ArrayCollection(['1', '2', '3']), evidence: new ArrayCollection([2132468])})])
                    }));
      items.addItem(new Alert({_id: '3', enabled:true, suppression: 600, type: 'LOG', action: 'EVIDENCE', keywords: "bomb", priority: 3, evidence: '*', path:new ArrayCollection(['1', '2']), 
                                logs:new ArrayCollection([new AlertLog({time: new Date().time / 1000, path: new ArrayCollection(['1', '2', '3']), evidence: new ArrayCollection([654324])}),
                                                          new AlertLog({time: new Date().time / 1000, path: new ArrayCollection(['1', '2', '3']), evidence: new ArrayCollection([367670123])})
                                ])
                    }));
      items.addItem(new Alert({_id: '4', enabled:false, suppression: 600, type: 'LOG', action: 'EVIDENCE', keywords: "RCS", priority: 4, evidence: 'KEYLOG', path:new ArrayCollection(['1', '2', '3'])}) );
      items.addItem(new Alert({_id: '5', enabled:true, suppression: 600, type: 'MAIL', action: 'SYNC', path:new ArrayCollection(['1', '2', '3'])}) );
      items.addItem(new Alert({_id: '6', enabled:true, suppression: 600, type: 'MAIL', action: 'INSTANCE', path:new ArrayCollection(['1', '2'])}) );
      
      var event:ResultEvent = new ResultEvent("alert.index", false, true, items);
      if (onResult != null) 
        onResult(event);
    }
    
    public function show(id:String, onResult:Function=null, onFault:Function=null):void
    {
    }
    
    public function create(params:Object, onResult:Function=null, onFault:Function=null):void
    {
      params._id = new Date().getTime().toString();
      params.path = new ArrayCollection(params.path);
      var event:ResultEvent = new ResultEvent("alert.create", false, true, params);
      onResult(event);
    }
    
    public function update(alert:Alert, property:Object, onResult:Function=null, onFault:Function=null):void
    {
      /* do nothing */
    }
    
    public function destroy(alert:Alert, onResult:Function=null, onFault:Function=null):void
    {
      /* do nothing */
    }
    
    public function counters(onResult:Function=null, onFault:Function=null):void
    {
      var event:ResultEvent = new ResultEvent("alert.counters", false, true, 3);
      if (onResult != null) 
        onResult(event);
    }
    
    
  }
}