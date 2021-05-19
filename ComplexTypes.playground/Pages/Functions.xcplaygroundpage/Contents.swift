//: [Previous](@previous)

import Foundation

func printname(){
    let message = "Suhent"
    print(message)
}

printname()

func square(number: Int)
{
    print(number*number)
}

print(square(number: 5))

func cube(number : Int) -> Int{
    return number * 3
}

print(cube(number: 2))

//can also write to string known as parameter label
//ommiting parameter label

func sayHello(_ name: String){
    print("Hello, \(name)")
}

sayHello("Suhent")


func sayHi(to name: String){
    print("Hi, \(name)")
}

sayHi(to: "ram")


func greet(_ person :String, nicely : Bool = true){
    
    if nicely == true{
        print("hello, \(person)")
    } else {
        print("hello again, \(person)")
    }
}

greet("taylor")

greet("taylor",nicely: false)


func variadic(num: Int...){
    for nums in num {
        print("\(nums) squared is \(nums * nums)")
    }
}

variadic(num: 2,3,4)


enum PasswordError: Error{
    case obvious
}

func CheckPassword(_ password:String)
    
    throws -> Bool{
        if password == "password"{
            throw PasswordError.obvious
        }
    return true
    
    
}

do{
    try CheckPassword("passwords")
    print("That password is great")
    
} catch{
    print("you can't use password")
}

//: [Next](@next)
