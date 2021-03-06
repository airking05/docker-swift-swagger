//
// TaskSpecContainerSpecSecrets.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class TaskSpecContainerSpecSecrets: JSONEncodable {
    public var file: TaskSpecContainerSpecFile?
    /** SecretID represents the ID of the specific secret that we&#39;re referencing. */
    public var secretID: String?
    /** SecretName is the name of the secret that this references, but this is just provided for lookup/display purposes. The secret in the reference will be identified by its ID.  */
    public var secretName: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["File"] = self.file?.encodeToJSON()
        nillableDictionary["SecretID"] = self.secretID
        nillableDictionary["SecretName"] = self.secretName
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
