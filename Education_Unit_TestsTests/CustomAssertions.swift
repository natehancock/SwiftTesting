//
//  CustomAssertions.swift
//  Education_Unit_TestsTests
//
//  Created by Nate Hancock on 1/21/22.
//

import XCTest

class CustomAssertions: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // arrange
        let dividend = 10
        let divisor = 3
        
        // act
        let result = divisionRemainder(of: dividend, dividedBy: divisor)
        // assert

        verifyDivision(result, expectedQuotient: 3, expectedRemainder: 1)
    }
    
    func divisionRemainder(of number: Int, dividedBy: Int) -> (quotient: Int, remainder: Int) {
        let quotient = number / dividedBy
        let remainder = number % dividedBy
        return (quotient, remainder)
    }
    
    func verifyDivision(_ result: (quotient: Int, remainder: Int), expectedQuotient: Int, expectedRemainder: Int, file: StaticString = #file, line: UInt = #line) {
        // adding file and line will show where the call to verifyDivision came from rather than showing the failure here, at the assertions
        XCTAssertEqual(result.quotient, expectedQuotient, file: file, line: line)
        XCTAssertEqual(result.remainder, expectedRemainder, file: file, line: line)
    }

}
