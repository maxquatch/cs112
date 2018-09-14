//: Exercise 4A
// CS112
// Max Luttrell

import UIKit

// Here, we create an array to track scores.  Each element
// contains a score for a given day; a nil means there was no
// game that day.  Thus, our array contains Int optionals.
let scores: [Int?] = [2, nil, 6, 3, nil, 5, 1, 9, nil, 0]


// suggestion: start small!  first, write some code which prints out if day 0 had a game or not.
print("---part 1---")
if scores[0] != nil {
    print("There was a game.")
} else {
    print("There was no game.")
}

// part 2 below...















// then, make a for loop which prints out if each day (day 0 through day 9) had a game or not.
print()
print("---part 2---")
for score in scores {
    if score != nil {
        print("There was a game.")
    } else {
        print("There was no game.")
    }
}
// part 3 below....

















// finally, modify your loop so that it counts how many days had a game instead of printing debug messages.
print()
print("---part 3---")
var numGames = 0
for score in scores {
    if score != nil {
        numGames += 1
    }
    // note: here, we don't even need an else!  If there wasn't a game, we don't need to do anything to numGames.
}
print("We had \(numGames) days with a game.")



