//
//  WorkingTests.swift
//  
//
//  Created by Davor Bauk on 12/17/20.
//

import XCTest
import Working

class WorkingTests: XCTestCase {
    
    func testWorking() throws {
        XCTAssertEqual(Working.message, "Working in a unit test.")
    }
}
