//
//  ViewController.swift
//  Navigation Bar
//
//  Created by Paige Lim on 2015-10-27.
//  Copyright © 2015 Pslim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    var time = 0
    
    @IBOutlet var timeLabel: UILabel!
    
    @IBAction func pressedPlayButton(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
    }
    
    @IBAction func pressedRewindButton(sender: AnyObject) {
        timer.invalidate()
        time = 0
        timeLabel.text = String(time)
    }
    
    @IBAction func pressedStopButton(sender: AnyObject) {
        timer.invalidate()
    }
    
    func increaseTimer() {
        time++
        timeLabel.text = String(time)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

