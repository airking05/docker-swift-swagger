//
// MountVolumeOptionsDriverConfig.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Map of driver specific options */
public class MountVolumeOptionsDriverConfig: JSONEncodable {
    /** Name of the driver to use to create the volume. */
    public var name: String?
    /** key/value map of driver specific options. */
    public var options: [String:String]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["Name"] = self.name
        nillableDictionary["Options"] = self.options?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
