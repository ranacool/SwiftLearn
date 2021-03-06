//: [Previous](@previous)

import Foundation
//diffenreces between structs and classes
//1. need self initialiaztion for classes
class Dog {
    var name : String
    var breed : String
    
    init(name:String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "poopy", breed: "poodle")

//Inheritance/subclassing
class Poodle: Dog{
    init(name:String) {
        super.init(name: name, breed: "Poodle") //for child class
    }
}

let japanese = Poodle(name: "fucchu")

//overriding

class Dog2 {
    func makeNoise() {
        print("Woof!")
    }
}
//function override
class Poddle2: Dog2 {
    override func makeNoise() {
        print("Yip!")
    }
}

let poppy2 = Poddle2()
poppy2.makeNoise()

//final to not let inherit

final class Dog3 {
    var name : String
    var breed: String
    
    init(name: String, breed:String) {
        self.name = name
        self.breed = breed
    }
}

//copy
//classes points memory so copy changes 
class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin"

print(singer.name)

//deinitializers
class Person {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive")
    }
    
    func printGreetings() {
        print("Hello, I'm \(name)")
    }
    
    //deinitlizer
    deinit {
        print("\(name) is no more")
}
}

for _ in 1...3 {
    let person = Person()
    person.printGreetings()

    }
//mutating property

class nSinger {
    var name = "Taylor Swift"
}

let taylor = nSinger()
taylor.name = "Ed Sheeran"

//: [Next](@next)

