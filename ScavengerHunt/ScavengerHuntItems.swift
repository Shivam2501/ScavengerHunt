//
//  ScavengerHuntItems.swift
//  ScavengerHunt
//
//  Created by Guest User on 2/26/15.
//  Copyright (c) 2015 Shivam Bharuka. All rights reserved.
//

import Foundation
import UIKit

class ScavengerHuntItems: NSObject {
    
    let Namekey = "NameKey"
    let PhotoKey = "PhotoKey"
    
    let name:String
    var photo: UIImage?
    var completed: Bool {
        get {
            return photo != nil
        }
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(name, forKey: Namekey)
        if let thePhoto = photo {
            aCoder.encodeObject(thePhoto, forKey: PhotoKey)
        }
    }
    
    required init(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObjectForKey(Namekey) as String
        photo = aDecoder.decodeObjectForKey(PhotoKey) as? UIImage
    }
    
    init(name: String){
        self.name=name
    }
}