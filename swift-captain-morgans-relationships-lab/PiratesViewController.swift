//
//  PiratesViewController.swift
//  swift-captain-morgans-relationships-lab
//
//  Created by Flatiron School on 7/27/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
import UIKit
class PiratesViewController: UITableViewController{
    var arr = [Pirate]()
    //let store: DataStore = DataStore()
    let store = DataStore.sharedInstance
    override func viewDidLoad() {
        print(store)
        self.store.fetchData()
        }
    
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return store.pirates.count
    }
    
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("pirateCell", forIndexPath: indexPath)
        
        let unoPirate = store.pirates[indexPath.row]
        cell.textLabel?.text = unoPirate.name
        
    return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destination = segue.destinationViewController as! ShipsViewController
        let path = tableView.indexPathForSelectedRow!
        let daPirate = store.pirates[path.row]
        print(daPirate.name)
        
        //let daShips = daPirate.ships{
        destination.pirate = daPirate
        }
    
    
}