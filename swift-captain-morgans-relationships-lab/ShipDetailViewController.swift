//
//  ShipDetailViewController.swift
//  swift-captain-morgans-relationships-lab
//
//  Created by Flatiron School on 7/27/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
import UIKit
class ShipDetailViewController: UIViewController {
    @IBOutlet weak var shipNameLabel: UILabel!
    @IBOutlet weak var pirateNameLabel: UILabel!
    @IBOutlet weak var propulsionTypeLabel: UILabel!
    
    
    
    let store = DataStore.sharedInstance
    var shiiip: Ship!
    var name: String?
    var ship: Ship?
    var engine: Engine?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        shipNameLabel.text = shiiip.name
        pirateNameLabel.text = shiiip.pirate?.name
        propulsionTypeLabel.text = shiiip.engine?.propulsionType
        
        
//        shipNameLabel.text = ship?.name
//        pirateNameLabel.text = String(ship?.pirate?.name)
//        propulsionTypeLabel.text = String(ship?.engine?.propulsionType)
    }
    
    
}