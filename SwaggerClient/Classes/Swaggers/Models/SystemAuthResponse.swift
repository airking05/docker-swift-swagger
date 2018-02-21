//
// SystemAuthResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class SystemAuthResponse: JSONEncodable {
    /** The status of the authentication */
    public var status: String?
    /** An opaque token used to authenticate a user after a successful login */
    public var identityToken: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["Status"] = self.status
        nillableDictionary["IdentityToken"] = self.identityToken
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
