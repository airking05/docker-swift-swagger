//
// PluginsInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Available plugins per type.  &lt;p&gt;&lt;br /&gt;&lt;/p&gt;  &gt; **Note**: Only unmanaged (V1) plugins are included in this list. &gt; V1 plugins are \&quot;lazily\&quot; loaded, and are not returned in this list &gt; if there is no resource using the plugin.  */
public class PluginsInfo: JSONEncodable {
    /** Names of available volume-drivers, and network-driver plugins. */
    public var volume: [String]?
    /** Names of available network-drivers, and network-driver plugins. */
    public var network: [String]?
    /** Names of available authorization plugins. */
    public var authorization: [String]?
    /** Names of available logging-drivers, and logging-driver plugins. */
    public var log: [String]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["Volume"] = self.volume?.encodeToJSON()
        nillableDictionary["Network"] = self.network?.encodeToJSON()
        nillableDictionary["Authorization"] = self.authorization?.encodeToJSON()
        nillableDictionary["Log"] = self.log?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
