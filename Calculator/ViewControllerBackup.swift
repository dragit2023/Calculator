////
////  ViewController.swift
////  Calculator
////
////  Created by secicl on 09/24/15.
////  Copyright (c) 2015 CowLevel. All rights reserved.
////
//
//import UIKit
//
//class ViewController: UIViewController {
//    
//    @IBOutlet var display: UILabel!
//    
//    var userIsInTheMiddleOfTypingANumber: Bool = false
//    
//    
//    //点数字，显示上在末尾加数
//    @IBAction func appendDigit(sender: UIButton) {
//        
//        let digit = sender.currentTitle!
//        
//        if userIsInTheMiddleOfTypingANumber {
//            display.text = display.text! + digit
//        } else {
//            display.text = digit
//            userIsInTheMiddleOfTypingANumber = true
//        }
//        
//        //        println("digit = \(digit)")
//    }
//    
//    var operandStack1 = [11.0, 22.0, 3.0]
//    
//    //点运算符
//    @IBAction func operate(sender: UIButton) {
//        let operation = sender.currentTitle!
//        if userIsInTheMiddleOfTypingANumber {
//            enter()
//        }
//        switch operation{
//        case "×" : performOperation { $0 * $1 }
//        case "+" : performOperation { $0 + $1 }
//        case "−" : performOperation { $1 - $0 }
//        case "÷" : performOperation { $1 / $0 }
//        case "√" : performOperation { sqrt($0) }
//        default: break
//        }
//    }
//    
//    
//    func performOperation(operation: (Double, Double) -> Double) {
//        if operandStack.count >= 2 {
//            displayValue = operation(operandStack.removeLast(), operandStack.removeLast())
//            enter()
//        }
//    }
//    
//    func performOperation(operation: Double -> Double) {
//        if operandStack.count >= 1 {
//            displayValue = operation(operandStack.removeLast())
//            enter()
//        }
//    }
//    
//    
//    var operandStack = Array<Double>()
//    
//    @IBAction func enter() {
//        userIsInTheMiddleOfTypingANumber = false
//        operandStack.append(displayValue)
//        println("operandStack = \(operandStack)")
//    }
//    
//    var displayValue: Double {
//        get {
//            return NSNumberFormatter().numberFromString(display.text!)!.doubleValue
//        }
//        set {
//            display.text = "\(newValue)"
//            userIsInTheMiddleOfTypingANumber = false
//        }
//        
//    }
//    
//}