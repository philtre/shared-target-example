//
//  TargetSharingExampleUITests.swift
//  TargetSharingExampleUITests
//
//  Created by Davor Bauk on 12/17/20.
//

import XCTest
import Testing

class TargetSharingExampleUITests: XCTestCase {

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        
        app.addUITestLaunchArgument()
        
        app.launch()

        XCTAssertEqual(app.staticTexts["messageLabel"].label, "Working in a UI test.")
        
        app.terminate()
    }
}
