//
//  LionViewController.swift
//  Animals
//
//  Created by Max Luttrell on 11/3/16.
//  Copyright © 2016 Max Luttrell. All rights reserved.
//

import UIKit

class LionViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
