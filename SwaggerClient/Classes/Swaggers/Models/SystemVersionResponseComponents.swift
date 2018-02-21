//
// SystemVersionResponseComponents.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class SystemVersionResponseComponents: JSONEncodable {
    public var name: String?
    public var version: String?
    public var details: AnyObject?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["Name"] = self.name
        nillableDictionary["Version"] = self.version
        nillableDictionary["Details"] = self.details
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
