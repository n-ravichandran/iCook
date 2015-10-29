//
//  DishesTableViewCell.swift
//  iCook
//
//  Created by Niranjan Ravichandran on 27/10/15.
//  Copyright © 2015 Team. All rights reserved.
//

import UIKit

class DishesTableViewCell: UITableViewCell {

    @IBOutlet var userImage: UIImageView!
    @IBOutlet var sellerName: UILabel!
    @IBOutlet var dishImage: UIImageView!
    @IBOutlet var dishName: UILabel!
    @IBOutlet var cellBg: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        cellBg.layer.cornerRadius = 6
        dishImage.layer.cornerRadius = 20
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
