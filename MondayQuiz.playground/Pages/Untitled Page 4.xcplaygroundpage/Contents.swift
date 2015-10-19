//: [Previous](@previous)
/*:

## Control Flow

Write a function that prints the numbers from 1 to 100. But for multiples of three print “Dev” instead of the number and for the multiples of five print “Mountain”. For numbers which are multiples of both three and five print “DevMountain”.
*/

import Foundation

//Did this first using if statements because I couldn't figure out how to evaluate both i%3 and i%5 using a switch

func oneToOneHundred(){
    for (var i = 1; i <= 100; i++) {
        if i%3==0 && i%5==0 {
            print("DevMountain")
        } else if i%3==0 {
            print("Dev")
        } else if i%5==0 {
            print("Mountain")
        } else {
            print("\(i)")
        }
    }
}


oneToOneHundred()

//Then I used documentation and discovered tuples, making the switch statement possible
func betterOneToOneHundred(){
    for (var i = 1; i <= 100; i++) {
        let divisibleBy = (i%3,i%5)
        switch divisibleBy{
        case (0,1...5):
            print("Dev")
            break
        case (1...3,0):
            print("Mountain")
            break
        case (0,0):
            print("DevMountain")
            break
        default:
            print("\(i)")
        }
    }
}

betterOneToOneHundred()

//: [Previous](@previous)
//: [Next](@next)

