//
//  Working.swift
//  
//
//  Created by Davor Bauk on 12/17/20.
//

import Environment

public class Working {
    
    public static var message: String {
        
        if Environment.isRunningUnitTest {
            return "Working in a unit test."
        }
        
        if Environment.isRunningUITest {
            return "Working in a UI test."
        }
        
        return "Working in the app."
    }
}
