//
//  PageContentViewController.swift
//  iCook
//
//  Created by Niranjan Ravichandran on 28/10/15.
//  Copyright © 2015 Team. All rights reserved.
//

import UIKit

class PageContentViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet var tableView: UITableView!
    var titleText: String?
    var titleText2: String?
    var pageIndex: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.registerNib(UINib(nibName: "DishesTableViewCell", bundle: nil), forCellReuseIdentifier: "DishCell")
        tableView.separatorStyle = .None
        tableView.rowHeight = 180
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("DishCell") as! DishesTableViewCell
        cell.sellerName.text = "John Doe"
        cell.dishName.text = "Fish Stew"

        return cell
    }
    
    
    
    }
