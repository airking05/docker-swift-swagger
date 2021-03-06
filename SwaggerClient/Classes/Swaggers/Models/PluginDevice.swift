//
// PluginDevice.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class PluginDevice: JSONEncodable {
    public var name: String?
    public var description: String?
    public var settable: [String]?
    public var path: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["Name"] = self.name
        nillableDictionary["Description"] = self.description
        nillableDictionary["Settable"] = self.settable?.encodeToJSON()
        nillableDictionary["Path"] = self.path
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
