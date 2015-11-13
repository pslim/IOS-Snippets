//
//  ViewController.swift
//  Back to Bach
//
//  Created by Paige Lim on 2015-11-02.
//  Copyright © 2015 Pslim. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer = AVAudioPlayer()
    
    var timer: NSTimer = NSTimer()
    
    @IBOutlet var volumeSlider: UISlider!
    @IBOutlet var scrubberSlider: UISlider!
    
    @IBAction func pressedPlayBarButtonItem(sender: AnyObject) {
        player.play()
    }
    
    @IBAction func pressedPauseBarButtonItem(sender: AnyObject) {
        player.pause()
    }
    
    @IBAction func pressedStopBarButtonItem(sender: AnyObject) {
        player.stop()
        setupPlayer()
    }

    @IBAction func movedVolumeSlider(sender: AnyObject) {
        player.volume = volumeSlider.value
    }
    
    @IBAction func movedScrubberSlider(sender: AnyObject) {
        player.currentTime = NSTimeInterval(scrubberSlider.value)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "updateScrubSlider", userInfo: nil, repeats: true)
        
        setupPlayer()
    }

    func updateScrubSlider() {
        scrubberSlider.value = Float(player.currentTime)
    }
    
    func setupPlayer() {
        do {
            try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("beethoven-19-1-bertoglio", ofType: "mp3")!))
            
            scrubberSlider.maximumValue = Float(player.duration)
        
        } catch {
            // Process error
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

