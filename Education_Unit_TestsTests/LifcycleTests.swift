//
//  LifcycleTests.swift
//  Education_Unit_TestsTests
//
//  Created by Nate Hancock on 1/21/22.
//

import XCTest

class LifcycleTests: XCTestCase {
    
    override class func setUp() {
        print("in class setup")
    }

    override class func tearDown() {
        print("in class teardown")
    }
    override func setUpWithError() throws {
        print("In setup")
    }
    

    override func tearDownWithError() throws {
        print("in teardown")
    }

    func testExample1() throws {
        print("Test 1 - Starting Test")
        
        
        addTeardownBlock {
            print("Test 1 - First Teardown Block")
        }
        
        print("Test 1 - Middle of test")
        
        addTeardownBlock {
            print("Test 1 - In second teardown block")
        }
        
        print("Test 1 - End of test")

    }
    
    func testExample2() throws {
        print("Test 2 - Starting Test")
        
        
        addTeardownBlock {
            print("Test 2 - First Teardown Block")
        }
        
        print("Test 2 - Middle of test")
        
        addTeardownBlock {
            print("Test 2 - In second teardown block")
        }
        
        print("Test 2 - End of test")

    }
}


/*
 Running will output:
 
 in class setup
 Test Case '-[Education_Unit_TestsTests.LifcycleTests testExample1]' started.
 In setup
 Test 1 - Starting Test
 Test 1 - Middle of test
 Test 1 - End of test
 Test 1 - In second teardown block
 Test 1 - First Teardown Block
 in teardown
 Test Case '-[Education_Unit_TestsTests.LifcycleTests testExample1]' passed (0.002 seconds).
 Test Case '-[Education_Unit_TestsTests.LifcycleTests testExample2]' started.
 In setup
 Test 2 - Starting Test
 Test 2 - Middle of test
 Test 2 - End of test
 Test 2 - In second teardown block
 Test 2 - First Teardown Block
 in teardown
 Test Case '-[Education_Unit_TestsTests.LifcycleTests testExample2]' passed (0.001 seconds).
 Test Case '-[Education_Unit_TestsTests.LifcycleTests testPerformanceExample]' passed (0.528 seconds).
 in class teardown
 */


/*
 Notes:
 Tests are run in Alphabetical Order based on function name.
 use `addTeardownBlock` when custom code needs to be cleaned up inside of a test
 
 
 */
