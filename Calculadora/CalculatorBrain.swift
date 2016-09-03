//
//  CalculatorBrain.swift
//  Calculadora
//
//  Created by iossenac on 03/09/16.
//  Copyright © 2016 Manuela Tarouco. All rights reserved.
//

import Foundation

class CalculatorBrain
{
    var operand = 0.0

    func setOperation(operand: Double) {
        self.operand = operand
    }


    enum Operation {
        case Constant(Double)
        case UnaryOperation((Double)->Double)
        case BinaryOperation((Double,Double)->Double)
        case Equals
    }

    func execute(operation: String) -> Operation{
        switch operation{
            case "π":return Operation.Constant(M_PI)
            case "√": return Operation.UnaryOperation(sqrt)
            case "cos"
            
            
        default:return Operation.Equals

        }
        
    }
}