package it.ht.rcs.console.build.rest
{
  import it.ht.rcs.console.build.model.SymbianConf;
  import it.ht.rcs.console.build.model.Template;

  public interface IDBBuild
  {
    function exploit_all(onResult:Function=null, onFault:Function=null):void
    function exploit_version(onResult:Function=null, onFault:Function=null):void
    function symbian_conf(conf:Object, onResult:Function=null, onFault:Function=null):void
    function create_template(template:Template, onResult:Function=null, onFault:Function=null):void
    function get_templates(onResult:Function=null, onFault:Function=null):void
    function destroy_template(template:Template, onResult:Function=null, onFault:Function=null):void
  }
}