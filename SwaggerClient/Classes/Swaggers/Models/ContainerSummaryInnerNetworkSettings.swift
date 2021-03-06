//
// ContainerSummaryInnerNetworkSettings.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A summary of the container&#39;s network settings */
public class ContainerSummaryInnerNetworkSettings: JSONEncodable {
    public var networks: [String:EndpointSettings]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["Networks"] = self.networks?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
