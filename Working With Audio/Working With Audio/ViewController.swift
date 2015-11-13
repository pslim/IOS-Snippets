//
//  ViewController.swift
//  Working With Audio
//
//  Created by Paige Lim on 2015-11-02.
//  Copyright © 2015 Pslim. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer = AVAudioPlayer()

    @IBOutlet var volumeSlider: UISlider!
    
    @IBAction func pressedPlayButton(sender: AnyObject) {
        player.play()
    }
    
    @IBAction func pressedPausedButton(sender: AnyObject) {
        player.pause()
    }
    
    @IBAction func pressedStopButton(sender: AnyObject) {
        player.stop()
    }
    
    @IBAction func movedSlider(sender: AnyObject) {
        player.volume = volumeSlider.value
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let audioPath = NSBundle.mainBundle().pathForResource("beethoven-19-1-bertoglio", ofType: "mp3")
        
        do {
            try player = AVAudioPlayer(contentsOfURL: NSURL (fileURLWithPath:audioPath!))
        } catch {
            // Process error
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

