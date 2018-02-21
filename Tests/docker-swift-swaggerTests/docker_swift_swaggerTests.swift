import XCTest
@testable import docker_swift_swagger

class docker_swift_swaggerTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(docker_swift_swagger().text, "Hello, World!")
    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
