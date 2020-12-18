//
//  EnvironmentTests.swift
//  
//
//  Created by Davor Bauk on 12/17/20.
//

import XCTest
import Environment

class EnvironmentTests: XCTestCase {
    
    func testEnvironment() throws {
        XCTAssertTrue(Environment.isRunningUnitTest)
        XCTAssertFalse(Environment.isRunningUITest)
    }
}
