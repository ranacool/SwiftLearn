//: [Previous](@previous)

import Foundation


//for loop
let count = 1...10

for a in count{
    print("the numbers are \(a)")
}

for _ in 5...8 {
    print("yo")
}


//while loop

var num : Int

num = 1

while num<=10 {
    print(num)
    num += 1
}

//break multiple loop

outerLoop: for i in 1...10{
    for j in 1...10{
        let product = i * j
        print(product)
        
        if product == 50 {
            print("Bullseye")
            break outerLoop
        }
    }
}

//skipping

for i in 1...10{
    if i % 2 == 1 {
        continue
    }
    
    print(i)
}
//: [Next](@next)
