//
// ProcessConfig.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ProcessConfig: JSONEncodable {
    public var privileged: Bool?
    public var user: String?
    public var tty: Bool?
    public var entrypoint: String?
    public var arguments: [String]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["privileged"] = self.privileged
        nillableDictionary["user"] = self.user
        nillableDictionary["tty"] = self.tty
        nillableDictionary["entrypoint"] = self.entrypoint
        nillableDictionary["arguments"] = self.arguments?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
