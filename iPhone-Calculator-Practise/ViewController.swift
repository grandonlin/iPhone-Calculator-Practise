//
//  ViewController.swift
//  iPhone-Calculator-Practise
//
//  Created by Grandon Lin on 2016-08-04.
//  Copyright © 2016 Grandon Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentNumber = ""
    var leftNum = 0
    var rightNum = 0
    let btnArray = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "."]
    
    @IBOutlet var button: [UIButton]!
    @IBOutlet weak var outputLbl: UILabel!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for btn in button {
            btn.layer.borderWidth = 0.25
        }
        
        
    }

    @IBAction func onNumberPressed(numberBtn: UIButton!) {
        let numberIndex = numberBtn.tag
        currentNumber += btnArray[numberIndex]
        outputLbl.text = currentNumber
        
        
    }
    
    @IBAction func onDotPressed(dotButton: UIButton!) {
        let dotIndex = dotButton.tag
        if checkDecimal() == false {
            if currentNumber == ""{
                currentNumber = "0" + btnArray[dotIndex]
                outputLbl.text = currentNumber
            } else {
                currentNumber += btnArray[dotIndex]
                outputLbl.text = currentNumber
            }
        }
    }

    @IBAction func onZeroPressed(zeroButton: UIButton!) {
        let zeroIndex = zeroButton.tag
        if checkZeroValue() == false {
            currentNumber += btnArray[zeroIndex]
            outputLbl.text = currentNumber
        }
    }
    
    @IBAction func clearUp(sender: UIButton) {
        currentNumber = ""
        outputLbl.text = "0"
        
    }
    
    
    func checkDecimal() -> Bool {
        if currentNumber.characters.contains(".") {
            return true
        } else {
            return false
        }
    }
    
    func checkZeroValue() -> Bool {
        if Double(currentNumber) == nil {
            print("Yeah")
            return true
        } else {
            print("Why")
            return false
        }
    }
}

