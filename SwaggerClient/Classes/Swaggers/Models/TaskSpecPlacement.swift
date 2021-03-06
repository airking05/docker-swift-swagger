//
// TaskSpecPlacement.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class TaskSpecPlacement: JSONEncodable {
    /** An array of constraints. */
    public var constraints: [String]?
    /** Preferences provide a way to make the scheduler aware of factors such as topology. They are provided in order from highest to lowest precedence. */
    public var preferences: [TaskSpecPlacementPreferences]?
    /** Platforms stores all the platforms that the service&#39;s image can run on. This field is used in the platform filter for scheduling. If empty, then the platform filter is off, meaning there are no scheduling restrictions.  */
    public var platforms: [Platform]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["Constraints"] = self.constraints?.encodeToJSON()
        nillableDictionary["Preferences"] = self.preferences?.encodeToJSON()
        nillableDictionary["Platforms"] = self.platforms?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
