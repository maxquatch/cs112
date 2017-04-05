//
//  StopWatch.swift
//  StopWatchDemo
//
//  Created by Max Luttrell on 3/21/17.
//  Copyright © 2017 Max Luttrell. All rights reserved.
//

import Foundation

class StopWatch {
    // startTime: when the watch is started, remember the current time in startTime.
    //            if nil, the watch is not running
    var startTime: Date?
    var resumeTime: TimeInterval = 0.0
    
    // start() - start the watch, i.e. set startTime to a Date object with the current time
    func start() {
        print("Stopwatch Start")
        startTime = Date()
    }
    
    // stop - stop the watch, i.e. set startTime back to nil
    func stop() {
        print("Stopwatch Stop.  Elapsed time: \(elapsedTime())")
        resumeTime = elapsedTime()
        startTime = nil
    }
    
    // reset - reset the watch, i.e. zero out the resumeTime
    func reset() {
        resumeTime = 0.0
    }
    
    // elapsedTime() - return elapsed time since start() called.  return 0 if not running.
    func elapsedTime() -> TimeInterval {
        if startTime == nil {
            return 0
        } else {
            return (startTime!.timeIntervalSinceNow * -1) + resumeTime
        }
    }
    
    // isRunning() - return true if watch is running, false if not
    func isRunning() -> Bool {
        if startTime == nil {
            return false
        } else {
            return true
        }        
    }
}
