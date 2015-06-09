//Lesson 5

import UIKit

let seconds = ((17 - 1) + (11 - 1) * 30) * 24 * 60 * 60

let kvartal = 11 / 3

println("Я родился в \(kvartal)-м квартале")

var a1 = 4
var a2 = 5

let total = ((5+6) - (8 * 3)) - (5/10) + ++a1 - a2--

a1
a2


let figurePoint = (4, 2)


let x = figurePoint.0 % 2

let y = figurePoint.1 % 2

let colorOfSquare = (x == 0 && y == 0) ? "черной" : "белой"

println("Фигура стоит на \(colorOfSquare) клетке")
