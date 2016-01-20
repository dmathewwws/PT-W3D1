//: Playground - noun: a place where people can play

import UIKit

//: ## Review
//:
//: Variables and types
//: Functions
//: Classes


let name = "danny"
let number:Int

number = 20

func area(width:Int, height:Int) -> Int? {
    return width * height
}

class Shape {
    
    
    func area() -> Int {
        return 0
    }
    
}

class Rectangle: Shape {
    
    var width:Int
    var height:Int
    
    init(aWidth:Int, aHeigth:Int) {
        width = aWidth
        height = aHeigth
    }
    
    override func area() -> Int {
        return width * height
    }
    
}

class Triangle: Shape {
    var base:Int
    var height:Int
    
    init(aBase:Int, aHeigth:Int) {
        base = aBase
        height = aHeigth
    }
    
    override func area() -> Int {
        return base * height / 2
    }

}

let rect1 = Rectangle(aWidth: 5, aHeigth: 5)
let rect2 = Rectangle(aWidth: 5, aHeigth: 10)

rect1.area()
rect2.area()

let triangle1 = Triangle(aBase: 5, aHeigth: 10)
triangle1.area()


//: ## Arrays
//:
//: * Store a collection of objects
//: * Everything must be the same type
//: * Arrays are ordered and indexed
//: * Indexes start at zero
//:

var teachers = ["danny", "cory", "renato"]

teachers[0]
teachers[1]

for teacher1 in teachers {
    
    print("My favourite teacher is \(teacher1)")
    
}

let rectangles = [rect1, rect2, triangle1]

teachers.append("Jeremy")

teachers

//: ## Dictionary
//:
//: * Like Arrays but instead of indexes you use keys and values


var airports:[String:String] = [
    "YVR" : "Vancouver",
    "YYZ" : "Toronto",
    "YYC" : "Calgary"
]

airports["YVR"]

airports["SF"] = "San Franciso"

//: ## Optionality
//:
//: We need a way to represent a value that might not be there, and Swift uses `?` and `nil` to represent things that are not there.
//: Optionals need to be unwrapped to be used
//: Optionals are unwrapped in a few ways
//:
//: * Force unwrapping 🚫
//: * Conditional unwrapping 👍
//:

teachers = ["danny", "cory", "renato"]

let location = teachers.indexOf("cory")

if let myLocation = teachers.indexOf("cory") {
    
    print(myLocation)
    print(teachers[myLocation])
    
}else {
    print("teacher not found")
    
}

