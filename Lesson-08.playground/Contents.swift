import UIKit

var studentsDictionary = ["Ivanov I":3, "Petrov S":4, "Nikolaev V" :5, "Sergeev B":4,"Sogari F":1]

studentsDictionary.updateValue(5, forKey: "Ivanov I")

studentsDictionary.updateValue(2, forKey: "Sogari F")

println(studentsDictionary)

studentsDictionary["Mansurov B"] = 5

studentsDictionary["Sitdikov D"] = 5

studentsDictionary.removeValueForKey("Sogari F")

studentsDictionary.removeValueForKey("Sergeev B")

println(studentsDictionary)

var totalGrade = 0
var averageGrade = 0
for grade in studentsDictionary.values{
    totalGrade += grade
}

averageGrade = totalGrade / studentsDictionary.count

println("Общий балл = \(totalGrade)\nСредний балл = \(averageGrade)")

let countOfDaysInMonths = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

let namesOfMonths = ["January", "February", "March", "April", "May", "June", "July", "August", "Septebmer", "October", "November", "December"]

var dayInMonths = [String : Int]()

for (index, monthName) in enumerate(namesOfMonths) {
    
    dayInMonths[monthName]=countOfDaysInMonths[index]
    
}

for (name, length) in dayInMonths {
    
    println("\(name) has length \(length)")
    
}

for name in dayInMonths.keys {
    
    println("\(name) has length \(dayInMonths[name])")
    
}

var chessBoard = [String: Bool]()


for (index, letter) in  enumerate(["A", "B", "C", "D", "E", "F", "G", "H"]){
    for i in 1...8 {
        
        let color = (index + i)%2 == 0
        let addressOfCell = "\(letter)"+"\(i)"
        chessBoard[addressOfCell] = color
        
    }
}

println(chessBoard)

