//
// ServiceSpecRollbackConfig.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Specification for the rollback strategy of the service. */
public class ServiceSpecRollbackConfig: JSONEncodable {
    public enum FailureAction: String { 
        case Continue = "continue"
        case Pause = "pause"
    }
    public enum Order: String { 
        case StopFirst = "stop-first"
        case StartFirst = "start-first"
    }
    /** Maximum number of tasks to be rolled back in one iteration (0 means unlimited parallelism). */
    public var parallelism: Int64?
    /** Amount of time between rollback iterations, in nanoseconds. */
    public var delay: Int64?
    /** Action to take if an rolled back task fails to run, or stops running during the rollback. */
    public var failureAction: FailureAction?
    /** Amount of time to monitor each rolled back task for failures, in nanoseconds. */
    public var monitor: Int64?
    /** The fraction of tasks that may fail during a rollback before the failure action is invoked, specified as a floating point number between 0 and 1. */
    public var maxFailureRatio: Double?
    /** The order of operations when rolling back a task. Either the old task is shut down before the new task is started, or the new task is started before the old task is shut down. */
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
