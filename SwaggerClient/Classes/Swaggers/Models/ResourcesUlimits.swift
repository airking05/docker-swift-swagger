//
// ResourcesUlimits.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ResourcesUlimits: JSONEncodable {
    /** Name of ulimit */
    public var name: String?
    /** Soft limit */
    public var soft: Int32?
    /** Hard limit */
    public var hard: Int32?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["Name"] = self.name
        nillableDictionary["Soft"] = self.soft?.encodeToJSON()
        nillableDictionary["Hard"] = self.hard?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}