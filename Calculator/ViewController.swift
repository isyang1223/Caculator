//
//  ViewController.swift
//  Calculator
//
//  Created by Ian Yang on 3/10/18.
//  Copyright © 2018 Ian Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputLabel: UILabel!
    
    var storedNum: Double = 0
    var sum:Double = 0
    var num  = ""
    var operation = ""
    var counter = 0
    var lol:Double = 0
    var lastoperation = ""
    
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        inputLabel.text = "0"
        num = ""
        operation = ""
        counter = 0

    }
    
    
    @IBAction func button0Prssed(_ sender: UIButton) {
        if num != ""{
            num += "0"
            inputLabel.text = num
        }
    }
    
    @IBAction func button1Prssed(_ sender: UIButton) {

        num += "1"
        inputLabel.text = num
    
    }
    
    @IBAction func button2Prssed(_ sender: UIButton) {
        num += "2"
        inputLabel.text = num
    }
    
    @IBAction func button3Prssed(_ sender: UIButton) {
        num += "3"
        inputLabel.text = num
    }
    
    @IBAction func button4Prssed(_ sender: UIButton) {
        num += "4"
        inputLabel.text = num
    }
    
    @IBAction func button5Prssed(_ sender: UIButton) {
        num += "5"
        inputLabel.text = num
    }
    
    @IBAction func button6Prssed(_ sender: UIButton) {
        num += "6"
        inputLabel.text = num
    }
    
    @IBAction func button7Prssed(_ sender: UIButton) {
        num += "7"
        inputLabel.text = num
    }
    
    @IBAction func button8Prssed(_ sender: UIButton) {
        num += "8"
        inputLabel.text = num
    }
    
    @IBAction func button9Prssed(_ sender: UIButton) {
        num += "9"
        inputLabel.text = num
    }
    
    @IBAction func buttonPpressed(_ sender: UIButton) {
        if counter == 0 {
            num += "."
            inputLabel.text = num
            counter += 1
        }
    }
    
    @IBAction func addButtonPrssed(_ sender: UIButton) {
        if operation == "" {
            inputLabel.text = String(num)
             if let unwrappedinput = Double(num) {
                storedNum = Double(unwrappedinput)
                operation = "add"
                num = ""
            }
        }
        else {
            if let unwrappedinput = inputLabel.text {
                storedNum = Double(unwrappedinput)!
                operation = "add"
                num = ""
            }
        }
    }
    
    @IBAction func equalButtonPressed(_ sender: UIButton) {
        print(operation + " op")
        print(lastoperation + " lastop")
        if operation == "add" && num != "" {
            
            sum = storedNum + Double(num)!
            lol = Double(num)!
            inputLabel.text = String(sum)
            storedNum = sum
            num = ""
            lastoperation = "add"
        }
        else if operation == "add" && num == "" {
            sum = storedNum + lol
            inputLabel.text = String(sum)
            storedNum = sum
            lastoperation = "add"
            operation = ""
        }
        else if lastoperation == "add" && num == "" {
            sum = storedNum + lol
            inputLabel.text = String(sum)
            storedNum = sum
        }
        else if operation == "sub" && num != "" {
            
            sum = storedNum - Double(num)!
            lol = Double(num)!
            inputLabel.text = String(sum)
            storedNum = sum
            num = ""
            lastoperation = "sub"
        }
        else if operation == "sub" && num == "" {
            sum = storedNum - lol
            inputLabel.text = String(sum)
            storedNum = sum
            lastoperation = "sub"
            operation = ""
        }
        else if lastoperation == "sub" && num == "" {
            sum = storedNum - lol
            inputLabel.text = String(sum)
            storedNum = sum
        }
        else if operation == "mul" && num != "" {
            sum = storedNum * Double(num)!
            lol = Double(num)!
            inputLabel.text = String(sum)
            storedNum = sum
            num = ""
            
        }
        else if operation == "mul" && num == "" {
            sum = storedNum * lol
            inputLabel.text = String(sum)
            storedNum = sum
            lastoperation = "mul"
            operation = ""
        }
        else if lastoperation == "mul" && num == "" {
            sum = storedNum * lol
            inputLabel.text = String(sum)
            storedNum = sum
        }
        
        else if operation == "div" && num != "" {
            sum = storedNum / Double(num)!
            lol = Double(num)!
            inputLabel.text = String(sum)
            storedNum = sum
            num = ""
        }
        else if operation == "div" && num == "" {
            sum = storedNum / lol
            inputLabel.text = String(sum)
            storedNum = sum
            lastoperation = "div"
            operation = ""
            
            
        }
        else if lastoperation == "div" && num == "" {
            sum = storedNum / lol
            inputLabel.text = String(sum)
            storedNum = sum
        }
            

    }
    
    
    

    @IBAction func subtractButtonPressed(_ sender: UIButton) {
        if operation == "" {
            inputLabel.text = String(num)
            if let unwrappedinput = Double(num) {
                storedNum = Double(unwrappedinput)
                operation = "sub"
                num = ""
            }
        }
        else {
            if let unwrappedinput = inputLabel.text {
                storedNum = Double(unwrappedinput)!
                operation = "sub"
                num = ""
            }
        }
    }
    
    
    
    @IBAction func multiplyButtonPressed(_ sender: UIButton) {
        if operation == "" {
            inputLabel.text = String(num)
            if let unwrappedinput = Double(num) {
                storedNum = Double(unwrappedinput)
                operation = "mul"
                num = ""
            }
        }
        else {
            if let unwrappedinput = inputLabel.text {
                storedNum = Double(unwrappedinput)!
                operation = "mul"
                num = ""
            }
        }
    }

    @IBAction func divideButtonPressed(_ sender: UIButton) {
        if operation == "" {
            inputLabel.text = String(num)
            if let unwrappedinput = Double(num) {
                storedNum = Double(unwrappedinput)
                operation = "div"
                num = ""
            }
        }
        else {
            if let unwrappedinput = inputLabel.text {
                storedNum = Double(unwrappedinput)!
                operation = "div"
                num = ""
            }
        }
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

