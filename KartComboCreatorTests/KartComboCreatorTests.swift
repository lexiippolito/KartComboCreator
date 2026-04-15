//
//  KartComboCreatorTests.swift
//  KartComboCreatorTests
//
//  Created by Ippolito, Lexi on 4/14/26.
//

import XCTest
@testable import KartComboCreator


// calculate each trait stats
// calculate full combo stats
// given: bowser, biddybuggy, small red wheels, sunflower glider
    // sum SPEED values for all (character, body, wheels, etc.), add 3 to the sum, divide by 4
        // func to calculate each category – speed, traction, etc. – keep them separate – pluck values from each category's stored data
    // REPEAT for weight, acceleration, handling, etc.
        // check that each value is correct (or check sum? maybe not bc that's not how it works)

// example of fetching data for calculation:
// user selects: bowser
    // 1. fetch
    // 2. store

// test

// remember that the data by itself does not change, it just gets crazy when you make combos

// "the more specific your goal, the better your results will be – the more vague your requirements, the more work there is later"
// question EVERYTHING

final class KartComboCreatorTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        // XCTest Documentation
        // https://developer.apple.com/documentation/xctest
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
