//
// DistributionAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class DistributionAPI: APIBase {
    /**
     Get image information from the registry
     
     - parameter name: (path) Image name or id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func distributionInspect(name name: String, completion: ((data: DistributionInspectResponse?, error: ErrorType?) -> Void)) {
        distributionInspectWithRequestBuilder(name: name).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get image information from the registry
     - GET /distribution/{name}/json
     - Return image digest and platform information by contacting the registry.
     - examples: [{example={
  "Descriptor" : {
    "MediaType" : "application/vnd.docker.distribution.manifest.v2+json",
    "Digest" : "sha256:c0537ff6a5218ef531ece93d4984efc99bbf3f7497c0a7726c88e2bb7584dc96",
    "Size" : 3987495,
    "URLs" : [ "" ]
  },
  "Platforms" : [ {
    "Architecture" : "amd64",
    "OS" : "linux",
    "OSVersion" : "",
    "OSFeatures" : [ "" ],
    "Variant" : "",
    "Features" : [ "" ]
  } ]
}, contentType=application/json}]
     
     - parameter name: (path) Image name or id 

     - returns: RequestBuilder<DistributionInspectResponse> 
     */
    public class func distributionInspectWithRequestBuilder(name name: String) -> RequestBuilder<DistributionInspectResponse> {
        var path = "/distribution/{name}/json"
        path = path.stringByReplacingOccurrencesOfString("{name}", withString: "\(name)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<DistributionInspectResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}