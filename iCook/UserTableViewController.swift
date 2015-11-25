//
//  UserTableViewController.swift
//  iCook
//
//  Created by Niranjan Ravichandran on 03/11/15.
//  Copyright © 2015 Team. All rights reserved.
//

import UIKit

class UserTableViewController: UITableViewController {
    
    var userObject: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.registerNib(UINib(nibName: "UserTableViewCell", bundle: nil), forCellReuseIdentifier: "UserTableViewCell")
        tableView.registerNib(UINib(nibName: "DishDetailsViewCell", bundle: nil), forCellReuseIdentifier: "DishDetailsCell")
        tableView.registerNib(UINib(nibName: "DescriptionTableViewCell", bundle: nil), forCellReuseIdentifier: "DescriptionCell")
        
        tableView.separatorStyle = .None
        tableView.allowsSelection = false
        
        for parent in self.navigationController!.navigationBar.subviews {
            for childView in parent.subviews {
                if(childView is UIImageView) {
                    if childView.frame.height == 0.5{
                        childView.removeFromSuperview()
                    }
                }
            }
        }
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
        return 4
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
            if indexPath.row == 0{
                let cell = tableView.dequeueReusableCellWithIdentifier("UserTableViewCell", forIndexPath: indexPath) as? UserTableViewCell
                cell?.userName.text = userObject.firstName + " " + userObject.lastName
                cell?.ratingsView.rating = Double(userObject.rating!)
                cell?.phoneNumber = userObject.phone
                cell?.mailId = userObject.email
                cell?.locationButton.setTitle(userObject.city, forState: .Normal)
                userObject.profilePic?.getDataInBackgroundWithBlock({ (imageData, imageError) -> Void in
                    if imageData != nil{
                        if let image = imageData{
                            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                                
                                cell?.profilePic.image = UIImage(data: image)
                            })
                        }
                    }
                })
                
                tableView.rowHeight = 190
                return cell!
            }else{
                let cell = tableView.dequeueReusableCellWithIdentifier("DescriptionCell", forIndexPath: indexPath) as? DescriptionTableViewCell
                
                if indexPath.row == 1{
                    cell?.titleLable.text = "About"
                    cell?.userDescription.text = userObject.description
                }else if indexPath.row == 2{
                    cell?.titleLable.text = "Menu"
                    cell?.userDescription.text = userObject.menu
                }else if indexPath.row == 3{
                    cell?.titleLable.text = "Address"
                    cell?.userDescription.text = userObject.address! + " " + userObject.city! + " " + userObject.state!
                }
                tableView.rowHeight = 80
                return cell!
            }
    }
    



    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return false if you do not want the specified item to be editable.
    return true
    }
    */
    
    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
    if editingStyle == .Delete {
    // Delete the row from the data source
    tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
    } else if editingStyle == .Insert {
    // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
    }
    */
    
    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
    
    }
    */
    
    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return false if you do not want the item to be re-orderable.
    return true
    }
    */
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
