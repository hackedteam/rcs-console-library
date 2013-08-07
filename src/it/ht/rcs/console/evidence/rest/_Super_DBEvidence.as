/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - DBEvidence.as.
 */
package it.ht.rcs.console.evidence.rest
{
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.services.wrapper.HTTPServiceWrapper;
import com.adobe.fiber.valueobjects.IValueObject;
import it.ht.rcs.console.evidence.model.AgentStatus;
import it.ht.rcs.console.evidence.model.Evidence;
import it.ht.rcs.console.evidence.model.Filter;
import it.ht.rcs.console.evidence.model.TypeCount;
import mx.collections.ListCollectionView;
import mx.data.DataManager;
import mx.data.IManaged;
import mx.data.ManagedAssociation;
import mx.data.ManagedOperation;
import mx.data.ManagedQuery;
import mx.data.RPCDataManager;
import mx.data.errors.DataServiceError;
import mx.rpc.AbstractOperation;
import mx.rpc.AsyncToken;
import mx.rpc.http.HTTPMultiService;
import mx.rpc.http.Operation;

import com.adobe.serializers.json.JSONSerializationFilter;
import com.adobe.serializers.xml.XMLSerializationFilter;

[ExcludeClass]
internal class _Super_DBEvidence extends com.adobe.fiber.services.wrapper.HTTPServiceWrapper
{
    private static var serializer0:JSONSerializationFilter = new JSONSerializationFilter();
    private static var serializer1:XMLSerializationFilter = new XMLSerializationFilter();
    private var _evidenceRPCDataManager : mx.data.RPCDataManager;
    private var managersArray : Array = new Array();

    public const DATA_MANAGER_EVIDENCE : String = "Evidence";

    public function getDataManager(dataManagerName:String) : mx.data.RPCDataManager
    {
        switch (dataManagerName)
        {
             case (DATA_MANAGER_EVIDENCE):
                return _evidenceRPCDataManager;
            default:
                return null;
        }
    }

    /**
     * Commit all of the pending changes for this DataService, as well as all of the pending changes of all DataServices
     * sharing the same DataStore.  By default, a DataService shares the same DataStore with other DataServices if they have 
     * managed association properties and share the same set of channels. 
     *
     * @see mx.data.DataManager
     * @see mx.data.DataStore
     *
     * @param itemsOrCollections:Array This is an optional parameter which defaults to null when
     *  you want to commit all pending changes.  If you want to commit a subset of the pending
     *  changes use this argument to specify a list of managed ListCollectionView instances
     *  and/or managed items.  ListCollectionView objects are most typically ArrayCollections
     *  you have provided to your fill method.  The items appropriate for this method are
     *  any managed version of the item.  These are any items you retrieve from getItem, createItem
     *  or using the getItemAt method from a managed collection.  Only changes for the
     *  items defined by any of the values in this array will be committed.
     *
     * @param cascadeCommit if true, also commit changes made to any associated
     *  items supplied in this list.
     *
     *  @return AsyncToken that is returned in <code>call</code> property of
     *  either the <code>ResultEvent.RESULT</code> or in the
     *  <code>FaultEvent.FAULT</code>.
     *  Custom data can be attached to this object and inspected later
     *  during the event handling phase.  If no changes have been made
     *  to the relevant items, null is returned instead of an AsyncToken.
     */
    public function commit(itemsOrCollections:Array=null, cascadeCommit:Boolean=false):mx.rpc.AsyncToken
    {
        return _evidenceRPCDataManager.dataStore.commit(itemsOrCollections, cascadeCommit);
    }

    /**
     * Reverts all pending (uncommitted) changes for this DataService, as well as all of the pending changes of all DataServics
     * sharing the same DataStore.  By default, a DataService shares the same DataStore with other DataServices if they have 
     * managed association properties and share the same set of channels. 
     *
     * In case you specify a value for itemsOrCollections:Array parameter, only pending (uncommitted) changes for the specified 
     * managed items or collections will be reverted.
     *
     * @see mx.data.DataManager
     * @see mx.data.DataStore
     * 
     * @param itemsOrCollections:Array This is an optional parameter which defaults to null 
     * when you want to revert all pending (uncommitted) changes for all DataServices
     * managed by this DataStore. If you want to revert a subset of the pending changes use 
     * this argument to specify a array of managed items or collections
     *
     * @return true if any changes were reverted.
     * @throws DataServiceError if the passed in array contains non-managed items or collections
     *  
     */
    public function revertChanges(itemsOrCollections:Array=null):Boolean
    {
        if (itemsOrCollections == null)
        {
            // Revert all changes
            return _evidenceRPCDataManager.dataStore.revertChanges();
        }
        else
        {
            // Revert passed in items
            var anyChangeItemReverted:Boolean = false;

            // Iterate over array and revert managed item or collection as the case may be
            for each (var changeItem:Object in itemsOrCollections)
            {
                if (changeItem is com.adobe.fiber.valueobjects.IValueObject)
                {
                    var dataMgr:mx.data.DataManager = getDataManager(changeItem._model.getEntityName());
                    anyChangeItemReverted ||= dataMgr.revertChanges(mx.data.IManaged(changeItem))
                }
                else if (changeItem is mx.collections.ListCollectionView)
                {
                    anyChangeItemReverted ||= _evidenceRPCDataManager.dataStore.revertChangesForCollection(mx.collections.ListCollectionView(changeItem));
                }
                else
                {
                    throw new mx.data.errors.DataServiceError("revertChanges called on array that contains non-managed items or collections");
                }
            }
            return anyChangeItemReverted;
        }
    }

    // Constructor
    public function _Super_DBEvidence()
    {
        // initialize service control
        _serviceControl = new mx.rpc.http.HTTPMultiService("https://localhost:4444");
         var operations:Array = new Array();
         var operation:mx.rpc.http.Operation;
         var argsArray:Array;

         operation = new mx.rpc.http.Operation(null, "agent_status_");
         operation.url = "/agent/status";
         operation.method = "POST";
         operation.serializationFilter = serializer0;
         operation.contentType = "application/xml";
        operation.resultType = it.ht.rcs.console.evidence.model.AgentStatus;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "all_");
         operation.url = "/evidence";
         operation.method = "GET";
         argsArray = new Array("filter","startIndex","numItems");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
        operation.resultElementType = it.ht.rcs.console.evidence.model.Evidence;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "count_");
         operation.url = "/evidence/count";
         operation.method = "GET";
         argsArray = new Array("filter");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer1;
        operation.resultType = int;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "info_");
         operation.url = "/evidence/info";
         operation.method = "GET";
         argsArray = new Array("filter");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
        operation.resultType = it.ht.rcs.console.evidence.model.Evidence;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "sync_start_");
         operation.url = "/evidence/start";
         operation.method = "POST";
         operation.serializationFilter = serializer1;
         operation.contentType = "application/xml";
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "sync_stop_");
         operation.url = "/evidence/stop";
         operation.method = "POST";
         operation.serializationFilter = serializer1;
         operation.contentType = "application/xml";
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "update_");
         operation.url = "/evidence/update";
         operation.method = "POST";
         operation.serializationFilter = serializer0;
         operation.contentType = "application/xml";
        operation.resultType = it.ht.rcs.console.evidence.model.Evidence;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "total_");
         operation.url = "/evidence/total";
         operation.method = "GET";
         argsArray = new Array("filter");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
        operation.resultElementType = it.ht.rcs.console.evidence.model.TypeCount;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "filesystem_");
         operation.url = "/evidence/filesystem";
         operation.method = "GET";
         argsArray = new Array("target","agent","filter");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
        operation.resultElementType = it.ht.rcs.console.evidence.model.Evidence;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "show_");
         operation.url = "/evidence/{id}";
         operation.method = "GET";
         argsArray = new Array("id","target");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.properties = new Object();
         operation.properties["urlParamNames"] = ["id"];
        operation.resultType = it.ht.rcs.console.evidence.model.Evidence;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "destroy_");
         operation.url = "/evidence/destroy";
         operation.method = "POST";
         operation.serializationFilter = serializer1;
         operation.contentType = "application/xml";
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "commands_");
         operation.url = "/evidence/commands";
         operation.method = "GET";
         argsArray = new Array("filter");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
        operation.resultElementType = it.ht.rcs.console.evidence.model.Evidence;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "ips_");
         operation.url = "/evidence/ips";
         operation.method = "GET";
         argsArray = new Array("filter");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
        operation.resultElementType = it.ht.rcs.console.evidence.model.Evidence;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "filter_all_");
         operation.url = "/filter";
         operation.method = "GET";
         operation.serializationFilter = serializer0;
        operation.resultType = it.ht.rcs.console.evidence.model.Filter;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "filter_destroy_");
         operation.url = "/filter/destroy";
         operation.method = "POST";
         operation.serializationFilter = serializer1;
         operation.contentType = "application/xml";
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "filter_create_");
         operation.url = "/filter/create";
         operation.method = "POST";
         operation.serializationFilter = serializer1;
         operation.contentType = "application/xml";
        operation.resultType = it.ht.rcs.console.evidence.model.Filter;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "destroy_all_");
         operation.url = "/evidence/destroy_all";
         operation.method = "POST";
         operation.serializationFilter = serializer1;
         operation.contentType = "application/xml";
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "translate_");
         operation.url = "/evidence/translate/{id}";
         operation.method = "GET";
         argsArray = new Array("id","target");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.properties = new Object();
         operation.properties["urlParamNames"] = ["id"];
        operation.resultType = it.ht.rcs.console.evidence.model.Evidence;
         operations.push(operation);

         _serviceControl.operationList = operations;  
        var managedAssociation : mx.data.ManagedAssociation;
        var managedAssocsArray : Array;
        // initialize Evidence data manager
        _evidenceRPCDataManager = new mx.data.RPCDataManager();
        managersArray.push(_evidenceRPCDataManager);

        managedAssocsArray = new Array();

        _evidenceRPCDataManager.destination = "evidenceRPCDataManager";
        _evidenceRPCDataManager.service = _serviceControl;        
        _evidenceRPCDataManager.identities =  "_id";      
        _evidenceRPCDataManager.itemClass = it.ht.rcs.console.evidence.model.Evidence; 



        var dmOperation : mx.data.ManagedOperation;
        var dmQuery : mx.data.ManagedQuery;

        dmQuery = new mx.data.ManagedQuery("all_");
        dmQuery.propertySpecifier = "blo,_id,data,rel,da,dr,aid,type,_mid,note";
        dmQuery.countOperation = "count_";
        dmQuery.pagingEnabled = true;
        dmQuery.positionalPagingParameters = true;
        dmQuery.parameters = "filter,startIndex,numItems";
        _evidenceRPCDataManager.addManagedOperation(dmQuery);

        _serviceControl.managers = managersArray;

         preInitializeService();
         model_internal::initialize();
    }
    
    //init initialization routine here, child class to override
    protected function preInitializeService():void
    {
      
    }
    

    /**
      * This method is a generated wrapper used to call the 'agent_status_' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function agent_status_(strXml:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("agent_status_");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(strXml) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'all_' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function all_(filter:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("all_");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(filter) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'count_' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function count_(filter:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("count_");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(filter) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'info_' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function info_(filter:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("info_");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(filter) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'sync_start_' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function sync_start_(strXml:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("sync_start_");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(strXml) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'sync_stop_' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function sync_stop_(strXml:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("sync_stop_");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(strXml) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'update_' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function update_(strXml:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("update_");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(strXml) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'total_' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function total_(filter:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("total_");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(filter) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'filesystem_' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function filesystem_(target:String, agent:String, filter:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("filesystem_");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(target,agent,filter) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'show_' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function show_(id:String, target:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("show_");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(id,target) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'destroy_' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function destroy_(strXml:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("destroy_");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(strXml) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'commands_' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function commands_(filter:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("commands_");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(filter) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'ips_' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function ips_(filter:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("ips_");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(filter) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'filter_all_' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function filter_all_() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("filter_all_");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'filter_destroy_' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function filter_destroy_(strXml:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("filter_destroy_");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(strXml) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'filter_create_' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function filter_create_(strXml:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("filter_create_");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(strXml) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'destroy_all_' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function destroy_all_(strXml:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("destroy_all_");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(strXml) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'translate_' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function translate_(id:String, target:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("translate_");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(id,target) ;
        return _internal_token;
    }
     
}

}
