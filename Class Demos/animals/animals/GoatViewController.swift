//
//  GoatViewController.swift
//  animals
//
//  Created by Max Luttrell on 4/12/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import UIKit

class GoatViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
