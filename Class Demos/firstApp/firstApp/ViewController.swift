//
//  ViewController.swift
//  firstApp
//
//  Created by Max Luttrell on 3/1/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var greeting = "viewDidLoad was called"
    var numTimes = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        numTimes += 1
        print("viewDidLoad was called.  numTimes is \(numTimes)")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        numTimes += 1
        print("viewDidAppear was called.  numTimes is \(numTimes)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        print("didReceiveMemoryWarning was called")
    }

}


