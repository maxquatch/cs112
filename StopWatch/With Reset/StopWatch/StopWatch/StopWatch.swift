//
//  StopWatch.swift
//  StopWatch
//
//  Created by Max Luttrell on 10/24/17.
//  Copyright © 2017 Max Luttrell. All rights reserved.
//

import Foundation

class StopWatch {
    var startTime: Date?
    var totalTime: TimeInterval = 0
    
    func start() {
        // only start if not currently running
        if !isRunning() {
            // record the current time to startTime
            startTime = Date()
        }
    }
    
    func stop() {
        // only stop if currently running
        if isRunning() {
            totalTime = elapsedTime()
            startTime = nil
        }
    }
    
    func reset() {
        // only reset if not currently running
        if !isRunning() { // if isRunning() == false
            totalTime = 0
        }
    }
    
    func elapsedTime() -> TimeInterval {
        if startTime == nil {
            return 0
        } else {
            return startTime!.timeIntervalSinceNow * -1 + totalTime
        }
    }
    
    func isRunning() -> Bool {
        if startTime != nil {
            return true
        } else {
            return false
        }
    }
}
