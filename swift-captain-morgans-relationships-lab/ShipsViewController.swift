//
//  ShipsViewController.swift
//  swift-captain-morgans-relationships-lab
//
//  Created by Flatiron School on 7/27/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
import UIKit
class ShipsViewController: UITableViewController{
    var pirate: Pirate?
    var bunchOfShips = Set<Ship> ()
    
    
    //let store: DataStore = DataStore()

    let store = DataStore.sharedInstance

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.store.fetchData()
        tableView.reloadData()
        
 
        
        
       
    }
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        bunchOfShips = pirate!.ships!
        store.fetchData()
        tableView.reloadData()
    }
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.bunchOfShips.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("shipCell", forIndexPath: indexPath)
        let daShips = Array(bunchOfShips)
        let unoShip = daShips[indexPath.row]
        cell.textLabel?.text = unoShip.name
        
        return cell
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destination = segue.destinationViewController as! ShipDetailViewController
        let path = tableView.indexPathForSelectedRow
        let daShips = Array(bunchOfShips)

        //destination.ship = daShips[(path?.row)!]
        destination.shiiip = daShips[(path?.row)!]
        
//        let daShip = store.pirates[path!.row]
//        if let stuffToPass = pirateName.name{
//        destination.name = stuffToPass
//        }
    }
    
    
    
    
}