//
//  ViewController.swift
//  StopWatch
//
//  Created by Maximilian Luttrell on 4/2/19.
//  Copyright © 2019 Maximilian Luttrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    var watch = StopWatch()
    var timer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func startButton(_ sender: Any) {
        print("start button tapped")
        
        // only start it if it's not currently running
        if watch.isRunning() == false {
            watch.start()
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateElapsedTime), userInfo: nil, repeats: true)
        }
    }
    
    
    
    @IBAction func stopButton(_ sender: Any) {
        print("stop button tapped, elapsed time is \(watch.elapsedTime())")
        
        // only stop it if it's currently running
        if watch.isRunning() {
            // stop the watch
            watch.stop()
            // stop the timer from ever going again
            timer.invalidate()
        }
    }
    
    @objc func updateElapsedTime() {
        timeLabel.text = String(watch.elapsedTime())
    }
    
}

