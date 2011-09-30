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
      items.addItem(new Alert({_id: '1', enabled:false, suppression: 600, type: 'LOG', action: 'EVIDENCE', keywords: "secret", tag: 1, evidence: 'PRINT', path:new ArrayCollection(['4df7246d963d350964000001', '4e268719963d350658000003', '4e26a843963d350f4e000004'])}) );
      items.addItem(new Alert({_id: '2', enabled:true, suppression: 600, type: 'MAIL', action: 'EVIDENCE', keywords: "HT", tag: 2, evidence: '*', path:new ArrayCollection([]), 
                                logs:new ArrayCollection([new AlertLog({time: new Date().time / 1000, path: new ArrayCollection(['4df7246d963d350964000001', '4e2686e1963d350658000002', '4e26a712963d350f4e000002']), evidence: new ArrayCollection([2132468])})])
                    }));
      items.addItem(new Alert({_id: '3', enabled:true, suppression: 600, type: 'LOG', action: 'EVIDENCE', keywords: "bomb", tag: 3, evidence: '*', path:new ArrayCollection(['4e259fe5963d35425c000001', '4e268724963d350658000004']), 
                                logs:new ArrayCollection([new AlertLog({time: new Date().time / 1000, path: new ArrayCollection(['4e259fe5963d35425c000001', '4e268724963d350658000004', '4e26a857963d350f4e000007']), evidence: new ArrayCollection([654324])}),
                                                          new AlertLog({time: new Date().time / 1000, path: new ArrayCollection(['4e259fe5963d35425c000001', '4e268724963d350658000004', '4e26a85d963d350f4e000008']), evidence: new ArrayCollection([367670123])})
                                ])
                    }));
      items.addItem(new Alert({_id: '4', enabled:false, suppression: 600, type: 'LOG', action: 'EVIDENCE', keywords: "RCS", tag: 4, evidence: 'KEYLOG', path:new ArrayCollection(['4e259fe5963d35425c000001'])}) );
      items.addItem(new Alert({_id: '5', enabled:true, suppression: 600, type: 'MAIL', action: 'SYNC', path:new ArrayCollection(['4e25a173963d354260000003', '4e26872b963d350658000005', '4e26a862963d350f4e000009'])}) );
      items.addItem(new Alert({_id: '6', enabled:true, suppression: 600, type: 'MAIL', action: 'INSTANCE', path:new ArrayCollection(['4e25a173963d354260000003', '4e26872b963d350658000005'])}) );
      
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
      
      var alert:Alert = new Alert(params);
      
      var event:ResultEvent = new ResultEvent("alert.create", false, true, alert);
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