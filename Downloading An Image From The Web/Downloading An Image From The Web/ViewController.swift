//
//  ViewController.swift
//  Downloading An Image From The Web
//
//  Created by Paige Lim on 2015-11-18.
//  Copyright © 2015 Pslim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /*
        let url = NSURL(string: "https://upload.wikimedia.org/wikipedia/commons/6/6a/Johann_Sebastian_Bach.jpg")
        let urlRequest = NSURLRequest(URL: url!)
        

        let session = NSURLSession.sharedSession()
        let task = session.dataTaskWithRequest(urlRequest) {
            (data, response, error) -> Void in
            
            if error != nil {
                print(error)
            } else {
                if let bach = UIImage(data: data!) {
//                    self.image.image = bach
                    */
                    var documentsDirectory:String?
                    
                    var paths:[AnyObject] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
                    
                    if paths.count > 0 {
                        documentsDirectory = paths[0] as? String
                        
                        let savePath = documentsDirectory! + "/bach.jpg"
                        
                        //NSFileManager.defaultManager().createFileAtPath(savePath, contents: data, attributes: nil)
                        
                        self.image.image = UIImage(named: savePath)
                        
                    }/*
                }
            }
            
        }
        
        task.resume()
*/
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

