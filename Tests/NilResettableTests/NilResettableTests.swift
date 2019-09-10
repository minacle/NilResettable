@testable
import NilResettable
import XCTest

final class NilResettableTests: XCTestCase {

    func testDefaultInit() {

        struct T {

            @NilResettable
            var v = 42
        }

        var t = T(v: 72)
        XCTAssertEqual(t.v!, 72)
        t.v = 42
        XCTAssertEqual(t.v!, 42)
        t.v = nil
        XCTAssertEqual(t.v!, 72)
    }

    func testCustomInit() {

        struct T {

            @NilResettable
            var v = 42

            init(v: Int?) {
                self.v = v
            }
        }

        var t = T(v: 72)
        XCTAssertEqual(t.v!, 72)
        t.v = 42
        XCTAssertEqual(t.v!, 42)
        t.v = nil
        XCTAssertEqual(t.v!, 42)
    }

    static var allTests = [
        ("testDefaultInit", testDefaultInit),
        ("testCustomInit", testCustomInit),
    ]
}
