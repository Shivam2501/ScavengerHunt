//
//  ItemsManager.swift
//  ScavengerHunt
//
//  Created by Guest User on 2/26/15.
//  Copyright (c) 2015 Shivam Bharuka. All rights reserved.
//

import Foundation
import UIKit

class ItemsManager {
    var items = [ScavengerHuntItems]()
    
    lazy private var archivePath: String = {
    let fileManager = NSFileManager.defaultManager()
    let documentsDirectoryURLs = fileManager.URLsForDirectory(NSSearchPathDirectory.DocumentDirectory, inDomains: NSSearchPathDomainMask.UserDomainMask) as [NSURL]
        let archiveURL = documentsDirectoryURLs.first!.URLByAppendingPathComponent("ScavengerHuntItems", isDirectory: false)
        return archiveURL.path!
    
    }()
    
    func save(){
        NSKeyedArchiver.archiveRootObject(items, toFile: archivePath)
    }
    
    private func unarchiveSavedItems(){
        if NSFileManager.defaultManager().fileExistsAtPath(archivePath)
        {
            let savedItems = NSKeyedUnarchiver.unarchiveObjectWithFile(archivePath) as [ScavengerHuntItems]
            items+=savedItems
        }
    }
    
    init ()
    {
        unarchiveSavedItems()
    }
}