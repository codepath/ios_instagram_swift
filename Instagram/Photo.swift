//
//  Photo.swift
//  Instagram
//
//  Created by Timothy Lee on 3/16/15.
//  Copyright (c) 2015 Timothy Lee. All rights reserved.
//

import UIKit

@objc(Photo)
class Photo: NSObject {
    
    var standardResolutionURL: NSURL
    var user: User
    
    init(dictionary: NSDictionary) {
        var url = dictionary.valueForKeyPath("images.standard_resolution.url") as String
        standardResolutionURL = NSURL(string: url)!
        
        user = User(dictionary: dictionary["user"] as NSDictionary)
    }
    
    class func photos(dictionaries: [NSDictionary]) -> [Photo] {
        var photos = [Photo]()
        for dictionary in dictionaries {
            var photo = Photo(dictionary: dictionary)
            photos.append(photo)
        }
        return photos
    }
}
