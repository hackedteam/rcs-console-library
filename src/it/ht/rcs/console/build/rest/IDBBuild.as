package it.ht.rcs.console.build.rest
{
  import it.ht.rcs.console.build.model.SymbianConf;

  public interface IDBBuild
  {
    function exploit_all(onResult:Function=null, onFault:Function=null):void
    function symbian_conf(conf:Object, onResult:Function=null, onFault:Function=null):void
  }
}