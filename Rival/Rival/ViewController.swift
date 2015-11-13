//
//  ViewController.swift
//  Rival
//
//  Created by Paige Lim on 2015-10-31.
//  Copyright © 2015 Pslim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var players = [String]()

    @IBOutlet var playerTableView: UITableView!
    
    @IBAction func pressedSearchBarButtonItem(sender: AnyObject) {
        print("pressedSearchBarButtonItem")
    }
    
    @IBAction func pressedAddBarButtonItem(sender: AnyObject) {
        players.append("Stat")
        playerTableView.reloadData()
    }

    @IBAction func pressedClearBarButtonItem(sender: AnyObject) {
        players.removeAll()
        playerTableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        players.append("Stat")
        playerTableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let sectionLabel = UILabel(frame: CGRect(x: playerTableView.frame.width/2, y: 0, width: playerTableView.frame.width, height: playerTableView.frame.height/5))
        
        sectionLabel.text = "players:"
        sectionLabel.backgroundColor = UIColor.whiteColor()
        
        return sectionLabel
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "playerCell")
        cell.textLabel?.text = players[indexPath.row]
        
        return cell
    }

}

