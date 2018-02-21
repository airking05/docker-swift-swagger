//
// DistributionInspectResponseDescriptor.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A descriptor struct containing digest, media type, and size */
public class DistributionInspectResponseDescriptor: JSONEncodable {
    public var mediaType: String?
    public var size: Int64?
    public var digest: String?
    public var uRLs: [String]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["MediaType"] = self.mediaType
        nillableDictionary["Size"] = self.size?.encodeToJSON()
        nillableDictionary["Digest"] = self.digest
        nillableDictionary["URLs"] = self.uRLs?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
