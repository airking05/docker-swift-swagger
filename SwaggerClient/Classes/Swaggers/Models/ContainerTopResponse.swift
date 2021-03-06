//
// ContainerTopResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** OK response to ContainerTop operation */
public class ContainerTopResponse: JSONEncodable {
    /** The ps column titles */
    public var titles: [String]?
    /** Each process running in the container, where each is process is an array of values corresponding to the titles */
    public var processes: [[String]]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["Titles"] = self.titles?.encodeToJSON()
        nillableDictionary["Processes"] = self.processes?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
