//
//  ViewController.swift
//  iPhone-Calculator-Practise
//
//  Created by Grandon Lin on 2016-08-04.
//  Copyright © 2016 Grandon Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var printLabel: UILabel!
    
    
    @IBOutlet var button: [UIButton]!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for btn in button {
            btn.layer.borderWidth = 0.25
        }
        
        
    }

    @IBAction func onButtonPressed(sender: UIButton) {
        
    }


}

