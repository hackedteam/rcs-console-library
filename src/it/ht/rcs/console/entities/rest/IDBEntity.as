package it.ht.rcs.console.entities.rest
{
 import it.ht.rcs.console.entities.model.Entity;

  public interface IDBEntity
  {
    function all(onResult:Function=null, onFault:Function=null):void;
    
   
  }
  
}