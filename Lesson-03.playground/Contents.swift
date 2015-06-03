import UIKit

var hisResults=(catchUps:21,pushUps:33,sits:54)
var herResults=(catchUps:5,pushUps:12,sits:33)

println(hisResults)
println(herResults)

println("cathcUps \t\(hisResults.catchUps)")
println("pushUps \t\t\(hisResults.pushUps)")
println("sits \t\t\t\(hisResults.sits)")

println("cathcUps \t\(hisResults.0)")
println("pushUps \t\t\(hisResults.1)")
println("sits \t\t\t\(hisResults.2)")

var interimVariable=hisResults.catchUps
hisResults.catchUps=herResults.catchUps
herResults.catchUps=interimVariable

interimVariable=hisResults.pushUps
hisResults.pushUps=herResults.pushUps
herResults.pushUps=interimVariable

interimVariable=hisResults.sits
hisResults.sits=herResults.sits
herResults.sits=interimVariable

println(hisResults)
println(herResults)


let differenceTuple=(herResults.catchUps-hisResults.catchUps,herResults.pushUps-hisResults.pushUps,herResults.sits-hisResults.sits)

println(differenceTuple)
