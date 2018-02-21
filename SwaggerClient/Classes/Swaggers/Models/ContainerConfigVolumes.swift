//
// ContainerConfigVolumes.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** An object mapping mount point paths inside the container to empty objects. */
public class ContainerConfigVolumes: JSONEncodable {
    public var additionalProperties: AnyObject?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["additionalProperties"] = self.additionalProperties
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
