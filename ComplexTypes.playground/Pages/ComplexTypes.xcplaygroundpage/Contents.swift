import UIKit

var str = "Hello, playground"

str = "ander"

//makes a constant
let name = "smith"

let a = [2,3,4,5]

let b = Set([2,5,7,3,1,2,4])

let address = (house:555, street:"Baneshwor", city:"KTM")

address.street

address.2

let heights =
[
    "Suhent" : "5 feet 10 inches",
    "Suvas" : "5 feet 5 inches"
]

heights["Suhent"]

heights["hemanti", default: "Not Found"]

//declaration for later

var teams = Dictionary <String , String>()

teams["Suhent"] = "Pokhara"

//heights["Bishal"] = "6 feet" That's a let


var score = Array<Int>()

score = [2,4,5,6,]


//enum


enum results{
    case success
    case failure
}

let result = results.success


enum activity {
    
    case running(destination: String, speed: Int)
    case talking(partner: String)
}

let talks = activity.talking(partner: "suhent")

let run = activity.running(destination: "baneshwor", speed: 23)


//range operator

let scores = 85

switch scores {

case 0..<50:
    print("you failed badly")
    
case 50..<85:
    print("you did ok")
default:
    print("you did great")
}

var str2 = """
hello \
suhent \
rana
"""

