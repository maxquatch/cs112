//: Playground - noun: a place where people can play

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
            return startTime!.timeIntervalSinceNow * -1
        }
    }
}

var watch = StopWatch()
watch.elapsedTime()
watch.start()
sleep(1)
print("elapsed time: \(watch.elapsedTime())")
sleep(1)
print("elapsed time: \(watch.elapsedTime())")
sleep(1)
print("elapsed time: \(watch.elapsedTime())")
watch.stop()

