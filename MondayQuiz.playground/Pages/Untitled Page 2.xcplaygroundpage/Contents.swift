//: [Previous](@previous)
/*:

## Looping Through a Dictionary

Create a new dictionary called ages. Create five different key value pairs where the key is a person's name and the value is an Int of their age

Write a function that takes a dictionary parameter and loops through it and adds one to every person's age. The function should return the updated dictionary.

Don't forget to call the function at the bottom
*/

import Foundation

var ages = ["James": 25, "Jodie": 25, "Seth": 22, "Cyd": 20, "Becca": 29]

func older(dictionary: [String: Int]) -> [String: Int] {
    var olderDictionary: [String: Int] = [:]
    for (name, age) in dictionary{
        olderDictionary[name] = age + 1
    }
    return olderDictionary
}

older(ages)

//: [Previous](@previous)
//: [Next](@next)
