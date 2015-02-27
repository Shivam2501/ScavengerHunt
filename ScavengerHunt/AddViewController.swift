//
//  AddViewController.swift
//  ScavengerHunt
//
//  Created by Guest User on 2/26/15.
//  Copyright (c) 2015 Shivam Bharuka. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    
    var newItem: ScavengerHuntItems?

    @IBOutlet weak var textField: UITextField!
    
    @IBAction func cancel(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "DoneItem" {
            if let name = textField.text {
                if !name.isEmpty {
                    newItem = ScavengerHuntItems(name: name)
                }
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

