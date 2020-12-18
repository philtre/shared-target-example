//
//  TestingTests.swift
//  
//
//  Created by Davor Bauk on 12/17/20.
//

import XCTest
import Testing

class TestingTests: XCTestCase {
    
    func testTesting() throws {
        XCTAssertEqual(XCTestCase.uiTestLaunchArgument, "-UITest")
    }
}
