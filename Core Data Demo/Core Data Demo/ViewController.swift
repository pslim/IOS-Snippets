//
//  ViewController.swift
//  Core Data Demo
//
//  Created by Paige Lim on 2015-11-13.
//  Copyright © 2015 Paige Lim. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let appDel: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        let context: NSManagedObjectContext = appDel.managedObjectContext

        // insert into database
        /*
        let newUser = NSEntityDescription.insertNewObjectForEntityForName("Users", inManagedObjectContext: context)
        
        newUser.setValue("Paige", forKey: "username")
        newUser.setValue("myPassword", forKey: "password")
        
        do {
            try context.save()
        } catch {
            print("There was a problem!")
        }*/

        
        let request = NSFetchRequest(entityName: "Users")
        
        // database query
        /*
        request.predicate = NSPredicate(format: "username = %@", "Johnny")
        */
        request.returnsObjectsAsFaults = false
        
        do {
            let results = try context.executeFetchRequest(request)
            
            if (results.count > 0) {
                for result in results as! [NSManagedObject] {
                    
                    // update value
                    /*
                    result.setValue("Edwin", forKey: "username")
                    */
                    
                    // delete value
                    /*
                    context.deleteObject(result);
                    */

                    // save changes to database
                    /*
                    do {
                        try context.save()
                    } catch {
                        
                    }*/
                    
                    if let username = result.valueForKey("username") as? String {
                        print(username);
                    }
                }
            }
            
        } catch {
            print("Fetch Failed");
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

