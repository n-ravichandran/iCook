//
//  CooksTableViewCell.swift
//  iCook
//
//  Created by Niranjan Ravichandran on 18/11/15.
//  Copyright © 2015 Team. All rights reserved.
//

import UIKit

class CooksTableViewCell: UITableViewCell {

    @IBOutlet var cellBg: UIView!
    @IBOutlet var cookName: UILabel!
    @IBOutlet var cuisine: UILabel!
    @IBOutlet var userImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        cellBg.layer.cornerRadius = 6
        userImage.layer.cornerRadius = userImage.frame.height/2
        userImage.clipsToBounds = true
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
