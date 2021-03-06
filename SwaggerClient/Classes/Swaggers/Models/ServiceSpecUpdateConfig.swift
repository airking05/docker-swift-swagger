//
// ServiceSpecUpdateConfig.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Specification for the update strategy of the service. */
public class ServiceSpecUpdateConfig: JSONEncodable {
    public enum FailureAction: String { 
        case Continue = "continue"
        case Pause = "pause"
        case Rollback = "rollback"
    }
    public enum Order: String { 
        case StopFirst = "stop-first"
        case StartFirst = "start-first"
    }
    /** Maximum number of tasks to be updated in one iteration (0 means unlimited parallelism). */
    public var parallelism: Int64?
    /** Amount of time between updates, in nanoseconds. */
    public var delay: Int64?
    /** Action to take if an updated task fails to run, or stops running during the update. */
    public var failureAction: FailureAction?
    /** Amount of time to monitor each updated task for failures, in nanoseconds. */
    public var monitor: Int64?
    /** The fraction of tasks that may fail during an update before the failure action is invoked, specified as a floating point number between 0 and 1. */
    public var maxFailureRatio: Double?
    /** The order of operations when rolling out an updated task. Either the old task is shut down before the new task is started, or the new task is started before the old task is shut down. */
    public var order: Order?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["Parallelism"] = self.parallelism?.encodeToJSON()
        nillableDictionary["Delay"] = self.delay?.encodeToJSON()
        nillableDictionary["FailureAction"] = self.failureAction?.rawValue
        nillableDictionary["Monitor"] = self.monitor?.encodeToJSON()
        nillableDictionary["MaxFailureRatio"] = self.maxFailureRatio
        nillableDictionary["Order"] = self.order?.rawValue
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
