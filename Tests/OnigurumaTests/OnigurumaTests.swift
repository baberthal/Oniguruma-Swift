import XCTest
@testable import Oniguruma

class OnigurumaTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(Oniguruma().text, "Hello, World!")
    }


    static var allTests : [(String, (OnigurumaTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
