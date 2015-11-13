//
//  ViewController.swift
//  Animations
//
//  Created by Paige Lim on 2015-10-30.
//  Copyright © 2015 Pslim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    
    var frameNumber = 1
    
    var isAnimating = true
    
    @IBOutlet var animateButton: UIButton!
    
    @IBAction func pressedAnimateButton(sender: AnyObject) {
        if isAnimating {
            timer.invalidate()
            isAnimating = false
            animateButton.setTitle("Start", forState: UIControlState.Normal)
        } else {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
            isAnimating = true
            animateButton.setTitle("Stop", forState: UIControlState.Normal)
        }
    }

    @IBOutlet var animalImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        animateButton.setTitle("Stop", forState: UIControlState.Normal)
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func doAnimation() {
        if frameNumber == 8 {
            frameNumber = 1
        } else {
            frameNumber++
        }
        
        animalImageView.image = UIImage(named: "dancingAnimals-\(frameNumber).png")
    }
   
    /*
    override func viewDidLayoutSubviews() {
        // slide in
        animalImageView.center = CGPointMake(animalImageView.center.x - 400, animalImageView.center.y)
        // fade in
        animalImageView.alpha = 0
        // zoom in
        animalImageView.frame = CGRectMake(100, 20, 0, 0)
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1) { () -> Void in
            // slide in
            self.animalImageView.center = CGPointMake(self.animalImageView.center.x + 400, self.animalImageView.center.y)
            // fade in
            self.animalImageView.alpha = 1
            // zoom in
            self.animalImageView.frame = CGRectMake(100, 20, 100, 200)
        }
    }
    */
}

