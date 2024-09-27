//
//  XCUIApplication+Environment.swift
//  
//
//  Created by Davor Bauk on 12/17/20.
//

import XCTest

extension XCTestCase {
    public static var uiTestLaunchArgument: String {
        Environment.uiTestLaunchArgument
    }
}

extension XCUIApplication {
    
    public func addUITestLaunchArgument() {
        launchArguments.append(XCTestCase.uiTestLaunchArgument)
    }
}
