//
//  ViewController.swift
//  Calculadora
//
//  Created by iossenac on 03/09/16.
//  Copyright © 2016 Manuela Tarouco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    var brain = CalculatorBrain()
    
    var userStartedToType = false
    
    @IBOutlet weak var display: UILabel!
    
    @IBAction
    func digitPressed(sender: UIButton) {
        
        
        let digit = sender.currentTitle!
        let displayText = display.text!
        
        if userStartedToType {
            display.text = displayText + digit
        }else{
            display.text = digit
        }
        
        userStartedToType = true
        
    }

    @IBAction func executeOperation(sender: UIButton) {
        let operation = sender.currentTitle!
        
        if let value = Double(display.text!){
            brain.setOperation(value)
            display.text = String(brain.execute(operation))
        }
        
        userStartedToType = false
    }
}

