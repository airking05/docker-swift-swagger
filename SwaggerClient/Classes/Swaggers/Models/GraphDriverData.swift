//
// GraphDriverData.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Information about a container&#39;s graph driver. */
public class GraphDriverData: JSONEncodable {
    public var name: String?
    public var data: [String:String]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["Name"] = self.name
        nillableDictionary["Data"] = self.data?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
