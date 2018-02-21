//
// PortMap.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** PortMap describes the mapping of container ports to host ports, using the container&#39;s port-number and protocol as key in the format &#x60;&lt;port&gt;/&lt;protocol&gt;&#x60;, for example, &#x60;80/udp&#x60;.  If a container&#39;s port is mapped for both &#x60;tcp&#x60; and &#x60;udp&#x60;, two separate entries are added to the mapping table.  */
public class PortMap: JSONEncodable {

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
