//
//  GiraffeViewController.swift
//  Animals
//
//  Created by Max Luttrell on 11/3/16.
//  Copyright © 2016 Max Luttrell. All rights reserved.
//

import UIKit

class GiraffeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func backButton(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
}

