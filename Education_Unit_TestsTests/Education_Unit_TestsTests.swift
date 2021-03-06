//
//  Education_Unit_TestsTests.swift
//  Education_Unit_TestsTests
//
//  Created by Nate Hancock on 1/21/22.
//

import XCTest
@testable import Education_Unit_Tests

class Education_Unit_TestsTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    func testHaterStartsNicely() {
        let hater = Hater()
        XCTAssertFalse(hater.hating)
    }
    
    func testHaterHatesAfterBadDay() {
        // arrange
        var hater = Hater()
        
        // act
        hater.hadABadDay()
        
        // assert
        XCTAssertTrue(hater.hating)
    }
    func testHaterHappyAfterGoodDay() {
        var hater = Hater()
        hater.hadAGoodDay()
        XCTAssertFalse(hater.hating)
    }
    
}
