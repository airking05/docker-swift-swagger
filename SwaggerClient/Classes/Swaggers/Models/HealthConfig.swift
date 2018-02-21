//
// HealthConfig.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A test to perform to check that the container is healthy. */
public class HealthConfig: JSONEncodable {
    /** The test to perform. Possible values are:  - &#x60;[]&#x60; inherit healthcheck from image or parent image - &#x60;[\&quot;NONE\&quot;]&#x60; disable healthcheck - &#x60;[\&quot;CMD\&quot;, args...]&#x60; exec arguments directly - &#x60;[\&quot;CMD-SHELL\&quot;, command]&#x60; run command with system&#39;s default shell  */
    public var test: [String]?
    /** The time to wait between checks in nanoseconds. It should be 0 or at least 1000000 (1 ms). 0 means inherit. */
    public var interval: Int32?
    /** The time to wait before considering the check to have hung. It should be 0 or at least 1000000 (1 ms). 0 means inherit. */
    public var timeout: Int32?
    /** The number of consecutive failures needed to consider a container as unhealthy. 0 means inherit. */
    public var retries: Int32?
    /** Start period for the container to initialize before starting health-retries countdown in nanoseconds. It should be 0 or at least 1000000 (1 ms). 0 means inherit. */
    public var startPeriod: Int32?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["Test"] = self.test?.encodeToJSON()
        nillableDictionary["Interval"] = self.interval?.encodeToJSON()
        nillableDictionary["Timeout"] = self.timeout?.encodeToJSON()
        nillableDictionary["Retries"] = self.retries?.encodeToJSON()
        nillableDictionary["StartPeriod"] = self.startPeriod?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}