//
//  WorkingViewController.swift
//  TargetSharingExample
//
//  Created by Davor Bauk on 12/17/20.
//

import UIKit
import Working

class WorkingViewController: UIViewController {
    
    static var workingMessage: String {
        Working.message
    }

    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        messageLabel.text = Self.workingMessage
    }
}

