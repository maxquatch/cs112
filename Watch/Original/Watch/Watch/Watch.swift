//
//  Watch.swift
//  Watch
//
//  Created by Max Luttrell on 10/20/16.
//  Copyright © 2016 Max Luttrell. All rights reserved.
//

import Foundation

class Watch {
    // startTime: when the watch is started, remember the current time in startTime.
    //            if nil, the watch has not been started.
    var startTime: NSDate?
    
    // start() - start the watch, i.e. set startTime to a NSDate object with the current time
    func start() {
        print("watch start")
        startTime = NSDate()
    }

    // stop() - stop the watch, i.e. set startTime to nil
    func stop() {
        print("watch stop")
        startTime = nil
    }
    
    // elapsedTime() - return elapsed time since start() called.  return 0 if not running.
    func elapsedTime() -> NSTimeInterval {
        if startTime == nil {
            return 0
        } else {
            return -(startTime!.timeIntervalSinceNow)
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
