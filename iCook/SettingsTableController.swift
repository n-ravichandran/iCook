//
//  SettingsTableController.swift
//  iCook
//
//  Created by Niranjan Ravichandran on 06/11/15.
//  Copyright © 2015 Team. All rights reserved.
//

import UIKit

class SettingsTableController: UITableViewController {
    
    let items: [String] = ["MyAccount", "About"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Settings"
        tableView.separatorStyle = .None
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
    
}
