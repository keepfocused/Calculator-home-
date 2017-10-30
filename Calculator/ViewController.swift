//
//  ViewController.swift
//  Calculator
//
//  Created by Danil on 24.10.17.
//  Copyright © 2017 Danil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    var userIsInTheMiddleOfTyping = false
    

    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDisplay = self.displayLabel!.text!
            displayLabel!.text = textCurrentlyInDisplay + digit
        } else {
            displayLabel!.text = digit
            userIsInTheMiddleOfTyping = true
        }
        
    }

    @IBAction func performAction(_ sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        if let mathematicalSymbol = sender.currentTitle {
            switch mathematicalSymbol {
            case "П":
                displayLabel!.text = "3.1415926"
            default:
                break
            }
        }
    }

}

