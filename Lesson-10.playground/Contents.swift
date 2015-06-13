
func symbol1()->String{
    
    return "\u{1F601}"
    
}

func symbol2()->String{
    
    return "\u{1F6a1}"
    
}

func symbol3()->String{
    
    return "\u{1F6c1}"
    
}

func symbol4()->String{
    
    return "\u{1F691}"
    
}

println(symbol1() + " ++ " + symbol2() + " -- " + symbol3() + " == " + symbol4())




func getCellColor(letter l : String, row r : Int) -> String{
    
    let lettersArray = ["A", "B", "C", "D", "E", "F", "G", "H"]
    
    var indexOfLetter = -1
    
    for (index,letter) in enumerate(lettersArray){
        if letter == l{
            
            indexOfLetter = index + 1
            
            break
        }
    }
    if indexOfLetter == -1{
        return "Wrong column letter"
    }
    
    if (indexOfLetter + r) % 2 == 0 {
        return "Black"
    }
    
    return "White"
}

let colorOfA1 = getCellColor(letter: "A", row: 1)

println("Color of A1 = \(colorOfA1)")


func inverseSequence(array : [Int]) -> [Int]{
    
    return array.reverse()
    
}

func inverseSequence(range : Int...) -> [Int]{
    
    let array = range as [Int]
    
    return inverseSequence(array)
    
}

inverseSequence(1,2,4,5,6,7,7,88)

var tmpArray = [1,2,4,5,6,7,7,88]

func inverseArrayWithInOut(inout array : [Int]){
    
    array = array.reverse()
    
}

inverseArrayWithInOut(&tmpArray)

tmpArray




func processString(str:String) ->String{
    var result = ""
    
    for letter in str.lowercaseString{
        
        switch letter{
        
        case "а", "я", "ы", "у", "е", "о", "и", "ю", "э" : result += String(letter).uppercaseString
        case "б", "в", "г", "д", "ж", "з", "й", "к", "л", "м", "н", "п", "р", "с", "т", "ф", "х", "ц", "ч", "ш", "щ", "ь", "ъ": result += String(letter)
        
        case " ":result += String(letter)
            
        case "0": result += "zero"
        case "1": result += "one"
        case "2": result += "two"
        case "3": result += "three"
        case "4": result += "four"
        case "5": result += "five"
        case "6": result += "six"
        case "7": result += "seven"
        case "8": result += "eight"
        case "9": result += "nine"
        default: break
        
        }
    }
    return result
}
let longString = "Сегодня 11 июня 2015 года и занимаюсь тем, что делаю домашнее задание по 9 уроку, где необходимо создать текст! на 200!! символов!! Какой текст подойдет? Я решил выбрать произвольный тескст 123459403!"

let newString = processString(longString)

println(newString)