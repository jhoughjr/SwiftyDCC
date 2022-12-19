import XCTest
@testable import SwiftyDCC

final class SwiftyDCCTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let testSubject = DCCPacket()
        let result = testSubject.errorCheck(address:0x01,data:0x01)

        XCTAssertEqual(result, 0)
    }
}
