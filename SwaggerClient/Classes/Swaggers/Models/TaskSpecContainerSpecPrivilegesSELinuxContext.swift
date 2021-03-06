//
// TaskSpecContainerSpecPrivilegesSELinuxContext.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** SELinux labels of the container */
public class TaskSpecContainerSpecPrivilegesSELinuxContext: JSONEncodable {
    /** Disable SELinux */
    public var disable: Bool?
    /** SELinux user label */
    public var user: String?
    /** SELinux role label */
    public var role: String?
    /** SELinux type label */
    public var type: String?
    /** SELinux level label */
    public var level: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["Disable"] = self.disable
        nillableDictionary["User"] = self.user
        nillableDictionary["Role"] = self.role
        nillableDictionary["Type"] = self.type
        nillableDictionary["Level"] = self.level
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
