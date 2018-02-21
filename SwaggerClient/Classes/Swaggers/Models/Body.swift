//
// Body.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Describes a permission accepted by the user upon installing the plugin. */
public class Body: JSONEncodable {
    public var name: String?
    public var description: String?
    public var value: [String]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["Name"] = self.name
        nillableDictionary["Description"] = self.description
        nillableDictionary["Value"] = self.value?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}