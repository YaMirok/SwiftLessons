//import UIKit
//import Foundation

func emptyFunction( closure : () -> ()){
    
    println("Start function")
    
    for value in 0...10 {
        
        println("value = \(value)")
        
    }
    
    println("Calling closure")
    
    closure()
    
    println("End function")
    
}

emptyFunction{
    println("I am from closure")
}



let arrayToSort = [4, 46, 73, 6, 33, 80, 10, 9, 5, 2, 53]


let sortedArray1 = sorted(arrayToSort){ $0 > $1}

sortedArray1

let sortedArray2 = sorted(arrayToSort){ $0 < $1}

sortedArray2


func getElement(fromArray a: [Int], byCondition con: (el1: Int, el2 : Int?) -> Bool) -> Int{
    
    var result : Int?
    
    for value in a{
        if con(el1: value, el2: result){
            result = value
        }
    }
    
    return result!
}

let maxElement = getElement(fromArray: arrayToSort, byCondition: { (el1 : Int, el2 : Int?) -> Bool in
    if el2 == nil{
        return true
    }
    return el1 > el2!
})

let minElement = getElement(fromArray: arrayToSort, byCondition: { (el1 : Int, el2 : Int?) -> Bool in
    if el2 == nil{
        return true
    }
    return el1 < el2!
})

func getStringElement(fromString str: String, byCondition con: (el1: UInt32, el2 : UInt32?) -> Bool) -> String{
    
    var result : UnicodeScalar?
    
    for scalar in str.unicodeScalars {
        if con(el1: scalar.value, el2: result?.value){
            result = scalar
        }
    }
    
    return String(result!)
}

let minSymbol = getStringElement(fromString: "gfgdgca", byCondition: { (el1 : UInt32, el2 : UInt32?) -> Bool in
    if el2 == nil{
        return true
    }
    return el1 < el2!
})

let maxSymbol = getStringElement(fromString: "gfgdgca", byCondition: {
    if $1 == nil{
        return true
    }
    return $0 > $1!
})



