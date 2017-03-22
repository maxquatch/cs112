//
//  ViewController.swift
//  StopWatchDemo
//
//  Created by Max Luttrell on 3/21/17.
//  Copyright © 2017 Max Luttrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    // StopWatch is our model class.  Create one instance of it here.
    let watch = StopWatch()
    // Timer is a builtin class which provides timer functionality, e.g. do something once per second
    var timer = Timer()
    
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: Actions / Methods
    @IBAction func startButton(_ sender: UIButton) {
        print("start button tapped")
        
        // only start the watch if the watch isn't running
        if watch.isRunning() == false {
            // call watch's start function
            watch.start()
            // set the timer to fire once per second and call our updateElapsedTime() function
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateElapsedTime), userInfo: nil, repeats: true)
        }
    }

    @IBAction func stopButton(_ sender: UIButton) {
        print("stop button tapped")
        
        // only stop the watch if it is running
        if watch.isRunning() {
            // stop the watch
            watch.stop()
            // tell the timer to stop firing
            timer.invalidate()
        }
    }

    func updateElapsedTime() {
        print("updateElapsedTime called")
        timeLabel.text = String(watch.elapsedTime())
    }
}

