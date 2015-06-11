import UIKit

let longString = "Сегодня 11 июня 2015 года и занимаюсь тем, что делаю домашнее задание по 9 уроку, где необходимо создать текст! на 200!! символов!! Какой текст подойдет? Я решил выбрать произвольный тескст 123459403!"

var consonants = 0, vowels = 0, numbers = 0, symbols = 0

for char in longString{
    
    switch char {
        
        case "0"..."9": numbers++
        
        case "а", "я", "ы", "у", "е", "о", "и", "ю", "э" : vowels++
        
        case "б", "в", "г", "д", "ж", "з", "й", "к", "л", "м", "н", "п", "р", "с", "т", "ф", "х", "ц", "ч", "ш", "щ": consonants++
        
        default: symbols++
    }
}

println("гласных - \(vowels)\nсогласных - \(consonants)\nцыфер - \(numbers)\nсимволов - \(symbols)")


let age:UInt8 = 28

switch age{
    
    case 0,1: println("Младенчество")
    case 2,3: println("Раннее детство")
    case 4...6: println("Игровой возраст, дошкольный")
    case 7...12: println("Школьный возраст")
    case 13..<19: println("Юность")
    case 19..<35: println("Молодость")
    case 35...60: println("Взрослость")
    default: println("Старость")
}

var student = (name: "Петр", surname:"Иванов", patronymic: "Сергеевич")

var greetings = String()

switch student{
    
    case (let name, _, _) where name.lowercaseString.hasPrefix("а") || name.lowercaseString.hasPrefix("о"): greetings = student.name
    
    case (_, _, let patronymic) where patronymic.lowercaseString.hasPrefix("в") || patronymic.lowercaseString.hasPrefix("д"): greetings = student.name + " " + student.patronymic
    
    case (_, let surname, _) where surname.lowercaseString.hasPrefix("е") || surname.lowercaseString.hasPrefix("з"): greetings = student.surname
    
    default: greetings = student.surname + " " + student.name + " " + student.patronymic
}

println(greetings)



let point = (x:1 , y: 5)

switch point {
    
    case let (x, y) where x == y: println("Мимо")
    
    case let (x, y) where (x + y) <= 6: println("Убил")
    
    case let (x, y) where (x * y) % 2 == 0: println("Ранил")
    
    default: println("Мимо")
}