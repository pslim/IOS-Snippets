//
//  ViewController.swift
//  Hello World
//
//  Created by Paige Lim on 2015-10-26.
//  Copyright © 2015 Pslim. All rights reserved.
//


// TODO: Dismiss keyboard when tapped outside of ageUITextField and then fix UI layout

import UIKit

class ViewController: UIViewController {
    
    // -MARK:- IB
    
    @IBOutlet var ageUILabel: UILabel!
    @IBOutlet var ageUITextField: UITextField!

    @IBAction func pressedSubmitButton(sender: AnyObject) {
        print("Button pressed!")
        ageUILabel.text = ageUITextField.text
    }

    // -MARK:- UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Hello Paige!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

