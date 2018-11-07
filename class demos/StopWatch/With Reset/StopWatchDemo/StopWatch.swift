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
    
    // lastElapsedTime: when the watch is stopped, remember the total elapsed time.
    var lastElapsedTime: TimeInterval = 0.0
    
    // start() - start the watch, i.e. set startTime to a Date object with the current time
    func start() {
        if isRunning() == false {
            print("Stopwatch Start")
            startTime = Date()
        }
    }
    
    // stop() - stop the watch, i.e. set startTime back to nil
    func stop() {
        if isRunning() {
            print("Stopwatch Stop.  Elapsed time: \(elapsedTime())")
            lastElapsedTime = elapsedTime()
            startTime = nil

        }
    }
    
    // reset() - reset the watch
    func reset() {
        if isRunning() == false {
            lastElapsedTime = 0
        }
    }
    
    // elapsedTime() - return elapsed time since start() called.  return 0 if not running.
    func elapsedTime() -> TimeInterval {
        if startTime == nil {
            return 0
        } else {
            return startTime!.timeIntervalSinceNow * -1 + lastElapsedTime
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
