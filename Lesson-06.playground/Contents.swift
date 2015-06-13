
let str1="321"
let str2="54df"
let str3="443"
let str4="4f4"
let str5="11"

let strNum1=str1.toInt() != nil ? str1 : "nil"
let strNum2=str2.toInt() != nil ? str2 : "nil"
let strNum3=str3.toInt() != nil ? str3 : "nil"
let strNum4=str4.toInt() != nil ? str4 : "nil"
let strNum5=str5.toInt() != nil ? str5 : "nil"

let sum = (str1.toInt() ?? 0) + (str2.toInt() ?? 0) + (str3.toInt() ?? 0) + (str4.toInt() ?? 0) + (str5.toInt() ?? 0)

let interpolString = "\(strNum1) + \(strNum2) + \(strNum3) + \(strNum4) + \(strNum5) = \(sum)"

let concatString = strNum1 + " + " + strNum2 + " + " + strNum3 + " + " + strNum4 + " + " + strNum5 + " = " + String(sum)

let str = "\u{1F601}\u{1F6a1}\u{1F6c1}\u{1F691}\u{1F613}"

(str as NSString).length
count(str)

let letterToFound : Character = "s"
var index = 0
for letter in "abcdefghijklmnopqrstuvwxyz" {
    if letter == letterToFound {
        break
    }
    ++index
}

println("Искомая буква(\(letterToFound)) расположена под номером \(index)")
