//
// SystemEventsResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class SystemEventsResponse: JSONEncodable {
    /** The type of object emitting the event */
    public var type: String?
    /** The type of event */
    public var action: String?
    public var actor: SystemEventsResponseActor?
    /** Timestamp of event */
    public var time: Int32?
    /** Timestamp of event, with nanosecond accuracy */
    public var timeNano: Int64?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["Type"] = self.type
        nillableDictionary["Action"] = self.action
        nillableDictionary["Actor"] = self.actor?.encodeToJSON()
        nillableDictionary["time"] = self.time?.encodeToJSON()
        nillableDictionary["timeNano"] = self.timeNano?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}