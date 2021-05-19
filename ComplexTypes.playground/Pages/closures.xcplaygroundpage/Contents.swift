//: [Previous](@previous)

import Foundation

// creating a function and assigning it to a variable
let driving = {
    print("I'm driving to london")
}

driving()

//accepting parameter in closure

let driving1 = { (place: String) in
    print("We'll visit different \(place)")
}

driving1("London")

//returning value

let driving2 = { (place: String) -> String in
    return "I'm going to \(place)"
    
}

driving2("mexico")

//difference between function and closure is no parameter labels inside closure
//closure can be passed inside func as a parameter

func travel(actions : () -> Void) {
    print("I'm going")
    actions()
    print("I've arrived")
}

travel(actions:driving)

//trailing closure syntax used when closure as last parameter

func travel1(actions : () -> Void) {
    print("I'm going")
    actions()
    print("I've arrived")
}

//no () used because there are no other parameters up there
travel1 {
    print("I'm driving")
}

//closure with a parameter

func travel2(action: (String) -> Void){
    print("I'm goint now")
    action("London")
    print("I arrived")
}

travel2{ (place: String) in
print("I'm going to \(place)")
}

//closure as a parameter with return types

func travel3(action: (String) -> String){
    print("I'm")
    let description = action("Kathmandu")
    print(description)
    print("I finished")
}

travel3{(place:String) -> String in
    return "I'm going to \(place)"
}

//short hand parameter

func travel4(action: (String) -> String){
    print("Hello")
    let greet = action("suhent")
    print(greet)
}

travel4{
    "\($0)"
}

//closure as multiple parameters

func travel5(action: (String, Int) -> String){
    print("I'll")
    let description = action("Baneshwor", 60)
    print(description)
    print("I arrived")
}

travel5{
    "go to \($0) with a speed of \($1)"
}

//returning closure from a function

func travels() -> (String) -> Void{
    //capturing values
    var counter = 1
    return{
        print("\(counter) I'm going to \($0)")
        counter += 1
    }
}

let result = travels()
result("Bhaktapur")
//increasing counter by 1
result("Dubai")
//: [Next](@next)
