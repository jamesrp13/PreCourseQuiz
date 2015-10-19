//: [Previous](@previous)
/*:

## Making a Class

Create a new Class called Car. Give Car the following properties: make: String, model: String, year: Int, topSpeed: Int, and isStreetLegal: Bool optional.

Make an init method and initalize your class.

Print all of the properties. Unwrap the isStreetLegal optional. If it is street legal: print "Good to go". If it is not street legal: print "Pull over". If it is nil: print "Haven't checked"
*/

import Foundation


class Car{
    let make: String
    let model: String
    let year: Int
    let topSpeed: Int
    let isStreetLegal: Bool?
    
    init(make: String, model: String, year: Int, topSpeed: Int, isStreetLegal: Bool?) {
        self.make = make
        self.model = model
        self.year = year
        self.topSpeed = topSpeed
        self.isStreetLegal = isStreetLegal
    }
}

let myCar = Car(make: "Honda", model: "Civic", year: 1998, topSpeed: 105, isStreetLegal: nil)

func carLegality(car: Car) -> String {
    if let isMyCarLegal = car.isStreetLegal {
        if isMyCarLegal == true{
            return "it is completely street legal"
        } else {
            return "it may not be legal..."
        }
    } else {
        return "I've never actually checked whether or not it's street legal..."
    }
}

print("My car is a \(myCar.year) \(myCar.make) \(myCar.model). It maxes out at \(myCar.topSpeed) mph and \(carLegality(myCar))")

if let isMyCarLegal = myCar.isStreetLegal {
    if isMyCarLegal == true{
        print("Good to go")
    } else {
        print("Pull over")
    }
    
} else {
    print("Haven't checked")
}

//: [Previous](@previous)
//: [Next](@next)
