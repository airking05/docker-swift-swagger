//
// BuildInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class BuildInfo: JSONEncodable {
    public var id: String?
    public var stream: String?
    public var error: String?
    public var errorDetail: ErrorDetail?
    public var status: String?
    public var progress: String?
    public var progressDetail: ProgressDetail?
    public var aux: ImageID?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["stream"] = self.stream
        nillableDictionary["error"] = self.error
        nillableDictionary["errorDetail"] = self.errorDetail?.encodeToJSON()
        nillableDictionary["status"] = self.status
        nillableDictionary["progress"] = self.progress
        nillableDictionary["progressDetail"] = self.progressDetail?.encodeToJSON()
        nillableDictionary["aux"] = self.aux?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
