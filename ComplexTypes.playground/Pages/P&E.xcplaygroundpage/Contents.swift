//: [Previous](@previous)

import Foundation

//POP: protocol object oriented programming
//reduces large inheritance to short

protocol Identifiable {
    var id: String {get set}
}

struct User : Identifiable {
    var id: String
}

func displayID(thing: Identifiable){
    print("My ID is \(thing.id)")
}

let boy = User(id: "boy")
displayID(thing: boy )

let girl = User(id: "girl")
displayID(thing: girl)
//protocols can inherit as many other protocols unlike classes

//extension allows to add methods to existing types

extension Int {
    func squared() -> Int {
        return self * self
    }
    
    var isEven: Bool {
        return self % 2 == 0
    }
}

let number = 8
number.squared()
number.isEven

//protocol extension. extends to a whole protocol

let pythons = ["Eric", "Graham", "John"]
let beatles = Set(["John","Paul","Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")
        
        for name in self {
            print(name)
        }
    }
}

pythons.summarize()

//Protocol-oriented programming
//provides default implementation for protocol methods

protocol Identify {
    var id: String {get set}
    func identity()
}

extension Identify {
    func identity() {
        print("My id is \(id).")
    }
}

struct Use: Identify {
    var id: String
}

let twostraws = Use(id: "twostraws")
twostraws.identity()

//: [Next](@next)
