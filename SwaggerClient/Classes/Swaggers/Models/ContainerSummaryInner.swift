//
// ContainerSummaryInner.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ContainerSummaryInner: JSONEncodable {
    /** The ID of this container */
    public var id: String?
    /** The names that this container has been given */
    public var names: [String]?
    /** The name of the image used when creating this container */
    public var image: String?
    /** The ID of the image that this container was created from */
    public var imageID: String?
    /** Command to run when starting the container */
    public var command: String?
    /** When the container was created */
    public var created: Int64?
    /** The ports exposed by this container */
    public var ports: [Port]?
    /** The size of files that have been created or changed by this container */
    public var sizeRw: Int64?
    /** The total size of all the files in this container */
    public var sizeRootFs: Int64?
    /** User-defined key/value metadata. */
    public var labels: [String:String]?
    /** The state of this container (e.g. &#x60;Exited&#x60;) */
    public var state: String?
    /** Additional human-readable status of this container (e.g. &#x60;Exit 0&#x60;) */
    public var status: String?
    public var hostConfig: ContainerSummaryInnerHostConfig?
    public var networkSettings: ContainerSummaryInnerNetworkSettings?
    public var mounts: [Mount]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["Id"] = self.id
        nillableDictionary["Names"] = self.names?.encodeToJSON()
        nillableDictionary["Image"] = self.image
        nillableDictionary["ImageID"] = self.imageID
        nillableDictionary["Command"] = self.command
        nillableDictionary["Created"] = self.created?.encodeToJSON()
        nillableDictionary["Ports"] = self.ports?.encodeToJSON()
        nillableDictionary["SizeRw"] = self.sizeRw?.encodeToJSON()
        nillableDictionary["SizeRootFs"] = self.sizeRootFs?.encodeToJSON()
        nillableDictionary["Labels"] = self.labels?.encodeToJSON()
        nillableDictionary["State"] = self.state
        nillableDictionary["Status"] = self.status
        nillableDictionary["HostConfig"] = self.hostConfig?.encodeToJSON()
        nillableDictionary["NetworkSettings"] = self.networkSettings?.encodeToJSON()
        nillableDictionary["Mounts"] = self.mounts?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
