//
// GenericResourcesInnerNamedResourceSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class GenericResourcesInnerNamedResourceSpec: JSONEncodable {
    public var kind: String?
    public var value: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["Kind"] = self.kind
        nillableDictionary["Value"] = self.value
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
