//
// SessionExperimentalAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class SessionExperimentalAPI: APIBase {
    /**
     Initialize interactive session
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func session(completion: ((error: ErrorType?) -> Void)) {
        sessionWithRequestBuilder().execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Initialize interactive session
     - POST /session
     - Start a new interactive session with a server. Session allows server to call back to the client for advanced capabilities.  > **Note**: This endpoint is *experimental* and only available if the daemon is started with experimental > features enabled. The specifications for this endpoint may still change in a future version of the API.  ### Hijacking  This endpoint hijacks the HTTP connection to HTTP2 transport that allows the client to expose gPRC services on that connection.  For example, the client sends this request to upgrade the connection:  ``` POST /session HTTP/1.1 Upgrade: h2c Connection: Upgrade ```  The Docker daemon will respond with a `101 UPGRADED` response follow with the raw stream:  ``` HTTP/1.1 101 UPGRADED Connection: Upgrade Upgrade: h2c ``` 

     - returns: RequestBuilder<Void> 
     */
    public class func sessionWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/session"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
