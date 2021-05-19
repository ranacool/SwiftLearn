//: [Previous](@previous)

import Foundation

//defines own data types

struct sport {
    var name: String        //properties
    var isOlympicSport: Bool //computed properties
    
    var olympicStatus: String{
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        }   else {
            
            return"\(name) is not an Olympic sport"
        }
    }
}

var tennis = sport(name: "Tennis",isOlympicSport: true)

print(tennis.olympicStatus)

//property observer

struct Progress {
    var task : String
    var amount: Int {
    
    didSet {
        print("\(task) is now \(amount)% complete")
        //can also use willSet but is rarely used
    }
        
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

//methods- functions inside structures

struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let London = City(population: 9_000_000)
var tax = London.collectTaxes()

print(tax)

//mutating properties
//when changing properties inside structure

struct Person {
    var name: String
    
    mutating func makeAnonymous(){
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()

// Properties and Methods
//1.string is a structure

let string = "Do or do not, there is no try"

print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased()) //lot more are there

//2. arrays are also structs

var toys = ["woody"]
toys.append("Buzz")
toys.firstIndex(of: "Buzz")
toys.remove(at: 0)

//initializers
//memberwise initialiser by default
struct User {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.username = "two straws"

//self initialization

struct person1 {
    var name: String
    
    init(name: String) {
        print("\(name) was born")
        self.name = name
    }
}

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Family {
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}

var ed = Family(name: "Ed")
ed.familyTree //used lazy only when needed to access it

//using static

struct Student {
    static var classSize = 0  //works on all instances
    var name: String
    
    init(name:String) {
        self.name = name
        Student.classSize += 1
    }
}
var store = Student(name: "Suhent")
print(Student.classSize)
//access control

struct Social {
    public var id: String
    
    init(id: String) {
        self.id = id
    }
    
    func identify() -> String {
        return " My social security number is \(id)"
    }
}
let soc = Social(id: "12344")
//: [Next](@next)
