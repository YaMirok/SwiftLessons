import UIKit
//1

let str1="321"
let str2="54df"
let str3="443"
let str4="4f4"
let str5="11"


var sum=0

if let int1=str1.toInt(){

    sum+=int1

}

let int2=str2.toInt()
if int2 != nil{
    
    sum+=int2!

}

if let int3=str3.toInt(){
    
    sum+=int3
    
}

let int4=str4.toInt()
if int4 != nil{
    
    sum+=int4!
    
}

if let int5=str5.toInt(){
    
    sum+=int5
    
}

//2

var response1:(statusCode:Int,message:String?,errorMessage:String?)=(210,"It is ok 1",nil)
var response2:(statusCode:Int,message:String?,errorMessage:String?)=(404,nil,"Error! Page not found")
var response3:(statusCode:Int,message:String?,errorMessage:String?)=(290,"It is ok 2",nil)
var response4:(statusCode:Int,message:String?,errorMessage:String?)=(500,nil,"Error! Bad address")

if response1.statusCode > 200 && response1.statusCode < 300{
    println("Message = \(response1.message!)")
}
else{
    println("Error Message = \(response1.errorMessage!)")

}

if response2.statusCode > 200 && response2.statusCode < 300{
    println("Message = \(response2.message!)")
}
else{
    println("Error Message = \(response2.errorMessage!)")
    
}

if response3.statusCode > 200 && response3.statusCode < 300{
    println("Message = \(response3.message!)")
}
else{
    println("Error Message = \(response3.errorMessage!)")
    
}

if response4.statusCode > 200 && response4.statusCode < 300{
    println("Message = \(response4.message!)")
}
else{
    println("Error Message = \(response4.errorMessage!)")
    
}

var response5:(message:String?,errorMessage:String?)=("It is ok 1",nil)
var response6:(message:String?,errorMessage:String?)=(nil,"Error! Page not found")

if let message=response5.message{
    println("response5 has message=\(message)")
}
else if let errorMessage=response5.errorMessage{
    println("response5 has errorMessage=\(errorMessage)")
}
else {
    println("response5 has not message and errorMessage")
}

if let message=response6.message{
    println("response6 has message=\(message)")
}
else if let errorMessage=response6.errorMessage{
    println("response6 has errorMessage=\(errorMessage)")
}
else {
    println("response6 has not message and errorMessage")
}


var student1:(name:String!,carNumber:Int?,lastMark:Int?)

student1.name="Ivan"
student1.carNumber=432
student1.lastMark=nil

var carString:String
var markString:String

if let carNumber=student1.carNumber{
    carString="Номер машины этого студента = \(carNumber)"
}
else{
    carString="У студента нет машины"
}

if let mark=student1.lastMark{
    markString="Оцента за последнюю контрольную \(mark)"
}
else{
    markString="На последней контрольной студент не был!"
}

println("Данные по студенту с именем \(student1.name)")
println(carString)
println(markString)

var student2:(name:String!,carNumber:Int?,lastMark:Int?)

student2.name="Petr"
student2.carNumber=nil
student2.lastMark=5

if let carNumber=student2.carNumber{
    carString="Номер машины этого студента = \(carNumber)"
}
else{
    carString="У студента нет машины"
}

if let mark=student2.lastMark{
    markString="Оцента за последнюю контрольную \(mark)"
}
else{
    markString="На последней контрольной студент не был!"
}

println("Данные по студенту с именем \(student2.name)")
println(carString)
println(markString)

var student3:(name:String!,carNumber:Int?,lastMark:Int?)

student3.name="Vasya"
student3.carNumber=111
student3.lastMark=3

if let carNumber=student3.carNumber{
    carString="Номер машины этого студента = \(carNumber)"
}
else{
    carString="У студента нет машины"
}

if let mark=student3.lastMark{
    markString="Оцента за последнюю контрольную \(mark)"
}
else{
    markString="На последней контрольной студент не был!"
}

println("Данные по студенту с именем \(student3.name)")
println(carString)
println(markString)

var student4:(name:String!,carNumber:Int?,lastMark:Int?)

student4.name="Bulat"
student4.carNumber=476
student4.lastMark=5

if let carNumber=student4.carNumber{
    carString="Номер машины этого студента = \(carNumber)"
}
else{
    carString="У студента нет машины"
}

if let mark=student4.lastMark{
    markString="Оцента за последнюю контрольную \(mark)"
}
else{
    markString="На последней контрольной студент не был!"
}

println("Данные по студенту с именем \(student4.name)")
println(carString)
println(markString)

var student5:(name:String!,carNumber:Int?,lastMark:Int?)

student5.name="Alex"
student5.carNumber=nil
student5.lastMark=nil

if let carNumber=student5.carNumber{
    carString="Номер машины этого студента = \(carNumber)"
}
else{
    carString="У студента нет машины"
}

if let mark=student5.lastMark{
    markString="Оцента за последнюю контрольную \(mark)"
}
else{
    markString="На последней контрольной студент не был!"
}

println("Данные по студенту с именем \(student5.name)")
println(carString)
println(markString)


