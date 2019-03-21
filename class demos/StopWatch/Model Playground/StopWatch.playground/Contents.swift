import UIKit

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
}


// sample run to make sure our stopwatch works
var watch = StopWatch()
watch.start()
print(watch.elapsedTime())
sleep(1)
print(watch.elapsedTime())
sleep(1)
print(watch.elapsedTime())
watch.stop()
print(watch.elapsedTime())

