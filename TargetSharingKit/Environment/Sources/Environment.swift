//
//  Environment.swift
//  
//
//  Created by Davor Bauk on 12/17/20.
//

#if canImport(Foundation)
import Foundation
#endif

public class Environment {
    
    public static let uiTestLaunchArgument = "-UITest"
    
    public static let isRunningUnitTest: Bool = {
        #if DEBUG && canImport(Foundation)
            return NSClassFromString("XCTestCase") != nil
        #else
            return false
        #endif
    }()
    
    public static let isRunningUITest: Bool = {
        #if DEBUG
            return CommandLine.arguments.contains(uiTestLaunchArgument)
        #else
            return false
        #endif
    }()
}
