//
// NodeAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class NodeAPI: APIBase {
    /**
     Delete a node
     
     - parameter id: (path) The ID or name of the node 
     - parameter force: (query) Force remove a node from the swarm (optional, default to false)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func nodeDelete(id id: String, force: Bool? = nil, completion: ((error: ErrorType?) -> Void)) {
        nodeDeleteWithRequestBuilder(id: id, force: force).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a node
     - DELETE /nodes/{id}
     
     - parameter id: (path) The ID or name of the node 
     - parameter force: (query) Force remove a node from the swarm (optional, default to false)

     - returns: RequestBuilder<Void> 
     */
    public class func nodeDeleteWithRequestBuilder(id id: String, force: Bool? = nil) -> RequestBuilder<Void> {
        var path = "/nodes/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "force": force
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Inspect a node
     
     - parameter id: (path) The ID or name of the node 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func nodeInspect(id id: String, completion: ((data: Node?, error: ErrorType?) -> Void)) {
        nodeInspectWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Inspect a node
     - GET /nodes/{id}
     - examples: [{example={
  "UpdatedAt" : "2017-08-09T07:09:37.632105588Z",
  "Status" : {
    "State" : "ready",
    "Message" : "",
    "Addr" : "172.17.0.2"
  },
  "Description" : {
    "TLSInfo" : {
      "TrustRoot" : "-----BEGIN CERTIFICATE-----\nMIIBajCCARCgAwIBAgIUbYqrLSOSQHoxD8CwG6Bi2PJi9c8wCgYIKoZIzj0EAwIw\nEzERMA8GA1UEAxMIc3dhcm0tY2EwHhcNMTcwNDI0MjE0MzAwWhcNMzcwNDE5MjE0\nMzAwWjATMREwDwYDVQQDEwhzd2FybS1jYTBZMBMGByqGSM49AgEGCCqGSM49AwEH\nA0IABJk/VyMPYdaqDXJb/VXh5n/1Yuv7iNrxV3Qb3l06XD46seovcDWs3IZNV1lf\n3Skyr0ofcchipoiHkXBODojJydSjQjBAMA4GA1UdDwEB/wQEAwIBBjAPBgNVHRMB\nAf8EBTADAQH/MB0GA1UdDgQWBBRUXxuRcnFjDfR/RIAUQab8ZV/n4jAKBggqhkjO\nPQQDAgNIADBFAiAy+JTe6Uc3KyLCMiqGl2GyWGQqQDEcO3/YG36x7om65AIhAJvz\npxv6zFeVEkAEEkqIYi0omA9+CjanB/6Bz4n1uw8H\n-----END CERTIFICATE-----\n",
      "CertIssuerSubject" : "MBMxETAPBgNVBAMTCHN3YXJtLWNh",
      "CertIssuerPublicKey" : "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEmT9XIw9h1qoNclv9VeHmf/Vi6/uI2vFXdBveXTpcPjqx6i9wNazchk1XWV/dKTKvSh9xyGKmiIeRcE4OiMnJ1A=="
    },
    "Engine" : {
      "Plugins" : [ {
        "Type" : "Log",
        "Name" : "awslogs"
      }, {
        "Type" : "Log",
        "Name" : "fluentd"
      }, {
        "Type" : "Log",
        "Name" : "gcplogs"
      }, {
        "Type" : "Log",
        "Name" : "gelf"
      }, {
        "Type" : "Log",
        "Name" : "journald"
      }, {
        "Type" : "Log",
        "Name" : "json-file"
      }, {
        "Type" : "Log",
        "Name" : "logentries"
      }, {
        "Type" : "Log",
        "Name" : "splunk"
      }, {
        "Type" : "Log",
        "Name" : "syslog"
      }, {
        "Type" : "Network",
        "Name" : "bridge"
      }, {
        "Type" : "Network",
        "Name" : "host"
      }, {
        "Type" : "Network",
        "Name" : "ipvlan"
      }, {
        "Type" : "Network",
        "Name" : "macvlan"
      }, {
        "Type" : "Network",
        "Name" : "null"
      }, {
        "Type" : "Network",
        "Name" : "overlay"
      }, {
        "Type" : "Volume",
        "Name" : "local"
      }, {
        "Type" : "Volume",
        "Name" : "localhost:5000/vieux/sshfs:latest"
      }, {
        "Type" : "Volume",
        "Name" : "vieux/sshfs:latest"
      } ],
      "Labels" : {
        "foo" : "bar"
      },
      "EngineVersion" : "17.06.0"
    },
    "Platform" : {
      "OS" : "linux",
      "Architecture" : "x86_64"
    },
    "Hostname" : "bf3067039e47",
    "Resources" : {
      "GenericResources" : "",
      "MemoryBytes" : 8272408576,
      "NanoCPUs" : 4000000000
    }
  },
  "ManagerStatus" : {
    "Reachability" : "reachable",
    "Leader" : true,
    "Addr" : "10.0.0.46:2377"
  },
  "Spec" : {
    "Availability" : "active",
    "Name" : "node-name",
    "Role" : "manager",
    "Labels" : {
      "foo" : "bar"
    }
  },
  "ID" : "24ifsmvkjbyhk",
  "Version" : {
    "Index" : 373531
  },
  "CreatedAt" : "2016-08-18T10:44:24.496525531Z"
}, contentType=application/json}]
     
     - parameter id: (path) The ID or name of the node 

     - returns: RequestBuilder<Node> 
     */
    public class func nodeInspectWithRequestBuilder(id id: String) -> RequestBuilder<Node> {
        var path = "/nodes/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Node>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List nodes
     
     - parameter filters: (query) Filters to process on the nodes list, encoded as JSON (a &#x60;map[string][]string&#x60;).  Available filters: - &#x60;id&#x3D;&lt;node id&gt;&#x60; - &#x60;label&#x3D;&lt;engine label&gt;&#x60; - &#x60;membership&#x3D;&#x60;(&#x60;accepted&#x60;|&#x60;pending&#x60;)&#x60; - &#x60;name&#x3D;&lt;node name&gt;&#x60; - &#x60;role&#x3D;&#x60;(&#x60;manager&#x60;|&#x60;worker&#x60;)&#x60;  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func nodeList(filters filters: String? = nil, completion: ((data: [Node]?, error: ErrorType?) -> Void)) {
        nodeListWithRequestBuilder(filters: filters).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     List nodes
     - GET /nodes
     - examples: [{example=[ {
  "UpdatedAt" : "2017-08-09T07:09:37.632105588Z",
  "Status" : {
    "State" : "ready",
    "Message" : "",
    "Addr" : "172.17.0.2"
  },
  "Description" : {
    "TLSInfo" : {
      "TrustRoot" : "-----BEGIN CERTIFICATE-----\nMIIBajCCARCgAwIBAgIUbYqrLSOSQHoxD8CwG6Bi2PJi9c8wCgYIKoZIzj0EAwIw\nEzERMA8GA1UEAxMIc3dhcm0tY2EwHhcNMTcwNDI0MjE0MzAwWhcNMzcwNDE5MjE0\nMzAwWjATMREwDwYDVQQDEwhzd2FybS1jYTBZMBMGByqGSM49AgEGCCqGSM49AwEH\nA0IABJk/VyMPYdaqDXJb/VXh5n/1Yuv7iNrxV3Qb3l06XD46seovcDWs3IZNV1lf\n3Skyr0ofcchipoiHkXBODojJydSjQjBAMA4GA1UdDwEB/wQEAwIBBjAPBgNVHRMB\nAf8EBTADAQH/MB0GA1UdDgQWBBRUXxuRcnFjDfR/RIAUQab8ZV/n4jAKBggqhkjO\nPQQDAgNIADBFAiAy+JTe6Uc3KyLCMiqGl2GyWGQqQDEcO3/YG36x7om65AIhAJvz\npxv6zFeVEkAEEkqIYi0omA9+CjanB/6Bz4n1uw8H\n-----END CERTIFICATE-----\n",
      "CertIssuerSubject" : "MBMxETAPBgNVBAMTCHN3YXJtLWNh",
      "CertIssuerPublicKey" : "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEmT9XIw9h1qoNclv9VeHmf/Vi6/uI2vFXdBveXTpcPjqx6i9wNazchk1XWV/dKTKvSh9xyGKmiIeRcE4OiMnJ1A=="
    },
    "Engine" : {
      "Plugins" : [ {
        "Type" : "Log",
        "Name" : "awslogs"
      }, {
        "Type" : "Log",
        "Name" : "fluentd"
      }, {
        "Type" : "Log",
        "Name" : "gcplogs"
      }, {
        "Type" : "Log",
        "Name" : "gelf"
      }, {
        "Type" : "Log",
        "Name" : "journald"
      }, {
        "Type" : "Log",
        "Name" : "json-file"
      }, {
        "Type" : "Log",
        "Name" : "logentries"
      }, {
        "Type" : "Log",
        "Name" : "splunk"
      }, {
        "Type" : "Log",
        "Name" : "syslog"
      }, {
        "Type" : "Network",
        "Name" : "bridge"
      }, {
        "Type" : "Network",
        "Name" : "host"
      }, {
        "Type" : "Network",
        "Name" : "ipvlan"
      }, {
        "Type" : "Network",
        "Name" : "macvlan"
      }, {
        "Type" : "Network",
        "Name" : "null"
      }, {
        "Type" : "Network",
        "Name" : "overlay"
      }, {
        "Type" : "Volume",
        "Name" : "local"
      }, {
        "Type" : "Volume",
        "Name" : "localhost:5000/vieux/sshfs:latest"
      }, {
        "Type" : "Volume",
        "Name" : "vieux/sshfs:latest"
      } ],
      "Labels" : {
        "foo" : "bar"
      },
      "EngineVersion" : "17.06.0"
    },
    "Platform" : {
      "OS" : "linux",
      "Architecture" : "x86_64"
    },
    "Hostname" : "bf3067039e47",
    "Resources" : {
      "GenericResources" : "",
      "MemoryBytes" : 8272408576,
      "NanoCPUs" : 4000000000
    }
  },
  "ManagerStatus" : {
    "Reachability" : "reachable",
    "Leader" : true,
    "Addr" : "10.0.0.46:2377"
  },
  "Spec" : {
    "Availability" : "active",
    "Name" : "node-name",
    "Role" : "manager",
    "Labels" : {
      "foo" : "bar"
    }
  },
  "ID" : "24ifsmvkjbyhk",
  "Version" : {
    "Index" : 373531
  },
  "CreatedAt" : "2016-08-18T10:44:24.496525531Z"
}, {
  "UpdatedAt" : "2017-08-09T07:09:37.632105588Z",
  "Status" : {
    "State" : "ready",
    "Message" : "",
    "Addr" : "172.17.0.2"
  },
  "Description" : {
    "TLSInfo" : {
      "TrustRoot" : "-----BEGIN CERTIFICATE-----\nMIIBajCCARCgAwIBAgIUbYqrLSOSQHoxD8CwG6Bi2PJi9c8wCgYIKoZIzj0EAwIw\nEzERMA8GA1UEAxMIc3dhcm0tY2EwHhcNMTcwNDI0MjE0MzAwWhcNMzcwNDE5MjE0\nMzAwWjATMREwDwYDVQQDEwhzd2FybS1jYTBZMBMGByqGSM49AgEGCCqGSM49AwEH\nA0IABJk/VyMPYdaqDXJb/VXh5n/1Yuv7iNrxV3Qb3l06XD46seovcDWs3IZNV1lf\n3Skyr0ofcchipoiHkXBODojJydSjQjBAMA4GA1UdDwEB/wQEAwIBBjAPBgNVHRMB\nAf8EBTADAQH/MB0GA1UdDgQWBBRUXxuRcnFjDfR/RIAUQab8ZV/n4jAKBggqhkjO\nPQQDAgNIADBFAiAy+JTe6Uc3KyLCMiqGl2GyWGQqQDEcO3/YG36x7om65AIhAJvz\npxv6zFeVEkAEEkqIYi0omA9+CjanB/6Bz4n1uw8H\n-----END CERTIFICATE-----\n",
      "CertIssuerSubject" : "MBMxETAPBgNVBAMTCHN3YXJtLWNh",
      "CertIssuerPublicKey" : "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEmT9XIw9h1qoNclv9VeHmf/Vi6/uI2vFXdBveXTpcPjqx6i9wNazchk1XWV/dKTKvSh9xyGKmiIeRcE4OiMnJ1A=="
    },
    "Engine" : {
      "Plugins" : [ {
        "Type" : "Log",
        "Name" : "awslogs"
      }, {
        "Type" : "Log",
        "Name" : "fluentd"
      }, {
        "Type" : "Log",
        "Name" : "gcplogs"
      }, {
        "Type" : "Log",
        "Name" : "gelf"
      }, {
        "Type" : "Log",
        "Name" : "journald"
      }, {
        "Type" : "Log",
        "Name" : "json-file"
      }, {
        "Type" : "Log",
        "Name" : "logentries"
      }, {
        "Type" : "Log",
        "Name" : "splunk"
      }, {
        "Type" : "Log",
        "Name" : "syslog"
      }, {
        "Type" : "Network",
        "Name" : "bridge"
      }, {
        "Type" : "Network",
        "Name" : "host"
      }, {
        "Type" : "Network",
        "Name" : "ipvlan"
      }, {
        "Type" : "Network",
        "Name" : "macvlan"
      }, {
        "Type" : "Network",
        "Name" : "null"
      }, {
        "Type" : "Network",
        "Name" : "overlay"
      }, {
        "Type" : "Volume",
        "Name" : "local"
      }, {
        "Type" : "Volume",
        "Name" : "localhost:5000/vieux/sshfs:latest"
      }, {
        "Type" : "Volume",
        "Name" : "vieux/sshfs:latest"
      } ],
      "Labels" : {
        "foo" : "bar"
      },
      "EngineVersion" : "17.06.0"
    },
    "Platform" : {
      "OS" : "linux",
      "Architecture" : "x86_64"
    },
    "Hostname" : "bf3067039e47",
    "Resources" : {
      "GenericResources" : "",
      "MemoryBytes" : 8272408576,
      "NanoCPUs" : 4000000000
    }
  },
  "ManagerStatus" : {
    "Reachability" : "reachable",
    "Leader" : true,
    "Addr" : "10.0.0.46:2377"
  },
  "Spec" : {
    "Availability" : "active",
    "Name" : "node-name",
    "Role" : "manager",
    "Labels" : {
      "foo" : "bar"
    }
  },
  "ID" : "24ifsmvkjbyhk",
  "Version" : {
    "Index" : 373531
  },
  "CreatedAt" : "2016-08-18T10:44:24.496525531Z"
} ], contentType=application/json}]
     
     - parameter filters: (query) Filters to process on the nodes list, encoded as JSON (a &#x60;map[string][]string&#x60;).  Available filters: - &#x60;id&#x3D;&lt;node id&gt;&#x60; - &#x60;label&#x3D;&lt;engine label&gt;&#x60; - &#x60;membership&#x3D;&#x60;(&#x60;accepted&#x60;|&#x60;pending&#x60;)&#x60; - &#x60;name&#x3D;&lt;node name&gt;&#x60; - &#x60;role&#x3D;&#x60;(&#x60;manager&#x60;|&#x60;worker&#x60;)&#x60;  (optional)

     - returns: RequestBuilder<[Node]> 
     */
    public class func nodeListWithRequestBuilder(filters filters: String? = nil) -> RequestBuilder<[Node]> {
        let path = "/nodes"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filters": filters
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[Node]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Update a node
     
     - parameter id: (path) The ID of the node 
     - parameter version: (query) The version number of the node object being updated. This is required to avoid conflicting writes. 
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func nodeUpdate(id id: String, version: Int64, body: NodeSpec? = nil, completion: ((error: ErrorType?) -> Void)) {
        nodeUpdateWithRequestBuilder(id: id, version: version, body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a node
     - POST /nodes/{id}/update
     
     - parameter id: (path) The ID of the node 
     - parameter version: (query) The version number of the node object being updated. This is required to avoid conflicting writes. 
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func nodeUpdateWithRequestBuilder(id id: String, version: Int64, body: NodeSpec? = nil) -> RequestBuilder<Void> {
        var path = "/nodes/{id}/update"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = body?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}