//
//  UserModel.swift
//  iCook
//
//  Created by Niranjan Ravichandran on 17/11/15.
//  Copyright © 2015 Team. All rights reserved.
//

import Foundation
import Parse

struct User {
    
    let firstName: String!
    let lastName: String!
    let phone: String!
    let email: String!
    let profilePic: PFFile?
    let role: Int!
    let menu: [String]?
    let cuisine: String?
    let rating: Int?
    
    init(responseObject: PFObject){
        
        self.firstName = responseObject["FirstName"] as? String
        self.lastName = responseObject["LastName"] as? String
        self.phone = responseObject["PhoneNumber"] as? String
        self.menu = responseObject["Menu"] as? [String]
        self.email = responseObject["email"] as? String
        self.role = responseObject["Role"] as? Int
        self.profilePic = responseObject["Photo"] as? PFFile
        self.cuisine = responseObject["Cuisine"] as? String
        self.rating = responseObject["Ratings"] as? Int
    }
    
}