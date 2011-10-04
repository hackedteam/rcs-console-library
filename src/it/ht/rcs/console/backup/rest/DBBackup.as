/**
 * This is a generated sub-class of _DBBackup.as and is intended for behavior
 * customization.  This class is only generated when there is no file already present
 * at its target location.  Thus custom behavior that you add here will survive regeneration
 * of the super-class. 
 **/
 
package it.ht.rcs.console.backup.rest
{
  import com.adobe.serialization.json.JSON;
  
  import it.ht.rcs.console.DB;
  import it.ht.rcs.console.backup.model.BackupArchive;
  import it.ht.rcs.console.backup.model.BackupJob;
  
  import mx.rpc.CallResponder;

  public class DBBackup extends _Super_DBBackup implements IDBBackup
  {
    /**
     * Override super.init() to provide any initialization customization if needed.
     */
    protected override function preInitializeService():void
    {
        super.preInitializeService();
        // Initialization customization goes here
    }
    
    public function DBBackup(host:String)
    {
      super();
      _serviceControl.baseURL = host;
    }
    
    public function all_job(onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = all_job_();
    }
    

    public function create_job(params:Object, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = create_job_(JSON.encode(params));
    }
    
    public function update_job(job:BackupJob, property:Object, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      property['_id'] = job._id;
      resp.token = update_job_(JSON.encode(property));
    }

    public function destroy_job(job:BackupJob, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = destroy_job_(JSON.encode({_id: job._id}))
    }

    public function run_job(job:BackupJob, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = run_job_(JSON.encode({_id: job._id}))
    }
    
    public function all_archive(onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = all_archive_();      
    }
    
    public function restore_archive(archive:BackupArchive, destructive:Boolean, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = restore_archive_(JSON.encode({_id: archive._id, drop: destructive}))
    }

    public function destroy_archive(archive:BackupArchive, onResult:Function=null, onFault:Function=null):void
    {
      var resp:CallResponder = DB.getCallResponder(onResult, onFault);
      resp.token = destroy_archive_(JSON.encode({_id: archive._id}))
    }

  }
}
