//
//  ViewController.swift
//  Calculator
//
//  Created by Eduardo Iza on 31/05/15.
//  Copyright (c) 2015 Unimodelo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var screen: UILabel!
    
    var firstNumber = Int()
    var secondNumber = Int()
    var isTypingNumber = false
    var result = Int()
    var operation = ""
    
    @IBAction func number(sender: AnyObject) {
    
    isTypingNumber = false
    var number = sender.currentTitle
    if isTypingNumber == true {
        screen.text = screen.text! + number!!
    } else {
        screen.text = number;
        }
    isTypingNumber = true
        
    }
    
    @IBAction func operation(sender: AnyObject) {
    
        isTypingNumber = false
        firstNumber = screen.text!.toInt()!
        operation = sender.currentTitle!!
        
    }
    
    @IBAction func equals(sender: AnyObject) {
        secondNumber = screen.text!.toInt()!
        if operation == "+" {
            result = firstNumber + secondNumber
        } else if operation == "-" {
            result = firstNumber - secondNumber
        } else if operation == "x" {
            result = firstNumber * secondNumber
        } else {
            
          result = firstNumber / secondNumber
        }
        screen.text = "\(result)"
    }
    
    @IBAction func clear(sender: AnyObject) {
    firstNumber = 0
    secondNumber = 0
    isTypingNumber = false
    result = 0
    screen.text = "\(result)"
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

