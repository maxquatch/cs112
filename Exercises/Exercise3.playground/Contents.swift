// CS112 Exercise 3

import UIKit

var numHellos = 5
var countHello = 0

while countHello < numHellos {
    countHello += 1
    print("hello")
}

countHello = 0
print("--------------")

while countHello < numHellos {
    countHello += 1
    if countHello % 2 == 0 {
        print("hello")
    } else {
        print("HELLO")
    }
}

//in your playground, create an array of four integers with values 1, 2, 3, and 4
var cards = [1, 2, 3, 4]

//change the value of the element in position 0 to 4
cards[0] = 4

//change the value of the element in position 3 to 1
cards[3] = 1

//try to change the value of the element in position 4.  what happens?
//cards[4] = 1

//append the value 11 to the end of your array
cards.append(11)

//print each element in the array to the debug area
print(cards)

//print the value of each element in the array multiplied by two
for card in cards {
    print(card*2, terminator: " ")
}
print("")

print(cards)
//print the total of the all the values in the array
//var countNumValue = 0
//var totalValue = 0
//
//for eachValue in cards {
//    while countNumValue < cards.count {
//        totalValue += eachValue
//        countNumValue += 1
//        
//    }
//}

//var cardSum = cards[0] + cards[1] + cards[2] + cards[3] + cards[4]

var cardSum = 0
//for card in cards {
//    cardSum += card
//}

for index in 0...cards.count-1 {
    cardSum += cards[index]
}
print(cardSum)
//print the average (mean) value of all the values in the array (note: the answer has decimal places!)

print(Double(cardSum) / Double(cards.count))
