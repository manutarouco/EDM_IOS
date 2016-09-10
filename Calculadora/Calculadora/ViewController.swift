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
    
    
    @IBAction func swipe(sender: UISwipeGestureRecognizer) {
    
            brain = CalculatorBrain()
            displayText = 0
        
        
    }

    
    @IBAction
    func digitPressed(sender: UIButton) {
        
        let digit = sender.currentTitle!
        
        if userStartedToType{
            display.text = display.text! + digit
        }else{
            display.text = digit
        }
        userStartedToType = true
        
    }

    var displayText: Double {
        get {
            return Double(display.text!)!
        }
        set{
            display.text = String(newValue)
        }
    }
    
    @IBAction func executeOperation(sender: UIButton) {
        let operation = sender.currentTitle!
        
        if let value = Double(display.text!){
            brain.setOperand(value)
            brain.execute(operation)
            displayText = brain.accumulator
        }
        
        userStartedToType = false
        
    }
}

