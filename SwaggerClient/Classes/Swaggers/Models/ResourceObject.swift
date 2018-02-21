//
// ResourceObject.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** An object describing the resources which can be advertised by a node and requested by a task */
public class ResourceObject: JSONEncodable {
    public var nanoCPUs: Int64?
    public var memoryBytes: Int64?
    public var genericResources: GenericResources?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["NanoCPUs"] = self.nanoCPUs?.encodeToJSON()
        nillableDictionary["MemoryBytes"] = self.memoryBytes?.encodeToJSON()
        nillableDictionary["GenericResources"] = self.genericResources?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}