/*:

[Previous](@previous)

# What can be "ranged"?

*/

import Foundation

let intRange = -2...2
intRange.dynamicType

//: Ranges cannot be constructed to go downward :(

//let downwardIntRange = 10...0

//: What about `Double`?

let doubleRange = -2.0...2.0
doubleRange.dynamicType

//: For `ClosedInterval` it is enough for `Elements` to conform to `Comparable` protocol

doubleRange.contains(-7)
// doubleRange[-7.0] // no subscript :(

//: And `String`s?

let stringRange = "abc"..."xyz"
stringRange.dynamicType

let char = "10"

switch (char) {
    case "0"..."9": "digit"
    case "10"..."99": "number below 100"
    case "a"..."z": "small letter"
    case "A"..."Z": "CAPITAL LETTER"
    default: "other"
}

//: "10" fell into first case, because lexicographically "10" < "2"

//: [Next](@next)
