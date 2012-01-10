/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - DBInjector.as.
 */
package it.ht.rcs.console.network.rest
{
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.services.wrapper.HTTPServiceWrapper;
import it.ht.rcs.console.network.model.Injector;
import it.ht.rcs.console.network.model.InjectorRule;
import it.ht.rcs.console.network.model.NetworkLog;
import mx.rpc.AbstractOperation;
import mx.rpc.AsyncToken;
import mx.rpc.http.HTTPMultiService;
import mx.rpc.http.Operation;

import com.adobe.serializers.json.JSONSerializationFilter;
import com.adobe.serializers.xml.XMLSerializationFilter;

[ExcludeClass]
internal class _Super_DBInjector extends com.adobe.fiber.services.wrapper.HTTPServiceWrapper
{
    private static var serializer0:JSONSerializationFilter = new JSONSerializationFilter();
    private static var serializer1:XMLSerializationFilter = new XMLSerializationFilter();

    // Constructor
    public function _Super_DBInjector()
    {
        // initialize service control
        _serviceControl = new mx.rpc.http.HTTPMultiService("https://localhost:4444");
         var operations:Array = new Array();
         var operation:mx.rpc.http.Operation;
         var argsArray:Array;

         operation = new mx.rpc.http.Operation(null, "all_");
         operation.url = "/injector";
         operation.method = "GET";
         operation.serializationFilter = serializer0;
         operation.resultElementType = it.ht.rcs.console.network.model.Injector;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "show_");
         operation.url = "/injector/{id}";
         operation.method = "GET";
         argsArray = new Array("id");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.properties = new Object();
         operation.properties["urlParamNames"] = ["id"];
         operation.resultType = it.ht.rcs.console.network.model.Injector;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "create_");
         operation.url = "/injector/create";
         operation.method = "POST";
         operation.serializationFilter = serializer0;
         operation.contentType = "application/xml";
         operation.resultType = it.ht.rcs.console.network.model.Injector;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "update_");
         operation.url = "/injector/update";
         operation.method = "POST";
         operation.serializationFilter = serializer0;
         operation.contentType = "application/xml";
         operation.resultType = it.ht.rcs.console.network.model.Injector;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "destroy_");
         operation.url = "/injector/destroy";
         operation.method = "POST";
         operation.serializationFilter = serializer1;
         operation.contentType = "application/xml";
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "add_rule_");
         operation.url = "/injector/add_rule";
         operation.method = "POST";
         operation.serializationFilter = serializer0;
         operation.contentType = "application/xml";
         operation.resultType = it.ht.rcs.console.network.model.InjectorRule;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "del_rule_");
         operation.url = "/injector/del_rule";
         operation.method = "POST";
         operation.serializationFilter = serializer1;
         operation.contentType = "application/xml";
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "update_rule_");
         operation.url = "/injector/update_rule";
         operation.method = "POST";
         operation.serializationFilter = serializer1;
         operation.contentType = "application/xml";
         operation.resultType = it.ht.rcs.console.network.model.InjectorRule;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "logs_");
         operation.url = "/injector/logs/{id}";
         operation.method = "GET";
         argsArray = new Array("id");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.properties = new Object();
         operation.properties["urlParamNames"] = ["id"];
         operation.resultElementType = it.ht.rcs.console.network.model.NetworkLog;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "del_logs_");
         operation.url = "/injector/del_logs";
         operation.method = "POST";
         operation.serializationFilter = serializer1;
         operation.contentType = "application/xml";
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
     
    /**
      * This method is a generated wrapper used to call the 'create_' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function create_(strXml:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("create_");
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
      * This method is a generated wrapper used to call the 'add_rule_' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function add_rule_(strXml:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("add_rule_");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(strXml) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'del_rule_' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function del_rule_(strXml:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("del_rule_");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(strXml) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'update_rule_' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function update_rule_(strXml:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("update_rule_");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(strXml) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'logs_' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function logs_(id:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("logs_");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(id) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'del_logs_' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function del_logs_(strXml:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("del_logs_");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(strXml) ;
        return _internal_token;
    }
     
}

}
