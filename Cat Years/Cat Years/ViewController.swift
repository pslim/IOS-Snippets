//
//  ViewController.swift
//  Cat Years
//
//  Created by Paige Lim on 2015-10-26.
//  Copyright © 2015 Pslim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var catAgeTextField: UITextField!
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func pressedFindAge(sender: AnyObject) {
        // TODO: test that this field is not empty
        var catAge = Int(catAgeTextField.text!)!
        catAge = catAge * 7
        
        resultLabel.text = "Your cat is \(catAge) in cat years"
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

