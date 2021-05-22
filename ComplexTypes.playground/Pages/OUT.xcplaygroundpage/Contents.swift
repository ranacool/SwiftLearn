//: [Previous](@previous)

import Foundation

//optional integer for null variable

var age: Int? = nil
age = 66

//unwrapping
//can't count nill memory

var name: String? = nil
//unwrapping used with if let
if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name")
}

//guard let similar to if let
//difference reamains usable

func greet(_ name: String?){
    guard let unwrapped = name else {
        print("You didn't provide a name")
        return
    }
    
    print("Hello,\(unwrapped)")
}

//force unwrapping using !

let str = "5"
let num = Int(str) //optional int

let numF = Int(str)!

//implicit unwrapping
//code might crash if no value
let numI : Int! = nil

//NIL coalescing
//will have any return value or default value but won't return nill

func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(for: 15) ?? "Anonymous"

//optional chaining for shortcuts

let names = ["John", "Paul", "George", "Ringo"]
//if no first name beatles become nil
let beatle = names.first?.uppercased()

//optional try as in throwing function

//if let result = try? checkPassword("password"){
//    print("Result was \(result)")
//}   else {
//    print("D'oh")
//}
//
//try! checkPassword("sekrit")
//print("OK")

//*****//

// faliable initializer
// init to return nil

struct Person {
    var id: String
    
    init?(id:String) {
        if id.count == 9{
            self.id = id
        }   else {
            return nil
        }
    }
}

//typecasting

class Animal {}
class Fish: Animal {}

class Dog:Animal{
    func makeNoise()  {
        print("Woof!")
    }
}
//creates array of animal because of type inference
//means knows the type animal
let pets = [Fish(),Dog(),Fish(),Dog()]

for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}
//: [Next](@next)
