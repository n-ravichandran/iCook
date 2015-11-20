//
//  UserTableViewCell.swift
//  iCook
//
//  Created by Niranjan Ravichandran on 17/11/15.
//  Copyright © 2015 Team. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    @IBOutlet var profilePic: UIImageView!
    @IBOutlet var userName: UILabel!
    @IBOutlet var locationButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        profilePic.layer.cornerRadius = profilePic.frame.height/2
        profilePic.layer.borderColor = UIColor.whiteColor().CGColor
        profilePic.layer.borderWidth = 1
        profilePic.clipsToBounds = true
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
