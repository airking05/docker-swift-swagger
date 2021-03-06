//
// VolumeListResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class VolumeListResponse: JSONEncodable {
    /** List of volumes */
    public var volumes: [Volume]?
    /** Warnings that occurred when fetching the list of volumes */
    public var warnings: [String]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["Volumes"] = self.volumes?.encodeToJSON()
        nillableDictionary["Warnings"] = self.warnings?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
