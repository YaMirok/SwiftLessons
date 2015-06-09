import UIKit

let countOfDaysInMonths = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

let namesOfMonths = ["January", "February", "March", "April", "May", "June", "July", "August", "Septebmer", "October", "November", "December"]

for countOfDays in countOfDaysInMonths {
    print("\(countOfDays)\t")
}
println("\n------------------------------------")
var monthsTuples = [(String, Int)]()

for var index=0;index<countOfDaysInMonths.count;index++ {
    println("Name of Month = \(namesOfMonths[index])\nLength=\(countOfDaysInMonths[index])")
    let newElement = (namesOfMonths[index], countOfDaysInMonths[index])
    
    monthsTuples.append(newElement)
}

println("------------------------------------")

for var index = monthsTuples.count-1; index>0; index-- {
    println("Name of Month = \(monthsTuples[index].0)\nLength=\(monthsTuples[index].1)")
}

var countOfDaysBeforeMyBirthday=0

for var index = 0; index < 10; index++ {
    countOfDaysBeforeMyBirthday+=countOfDaysInMonths[index]
}

countOfDaysBeforeMyBirthday+=17

println("------------------------------------")

println("До моего дня рождения с начала года всего лишь \(countOfDaysBeforeMyBirthday) дн." )

let str1="321"
let str2="54df"
let str3="443"
let str4="4f4"
let str5="11"


var arrayOfOptInt = [Int?]()

arrayOfOptInt.append(str1.toInt())
arrayOfOptInt.append(str2.toInt())
arrayOfOptInt.append(str3.toInt())
arrayOfOptInt.append(str4.toInt())
arrayOfOptInt.append(str5.toInt())


var sumByOptBinding = 0
var sumByForceUnwrap = 0
var sumByDefaultValue = 0

for intValue in arrayOfOptInt {
    
    if let value = intValue {
        
        sumByOptBinding += value
    
    }
    
    if intValue != nil {
    
        sumByForceUnwrap += intValue!
        
    }
    
    sumByDefaultValue += intValue ?? 0
    
}

println("------------------------------------")

println("Sum by optional binding = \(sumByOptBinding)")

println("Sum by force unwrap = \(sumByForceUnwrap)")

println("Sum by default value = \(sumByDefaultValue)")

var inverseAlphabetArray = [String]()

for letter in "abcdefghijklmnopqrstuvwxyz" {
    inverseAlphabetArray.insert("\(letter)", atIndex: 0)
}
println(inverseAlphabetArray)

