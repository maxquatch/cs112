//
//  StopWatch.swift
//  stopWatch
//
//  Created by Max Luttrell on 10/29/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import Foundation

class StopWatch {
    // startTime is the time when the user called start().  if nil, the watch isn't running.
    var startTime: Date?
    
    func start() {
        // set startTime to current time
        startTime = Date()
    }
    
    func stop() {
        // set startTime back to nil
        print("stop() was called, elapsed time is \(elapsedTime())")
        startTime = nil
    }
    
    func elapsedTime() -> TimeInterval {
        // if not running, return 0
        if startTime == nil {
            return 0
        } else {
            // if running, return the current time - the startTime
            //            return startTime!.timeIntervalSinceNow * -1
            return -startTime!.timeIntervalSinceNow
        }
    }
    
    func isRunning() -> Bool {
        //        if startTime == nil {
        //            return false
        //        } else {
        //            return true
        //        }
        return startTime != nil
    }
}

