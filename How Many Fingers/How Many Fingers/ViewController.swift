//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Paige Lim on 2015-10-26.
//  Copyright © 2015 Pslim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // -MARK:- IB
    @IBOutlet var userGuessTextField: UITextField!
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func pressedGuessButton(sender: AnyObject) {
        let diceRoll = String(arc4random_uniform(6))
        
        if diceRoll == userGuessTextField.text {
            resultLabel.text = "You're right!"
        } else {
            resultLabel.text = "Wrong! It was a " + diceRoll
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

