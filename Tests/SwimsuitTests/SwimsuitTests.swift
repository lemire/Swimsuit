import XCTest
@testable import Swimsuit

class SwimsuitTests: XCTestCase {
    func testExample() {
        XCTAssertEqual(1 + 3, 4) // being silly
    }

    static var allTests: [(String, (SwimsuitTests) -> () throws -> Void)] {
        return [("testExample", testExample)]
    }
}
