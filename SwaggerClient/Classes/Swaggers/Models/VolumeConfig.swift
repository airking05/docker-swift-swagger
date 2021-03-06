//
// VolumeConfig.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class VolumeConfig: JSONEncodable {
    /** The new volume&#39;s name. If not specified, Docker generates a name. */
    public var name: String?
    /** Name of the volume driver to use. */
    public var driver: String?
    /** A mapping of driver options and values. These options are passed directly to the driver and are driver specific. */
    public var driverOpts: [String:String]?
    /** User-defined key/value metadata. */
    public var labels: [String:String]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["Name"] = self.name
        nillableDictionary["Driver"] = self.driver
        nillableDictionary["DriverOpts"] = self.driverOpts?.encodeToJSON()
        nillableDictionary["Labels"] = self.labels?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
