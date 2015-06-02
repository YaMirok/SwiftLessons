import UIKit

println("UInt8= from \(UInt8.min) to \(UInt8.max)")
println("Int8= from \(Int8.min) to \(Int8.max)")

println("UInt16= from \(UInt16.min) to \(UInt16.max)")
println("Int16= from \(Int16.min) to \(Int16.max)")

println("UInt32= from \(UInt32.min) to \(UInt32.max)")
println("Int32= from \(Int32.min) to \(Int32.max)")

println("UInt64= from \(UInt64.min) to \(UInt64.max)")
println("Int64= from \(Int64.min) to \(Int64.max)")

let intConst=43
let floatConst:Float=13.4354
let doubleConst=54.434232432

let intSum=intConst+Int(floatConst)+Int(doubleConst)
let floatSum=Float(intConst)+floatConst+Float(doubleConst)
let doubleSum=Double(intConst)+Double(floatConst)+doubleConst


if Double(intSum) > doubleSum{
    println("it is amazing")
}
else
{
    println("Double bigger then Integer sum")
}