/*: 
[Previous](@previous)

# Conformance to **CollectionType** protocol

*/

import Foundation

let range = -2...2

//: Convert to array
Array(range)

//: Get number of elements in range
range.count

//: Reverse the range
let reverse = range.reverse()
Array(reverse)

//: Get subsequences
let dropFirst = range.dropFirst(2)
Array(dropFirst)

let dropLast = range.dropLast(2)
Array(dropLast)

//: Filter elements into array
let filtered = range.filter { $0 % 2 == 0}
filtered

//: Lexigoraphical compare (cause why not?)

let firstRange = -4...(-2)
let secondRange = -3...(-1)
let thirdRange = 0...1
let fourthRange = -5...5

firstRange.lexicographicalCompare(secondRange)
secondRange.lexicographicalCompare(thirdRange)

fourthRange.lexicographicalCompare(thirdRange)

/*:

Conclusion - it is enough for the first element to be lower for one range to be considered "*before*" another

---
You can also use other methods defined in **CollectionType** on ranges like `split`, `map` or `reduce`, but let's jump to funnier parts :)
*/

//: [Next](@next)
