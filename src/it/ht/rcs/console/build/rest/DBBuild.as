/**
 * This is a generated sub-class of _DBBuild.as and is intended for behavior
 * customization.  This class is only generated when there is no file already present
 * at its target location.  Thus custom behavior that you add here will survive regeneration
 * of the super-class. 
 **/
 
package it.ht.rcs.console.build.rest
{
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.build.model.SymbianConf;
  import it.ht.rcs.console.build.model.Template;
  
  import mx.rpc.CallResponder;

public class DBBuild extends _Super_DBBuild implements IDBBuild
{
    /**
     * Override super.init() to provide any initialization customization if needed.
     */
    protected override function preInitializeService():void
    {
        super.preInitializeService();
        // Initialization customization goes here
    }
    
    public function DBBuild(host:String)
    {
      super();
      _serviceControl.baseURL = host;
    }
    
    public function exploit_all(onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = exploit_all_();
    }

    public function exploit_version(onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = exploit_version_();
    }
    
    public function symbian_conf(conf:Object, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = symbian_conf_(JSON.stringify(conf));
    }
    public function create_template(template:Template, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = template_create_(JSON.stringify({desc:template.desc, config:template.config}));
    }
    
    public function get_templates(onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = template_all_();
    }
    
    public function destroy_template(template:Template, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = template_destroy_(JSON.stringify({_id: template._id}))
    }
    
}

}
