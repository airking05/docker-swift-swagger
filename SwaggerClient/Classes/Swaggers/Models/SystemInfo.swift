//
// SystemInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class SystemInfo: JSONEncodable {
    public enum CgroupDriver: String { 
        case Cgroupfs = "cgroupfs"
        case Systemd = "systemd"
    }
    public enum Isolation: String { 
        case Default = "default"
        case Hyperv = "hyperv"
        case Process = "process"
    }
    /** Unique identifier of the daemon.  &lt;p&gt;&lt;br /&gt;&lt;/p&gt;  &gt; **Note**: The format of the ID itself is not part of the API, and &gt; should not be considered stable.  */
    public var ID: String?
    /** Total number of containers on the host. */
    public var containers: Int32?
    /** Number of containers with status &#x60;\&quot;running\&quot;&#x60;.  */
    public var containersRunning: Int32?
    /** Number of containers with status &#x60;\&quot;paused\&quot;&#x60;.  */
    public var containersPaused: Int32?
    /** Number of containers with status &#x60;\&quot;stopped\&quot;&#x60;.  */
    public var containersStopped: Int32?
    /** Total number of images on the host.  Both _tagged_ and _untagged_ (dangling) images are counted.  */
    public var images: Int32?
    /** Name of the storage driver in use. */
    public var driver: String?
    /** Information specific to the storage driver, provided as \&quot;label\&quot; / \&quot;value\&quot; pairs.  This information is provided by the storage driver, and formatted in a way consistent with the output of &#x60;docker info&#x60; on the command line.  &lt;p&gt;&lt;br /&gt;&lt;/p&gt;  &gt; **Note**: The information returned in this field, including the &gt; formatting of values and labels, should not be considered stable, &gt; and may change without notice.  */
    public var driverStatus: [[String]]?
    /** Root directory of persistent Docker state.  Defaults to &#x60;/var/lib/docker&#x60; on Linux, and &#x60;C:\\ProgramData\\docker&#x60; on Windows.  */
    public var dockerRootDir: String?
    /** Status information about this node (standalone Swarm API).  &lt;p&gt;&lt;br /&gt;&lt;/p&gt;  &gt; **Note**: The information returned in this field is only propagated &gt; by the Swarm standalone API, and is empty (&#x60;null&#x60;) when using &gt; built-in swarm mode.  */
    public var systemStatus: [[String]]?
    public var plugins: PluginsInfo?
    /** Indicates if the host has memory limit support enabled. */
    public var memoryLimit: Bool?
    /** Indicates if the host has memory swap limit support enabled. */
    public var swapLimit: Bool?
    /** Indicates if the host has kernel memory limit support enabled. */
    public var kernelMemory: Bool?
    /** Indicates if CPU CFS(Completely Fair Scheduler) period is supported by the host. */
    public var cpuCfsPeriod: Bool?
    /** Indicates if CPU CFS(Completely Fair Scheduler) quota is supported by the host. */
    public var cpuCfsQuota: Bool?
    /** Indicates if CPU Shares limiting is supported by the host. */
    public var cPUShares: Bool?
    /** Indicates if CPUsets (cpuset.cpus, cpuset.mems) are supported by the host.  See [cpuset(7)](https://www.kernel.org/doc/Documentation/cgroup-v1/cpusets.txt)  */
    public var cPUSet: Bool?
    /** Indicates if OOM killer disable is supported on the host. */
    public var oomKillDisable: Bool?
    /** Indicates IPv4 forwarding is enabled. */
    public var iPv4Forwarding: Bool?
    /** Indicates if &#x60;bridge-nf-call-iptables&#x60; is available on the host. */
    public var bridgeNfIptables: Bool?
    /** Indicates if &#x60;bridge-nf-call-ip6tables&#x60; is available on the host. */
    public var bridgeNfIp6tables: Bool?
    /** Indicates if the daemon is running in debug-mode / with debug-level logging enabled. */
    public var debug: Bool?
    /** The total number of file Descriptors in use by the daemon process.  This information is only returned if debug-mode is enabled.  */
    public var nFd: Int32?
    /** The  number of goroutines that currently exist.  This information is only returned if debug-mode is enabled.  */
    public var nGoroutines: Int32?
    /** Current system-time in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.  */
    public var systemTime: String?
    /** The logging driver to use as a default for new containers.  */
    public var loggingDriver: String?
    /** The driver to use for managing cgroups.  */
    public var cgroupDriver: CgroupDriver?
    /** Number of event listeners subscribed. */
    public var nEventsListener: Int32?
    /** Kernel version of the host.  On Linux, this information obtained from &#x60;uname&#x60;. On Windows this information is queried from the &lt;kbd&gt;HKEY_LOCAL_MACHINE\\\\SOFTWARE\\\\Microsoft\\\\Windows NT\\\\CurrentVersion\\\\&lt;/kbd&gt; registry value, for example _\&quot;10.0 14393 (14393.1198.amd64fre.rs1_release_sec.170427-1353)\&quot;_.  */
    public var kernelVersion: String?
    /** Name of the host&#39;s operating system, for example: \&quot;Ubuntu 16.04.2 LTS\&quot; or \&quot;Windows Server 2016 Datacenter\&quot;  */
    public var operatingSystem: String?
    /** Generic type of the operating system of the host, as returned by the Go runtime (&#x60;GOOS&#x60;).  Currently returned values are \&quot;linux\&quot; and \&quot;windows\&quot;. A full list of possible values can be found in the [Go documentation](https://golang.org/doc/install/source#environment).  */
    public var oSType: String?
    /** Hardware architecture of the host, as returned by the Go runtime (&#x60;GOARCH&#x60;).  A full list of possible values can be found in the [Go documentation](https://golang.org/doc/install/source#environment).  */
    public var architecture: String?
    /** The number of logical CPUs usable by the daemon.  The number of available CPUs is checked by querying the operating system when the daemon starts. Changes to operating system CPU allocation after the daemon is started are not reflected.  */
    public var NCPU: Int32?
    /** Total amount of physical memory available on the host, in kilobytes (kB).  */
    public var memTotal: Int64?
    /** Address / URL of the index server that is used for image search, and as a default for user authentication for Docker Hub and Docker Cloud.  */
    public var indexServerAddress: String?
    public var registryConfig: RegistryServiceConfig?
    public var genericResources: GenericResources?
    /** HTTP-proxy configured for the daemon. This value is obtained from the [&#x60;HTTP_PROXY&#x60;](https://www.gnu.org/software/wget/manual/html_node/Proxies.html) environment variable.  Containers do not automatically inherit this configuration.  */
    public var httpProxy: String?
    /** HTTPS-proxy configured for the daemon. This value is obtained from the [&#x60;HTTPS_PROXY&#x60;](https://www.gnu.org/software/wget/manual/html_node/Proxies.html) environment variable.  Containers do not automatically inherit this configuration.  */
    public var httpsProxy: String?
    /** Comma-separated list of domain extensions for which no proxy should be used. This value is obtained from the [&#x60;NO_PROXY&#x60;](https://www.gnu.org/software/wget/manual/html_node/Proxies.html) environment variable.  Containers do not automatically inherit this configuration.  */
    public var noProxy: String?
    /** Hostname of the host. */
    public var name: String?
    /** User-defined labels (key/value metadata) as set on the daemon.  &lt;p&gt;&lt;br /&gt;&lt;/p&gt;  &gt; **Note**: When part of a Swarm, nodes can both have _daemon_ labels, &gt; set through the daemon configuration, and _node_ labels, set from a &gt; manager node in the Swarm. Node labels are not included in this &gt; field. Node labels can be retrieved using the &#x60;/nodes/(id)&#x60; endpoint &gt; on a manager node in the Swarm.  */
    public var labels: [String]?
    /** Indicates if experimental features are enabled on the daemon.  */
    public var experimentalBuild: Bool?
    /** Version string of the daemon.  &gt; **Note**: the [standalone Swarm API](https://docs.docker.com/swarm/swarm-api/) &gt; returns the Swarm version instead of the daemon  version, for example &gt; &#x60;swarm/1.2.8&#x60;.  */
    public var serverVersion: String?
    /** URL of the distributed storage backend.   The storage backend is used for multihost networking (to store network and endpoint information) and by the node discovery mechanism.  &lt;p&gt;&lt;br /&gt;&lt;/p&gt;  &gt; **Note**: This field is only propagated when using standalone Swarm &gt; mode, and overlay networking using an external k/v store. Overlay &gt; networks with Swarm mode enabled use the built-in raft store, and &gt; this field will be empty.  */
    public var clusterStore: String?
    /** The network endpoint that the Engine advertises for the purpose of node discovery. ClusterAdvertise is a &#x60;host:port&#x60; combination on which the daemon is reachable by other hosts.  &lt;p&gt;&lt;br /&gt;&lt;/p&gt;  &gt; **Note**: This field is only propagated when using standalone Swarm &gt; mode, and overlay networking using an external k/v store. Overlay &gt; networks with Swarm mode enabled use the built-in raft store, and &gt; this field will be empty.  */
    public var clusterAdvertise: String?
    /** List of [OCI compliant](https://github.com/opencontainers/runtime-spec) runtimes configured on the daemon. Keys hold the \&quot;name\&quot; used to reference the runtime.  The Docker daemon relies on an OCI compliant runtime (invoked via the &#x60;containerd&#x60; daemon) as its interface to the Linux kernel namespaces, cgroups, and SELinux.  The default runtime is &#x60;runc&#x60;, and automatically configured. Additional runtimes can be configured by the user and will be listed here.  */
    public var runtimes: [String:Runtime]?
    /** Name of the default OCI runtime that is used when starting containers.  The default can be overridden per-container at create time.  */
    public var defaultRuntime: String?
    public var swarm: SwarmInfo?
    /** Indicates if live restore is enabled.  If enabled, containers are kept running when the daemon is shutdown or upon daemon start if running containers are detected.  */
    public var liveRestoreEnabled: Bool?
    /** Represents the isolation technology to use as a default for containers. The supported values are platform-specific.  If no isolation value is specified on daemon start, on Windows client, the default is &#x60;hyperv&#x60;, and on Windows server, the default is &#x60;process&#x60;.  This option is currently not used on other platforms.  */
    public var isolation: Isolation?
    /** Name and, optional, path of the the &#x60;docker-init&#x60; binary.  If the path is omitted, the daemon searches the host&#39;s &#x60;$PATH&#x60; for the binary and uses the first result.  */
    public var initBinary: String?
    public var containerdCommit: Commit?
    public var runcCommit: Commit?
    public var initCommit: Commit?
    /** List of security features that are enabled on the daemon, such as apparmor, seccomp, SELinux, and user-namespaces (userns).  Additional configuration options for each security feature may be present, and are included as a comma-separated list of key/value pairs.  */
    public var securityOptions: [String]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["ID"] = self.ID
        nillableDictionary["Containers"] = self.containers?.encodeToJSON()
        nillableDictionary["ContainersRunning"] = self.containersRunning?.encodeToJSON()
        nillableDictionary["ContainersPaused"] = self.containersPaused?.encodeToJSON()
        nillableDictionary["ContainersStopped"] = self.containersStopped?.encodeToJSON()
        nillableDictionary["Images"] = self.images?.encodeToJSON()
        nillableDictionary["Driver"] = self.driver
        nillableDictionary["DriverStatus"] = self.driverStatus?.encodeToJSON()
        nillableDictionary["DockerRootDir"] = self.dockerRootDir
        nillableDictionary["SystemStatus"] = self.systemStatus?.encodeToJSON()
        nillableDictionary["Plugins"] = self.plugins?.encodeToJSON()
        nillableDictionary["MemoryLimit"] = self.memoryLimit
        nillableDictionary["SwapLimit"] = self.swapLimit
        nillableDictionary["KernelMemory"] = self.kernelMemory
        nillableDictionary["CpuCfsPeriod"] = self.cpuCfsPeriod
        nillableDictionary["CpuCfsQuota"] = self.cpuCfsQuota
        nillableDictionary["CPUShares"] = self.cPUShares
        nillableDictionary["CPUSet"] = self.cPUSet
        nillableDictionary["OomKillDisable"] = self.oomKillDisable
        nillableDictionary["IPv4Forwarding"] = self.iPv4Forwarding
        nillableDictionary["BridgeNfIptables"] = self.bridgeNfIptables
        nillableDictionary["BridgeNfIp6tables"] = self.bridgeNfIp6tables
        nillableDictionary["Debug"] = self.debug
        nillableDictionary["NFd"] = self.nFd?.encodeToJSON()
        nillableDictionary["NGoroutines"] = self.nGoroutines?.encodeToJSON()
        nillableDictionary["SystemTime"] = self.systemTime
        nillableDictionary["LoggingDriver"] = self.loggingDriver
        nillableDictionary["CgroupDriver"] = self.cgroupDriver?.rawValue
        nillableDictionary["NEventsListener"] = self.nEventsListener?.encodeToJSON()
        nillableDictionary["KernelVersion"] = self.kernelVersion
        nillableDictionary["OperatingSystem"] = self.operatingSystem
        nillableDictionary["OSType"] = self.oSType
        nillableDictionary["Architecture"] = self.architecture
        nillableDictionary["NCPU"] = self.NCPU?.encodeToJSON()
        nillableDictionary["MemTotal"] = self.memTotal?.encodeToJSON()
        nillableDictionary["IndexServerAddress"] = self.indexServerAddress
        nillableDictionary["RegistryConfig"] = self.registryConfig?.encodeToJSON()
        nillableDictionary["GenericResources"] = self.genericResources?.encodeToJSON()
        nillableDictionary["HttpProxy"] = self.httpProxy
        nillableDictionary["HttpsProxy"] = self.httpsProxy
        nillableDictionary["NoProxy"] = self.noProxy
        nillableDictionary["Name"] = self.name
        nillableDictionary["Labels"] = self.labels?.encodeToJSON()
        nillableDictionary["ExperimentalBuild"] = self.experimentalBuild
        nillableDictionary["ServerVersion"] = self.serverVersion
        nillableDictionary["ClusterStore"] = self.clusterStore
        nillableDictionary["ClusterAdvertise"] = self.clusterAdvertise
        nillableDictionary["Runtimes"] = self.runtimes?.encodeToJSON()
        nillableDictionary["DefaultRuntime"] = self.defaultRuntime
        nillableDictionary["Swarm"] = self.swarm?.encodeToJSON()
        nillableDictionary["LiveRestoreEnabled"] = self.liveRestoreEnabled
        nillableDictionary["Isolation"] = self.isolation?.rawValue
        nillableDictionary["InitBinary"] = self.initBinary
        nillableDictionary["ContainerdCommit"] = self.containerdCommit?.encodeToJSON()
        nillableDictionary["RuncCommit"] = self.runcCommit?.encodeToJSON()
        nillableDictionary["InitCommit"] = self.initCommit?.encodeToJSON()
        nillableDictionary["SecurityOptions"] = self.securityOptions?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}