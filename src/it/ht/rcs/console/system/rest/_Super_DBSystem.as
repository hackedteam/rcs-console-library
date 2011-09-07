/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - DBSystem.as.
 */
package it.ht.rcs.console.system.rest
{
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.services.wrapper.HTTPServiceWrapper;
import it.ht.rcs.console.system.model.ShardStat;
import it.ht.rcs.console.system.model.System;
import mx.rpc.AbstractOperation;
import mx.rpc.AsyncToken;
import mx.rpc.http.HTTPMultiService;
import mx.rpc.http.Operation;

import com.adobe.serializers.json.JSONSerializationFilter;

[ExcludeClass]
internal class _Super_DBSystem extends com.adobe.fiber.services.wrapper.HTTPServiceWrapper
{
    private static var serializer0:JSONSerializationFilter = new JSONSerializationFilter();

    // Constructor
    public function _Super_DBSystem()
    {
        // initialize service control
        _serviceControl = new mx.rpc.http.HTTPMultiService("https://localhost:4444");
         var operations:Array = new Array();
         var operation:mx.rpc.http.Operation;
         var argsArray:Array;

         operation = new mx.rpc.http.Operation(null, "all_");
         operation.url = "/shard";
         operation.method = "GET";
         operation.serializationFilter = serializer0;
         operation.resultType = it.ht.rcs.console.system.model.System;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "show_");
         operation.url = "/shard/{id}";
         operation.method = "GET";
         argsArray = new Array("id");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.properties = new Object();
         operation.properties["urlParamNames"] = ["id"];
         operation.resultType = it.ht.rcs.console.system.model.ShardStat;
         operations.push(operation);

         _serviceControl.operationList = operations;  


         preInitializeService();
         model_internal::initialize();
    }
    
    //init initialization routine here, child class to override
    protected function preInitializeService():void
    {
      
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
    public function all_() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("all_");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
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
    public function show_(id:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("show_");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(id) ;
        return _internal_token;
    }
     
}

}
