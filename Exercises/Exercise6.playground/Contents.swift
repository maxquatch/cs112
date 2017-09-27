// Exercise 6
// Max Luttrell, CCSF
// CS112

import UIKit

class Player {
    var name = ""
    var weight = 0.0
    var height = 0.0
    var age = 0
    func printInfo() {
        print("\(name)")
        print("\(weight) kg, \(height) m, \(age) yrs")
    }
    func incrementAge() {
        age += 1
    }
}

class BasketballPlayer : Player {
    var fieldgoals = 0
    var attempts = 0
    override func printInfo() {
        let percentage = Double(fieldgoals) / Double(attempts)
        super.printInfo()
        print("Fieldgoal percentage: \(percentage)")
    }
}


//Create a new class BaseballPlayer which is derived from Player.  It should have two properties: atBats, and hits, initialized to zero
class BaseballPlayer : Player {
    var atBats = 0
    var hits = 0
    
    override func printInfo() {
        let battingAverage = Double(hits) / Double(atBats)
        super.printInfo()
        print("Batting average: \(battingAverage)")
    }
}

//Override the printInfo() function to display the batting average, for which the formula is: hits / atBats.  Note: it should also display name, weight, height, age.

//Add some Swift code which creates two objects: one BaseballPlayer and one BasketballPlayer.  Initialize the objects with some values of your choosing, and call printInfo() on both.
var baseballPlayer1 = BaseballPlayer()
baseballPlayer1.name = "Mario"
baseballPlayer1.age = 25
baseballPlayer1.weight = 90
baseballPlayer1.height = 1.88
baseballPlayer1.hits = 25
baseballPlayer1.atBats = 50

var basketballPlayer1 = BasketballPlayer()
basketballPlayer1.name = "Michael Jordan"
basketballPlayer1.age = 52
basketballPlayer1.height = 2.00
basketballPlayer1.weight = 120
basketballPlayer1.fieldgoals = 50
basketballPlayer1.attempts = 50


basketballPlayer1.printInfo()
baseballPlayer1.printInfo()
//Call the incrementAge() function on your BaseballPlayer object, and call printInfo() one more time.  Does it work?  Why?

basketballPlayer1.incrementAge()
basketballPlayer1.printInfo()
