//
//  ViewController.swift
//  StopWatch
//
//  Created by Maximilian Luttrell on 4/2/19.
//  Copyright © 2019 Maximilian Luttrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonOutlet: UIButton!
    @IBOutlet weak var timeLabel: UILabel!
    var watch = StopWatch()
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func button(_ sender: Any) {
        print("button tapped")
        
        // start it if it's not currently running
        if watch.isRunning() == false {
            // change button to display stop since we now are running
            buttonOutlet.setTitle("Stop", for: .normal)
            watch.start()
            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateElapsedTime), userInfo: nil, repeats: true)
        } else {
            // stop the watch
            // change button to display start since we now stopped running
            buttonOutlet.setTitle("Start", for: .normal)
            watch.stop()
            // stop the timer from ever going again
            timer.invalidate()
        }
    }
    
    @objc func updateElapsedTime() {
        timeLabel.text = String(format: "%.1f",watch.elapsedTime())
    }
    
}

