//
//  ViewController.swift
//  stopWatch
//
//  Created by Max Luttrell on 10/29/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    var stopWatch = StopWatch()
    var timer = Timer()
    
    
    @IBAction func stopButton(_ sender: UIButton) {
        print("stop button tapped")
        stopWatch.stop()
        timer.invalidate()
    }
    
    @IBAction func startButton(_ sender: UIButton) {
        print("start button tapped")
        
        if stopWatch.isRunning() == false {
            stopWatch.start()
            timeLabel.text = "0.0"
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateElapsedTime), userInfo: nil, repeats: true)
        }

        // this approach didn't work, because the while loop got stuck!
//        while stopWatch.isRunning() {
//            print(stopWatch.elapsedTime())
//            timeLabel.text = String(stopWatch.elapsedTime())
//        }
        
    }
    
    @objc func updateElapsedTime() {
        print("updateElapsedTime() was called")
        timeLabel.text = String(stopWatch.elapsedTime())
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

