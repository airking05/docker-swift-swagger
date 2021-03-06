//
// Node.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Node: JSONEncodable {
    public var ID: String?
    public var version: ObjectVersion?
    /** Date and time at which the node was added to the swarm in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.  */
    public var createdAt: String?
    /** Date and time at which the node was last updated in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.  */
    public var updatedAt: String?
    public var spec: NodeSpec?
    public var description: NodeDescription?
    public var status: NodeStatus?
    public var managerStatus: ManagerStatus?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["ID"] = self.ID
        nillableDictionary["Version"] = self.version?.encodeToJSON()
        nillableDictionary["CreatedAt"] = self.createdAt
        nillableDictionary["UpdatedAt"] = self.updatedAt
        nillableDictionary["Spec"] = self.spec?.encodeToJSON()
        nillableDictionary["Description"] = self.description?.encodeToJSON()
        nillableDictionary["Status"] = self.status?.encodeToJSON()
        nillableDictionary["ManagerStatus"] = self.managerStatus?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
