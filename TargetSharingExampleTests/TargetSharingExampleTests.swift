//
//  TargetSharingExampleTests.swift
//  TargetSharingExampleTests
//
//  Created by Davor Bauk on 12/17/20.
//

import XCTest
@testable import TargetSharingExample
import Testing

class TargetSharingExampleTests: XCTestCase {

    func testExample() throws {
        XCTAssertEqual(WorkingViewController.workingMessage, "Working in a unit test.")
    }
}
