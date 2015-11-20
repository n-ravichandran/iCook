//
//  DishDetailsViewController.swift
//  iCook
//
//  Created by Niranjan Ravichandran on 19/11/15.
//  Copyright © 2015 Team. All rights reserved.
//

import UIKit

class DishDetailsViewController: UIViewController {

    var dishObject: Dish!

    @IBOutlet var dishImagView: UIImageView!
    @IBOutlet var availability: UILabel!
    @IBOutlet var ingredients: UITextView!
    @IBOutlet var dishPrice: UILabel!
    @IBOutlet var userName: UILabel!
    @IBOutlet var userRatings: CosmosView!
    @IBOutlet var userImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
