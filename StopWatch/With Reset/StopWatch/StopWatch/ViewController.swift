//
//  ViewController.swift
//  StopWatch
//
//  Created by Max Luttrell on 10/24/17.
//  Copyright © 2017 Max Luttrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    
    var watch = StopWatch()
    var timer = Timer()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func startButton(_ sender: UIButton) {
        print("start button tapped")
        if watch.isRunning() == false {
            watch.start()
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateElapsedTime), userInfo: nil, repeats: true)
        }
        
        
    }
    
    @IBAction func stopButton(_ sender: UIButton) {
        print("stop button tapped")
        if watch.isRunning() {
            watch.stop()
            timer.invalidate()
        }
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        print("reset button tapped")
        if !watch.isRunning() {
            watch.reset()
            updateElapsedTime()
        }
    }

    func updateElapsedTime() {
        let seconds = Int(watch.elapsedTime()) % 60
        let minutes = Int(watch.elapsedTime()) / 60
        
        print(watch.elapsedTime())
        //timerLabel.text = String(format: "%.1f", watch.elapsedTime())
        timerLabel.text = String(minutes) + ":" + String(seconds)
        //timerLabel.text = "\(minutes):\(seconds)"
    }
    
}

