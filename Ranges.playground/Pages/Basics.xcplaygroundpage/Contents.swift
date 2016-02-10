/*: 
[Previous](@previous)

# Basics

*/
import Foundation

let closedRange = -10...10
closedRange.dynamicType

let openRange = -10..<11
openRange.dynamicType

closedRange == openRange

closedRange.first
closedRange.last

closedRange.startIndex
closedRange.endIndex
/*: 
Conclusion : Range doesn't store the last element. It stores the one **after** the last.
A consequence of this is that a range of `Int`s can never contain `Int.max` (though it may be the `endIndex`
*/

let optionalRange:Range<Int>? = -10...10
optionalRange.dynamicType

//let rangeOfOptionals:Range<Int?> // 💥
/*: 
Conclusion : elements of Range must conform to **ForwardInexType** protocol.

---
You can create empty ranges, though I don't know what for :)

*/

let emptyRange = 0..<0
emptyRange.isEmpty
emptyRange.startIndex
emptyRange.endIndex

//: Using ranges to get sub-arrays

let arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
arr[1...4]

//: Using ranges in **for in** and **switch**

for element in 0...10 {
    element
}

let a = 17

switch (a) {
    case -10..<0:
        print("minus")
    
    case 0..<10:
        print("digit")
    
    case 10..<100:
        print("number")
    
    default:
        print("default")
}

let switchRange = 0...2

switch (switchRange) {
    case -10..<0:
        print("minus")
        
    case -2...2:
        print("what about?")
        
    case 0..<2:
        print("is this the right one?")
        
    case 0...2:
        print("or maybe this?")
        
    default:
        print("default")
}

closedRange.contains(5)
closedRange.contains(15)

//closedRange.contains(-2...2) // 💥

/*:
Conclusion : you cannot check if a range contains another


[Next](@next)
*/
