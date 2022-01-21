//
//  ConverterTests.swift
//  Education_Unit_TestsTests
//
//  Created by Nate Hancock on 1/21/22.
//

import XCTest
@testable import Education_Unit_Tests

class ConverterTests: XCTestCase {
    
    var sut: Converter!

    override func setUpWithError() throws {
        sut = Converter()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        sut = nil
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
    
    func test32FahrenheitTo0Celsius() {
        // arrange
        let sut = Converter() // sut = system under test
        
        // act
        let input = 32.0
        let output = sut.convertToCelsius(fahrenheit: input)
        
        // assert
        XCTAssertEqual(output, 0, accuracy: 0.0000001)
    }
    
    func test212FahrenheitTo100Celsius() {
        // arrange
        let sut = Converter() // sut = system under test
        
        // act
        let input = 212.0
        let output = sut.convertToCelsius(fahrenheit: input)
        
        // assert
        XCTAssertEqual(output, 100, accuracy: 0.0000001)
    }
}
