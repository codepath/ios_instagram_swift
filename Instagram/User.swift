//
//  User.swift
//  Instagram
//
//  Created by Timothy Lee on 3/16/15.
//  Copyright (c) 2015 Timothy Lee. All rights reserved.
//

import UIKit

@objc(User)
class User: NSObject {
    
    var username: String
    var profilePictureUrl: NSURL
    
    init(dictionary: NSDictionary) {
        username = dictionary["username"] as String
        profilePictureUrl = NSURL(string: dictionary["profile_picture"] as String)!
    }
    
    class func users(dictionaries: [NSDictionary]) -> [User] {
        var users = [User]()
        
        for dictionary in dictionaries {
            var user = User(dictionary: dictionary)
            users.append(user)
        }
        
        return users
    }
   
}
