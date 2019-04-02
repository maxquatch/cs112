//
//  StopWatch.swift
//  StopWatch
//
//  Created by Maximilian Luttrell on 4/2/19.
//  Copyright © 2019 Maximilian Luttrell. All rights reserved.
//

import Foundation

// model class for stopwatch app

class StopWatch {
    // remembers when the user started the stopwatch
    // if nil, the stopwatch is not running.  else it has the time the started the stopwatch.
    var startTime: Date?
    
    // function called when user starts the stopwatch
    func start() {
        // change startTime to the current time
        startTime = Date()
    }
    
    // function called when user stops the stopwatch
    func stop() {
        // change startTime back to nil
        startTime = nil
    }
    
    // function returns how many seconds since user started the stopwatch
    // if stopwatch isn't running, return 0
    func elapsedTime() -> TimeInterval {
        if startTime != nil {
            // the watch is running, return the difference between current time and startTime
            return -startTime!.timeIntervalSinceNow
        } else {
            // the watch is not running
            return 0
        }
    }
    
    // return true if the stopwatch is running, return false if stopped
    func isRunning() -> Bool {
        if startTime != nil {
            return true
        } else {
            return false
        }
    }
}
