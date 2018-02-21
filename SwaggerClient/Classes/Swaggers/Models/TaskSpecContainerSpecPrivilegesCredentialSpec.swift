//
// TaskSpecContainerSpecPrivilegesCredentialSpec.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** CredentialSpec for managed service account (Windows only) */
public class TaskSpecContainerSpecPrivilegesCredentialSpec: JSONEncodable {
    /** Load credential spec from this file. The file is read by the daemon, and must be present in the &#x60;CredentialSpecs&#x60; subdirectory in the docker data directory, which defaults to &#x60;C:\\ProgramData\\Docker\\&#x60; on Windows.  For example, specifying &#x60;spec.json&#x60; loads &#x60;C:\\ProgramData\\Docker\\CredentialSpecs\\spec.json&#x60;.  &lt;p&gt;&lt;br /&gt;&lt;/p&gt;  &gt; **Note**: &#x60;CredentialSpec.File&#x60; and &#x60;CredentialSpec.Registry&#x60; are mutually exclusive.  */
    public var file: String?
    /** Load credential spec from this value in the Windows registry. The specified registry value must be located in:  &#x60;HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Virtualization\\Containers\\CredentialSpecs&#x60;  &lt;p&gt;&lt;br /&gt;&lt;/p&gt;   &gt; **Note**: &#x60;CredentialSpec.File&#x60; and &#x60;CredentialSpec.Registry&#x60; are mutually exclusive.  */
    public var registry: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["File"] = self.file
        nillableDictionary["Registry"] = self.registry
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
