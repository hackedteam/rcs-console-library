/**
 * This is a generated sub-class of _BackupJob.as and is intended for behavior
 * customization.  This class is only generated when there is no file already present
 * at its target location.  Thus custom behavior that you add here will survive regeneration
 * of the super-class. 
 *
 * NOTE: Do not manually modify the RemoteClass mapping unless
 * your server representation of this class has changed and you've 
 * updated your ActionScriptGeneration,RemoteClass annotation on the
 * corresponding entity 
 **/ 
 
package it.ht.rcs.console.backup.model
{

import com.adobe.fiber.core.model_internal;

import it.ht.rcs.console.DB;

import mx.effects.easing.Back;

public class BackupJob extends _Super_BackupJob
{
    /** 
     * DO NOT MODIFY THIS STATIC INITIALIZER - IT IS NECESSARY
     * FOR PROPERLY SETTING UP THE REMOTE CLASS ALIAS FOR THIS CLASS
     *
     **/
     
    /**
     * Calling this static function will initialize RemoteClass aliases
     * for this value object as well as all of the value objects corresponding
     * to entities associated to this value object's entity.  
     */     
    public static function _initRemoteClassAlias() : void
    {
        _Super_BackupJob.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.backup.model.BackupJob);
        _Super_BackupJob.model_internal::initRemoteClassAliasAllRelated();
    }
     
    model_internal static function initRemoteClassAliasSingleChild() : void
    {
        _Super_BackupJob.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.backup.model.BackupJob);
    }
    
    {
        _Super_BackupJob.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.backup.model.BackupJob);
    }
    /** 
     * END OF DO NOT MODIFY SECTION
     *
     **/   
    
    public static function defaultJob():Object
    {
      var name:String = DB.i18n.get('NEW_BACKUP_NAME');
      return {
        _id: '',
        enabled: false,
        incremental: false,
        what: 'metadata',
        when: new BackupJobTime({week: [0], month: [], time: '00:00'}),
        name: name
      };
    }
    
    public function BackupJob(data:Object=null)
    {
      if (data) {
        _id = data._id;
        enabled = data.enabled;
        what = data.what;
        when = data.when;
        name = data.name;
        lastrun = data.lastrun;
        status = data.status;
      }
    }
}

}