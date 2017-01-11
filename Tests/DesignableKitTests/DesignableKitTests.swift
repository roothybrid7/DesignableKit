import XCTest
@testable import DesignableKit

class DesignableKitTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(DesignableKit().text, "Hello, World!")
    }


    static var allTests : [(String, (DesignableKitTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
