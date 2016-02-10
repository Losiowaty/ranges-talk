/*:

[Previous](@previous)

# Making types range-able
## Downward range

*/

import Foundation

// Could be done better, using IntegerType protocol
struct MyInt : ForwardIndexType, IntegerLiteralConvertible {

    var i:Int = 0
    
    init(i: Int) {
        self.i = i
    }
    
    init(integerLiteral value: IntegerLiteralType) {
        self.i = value
    }
    
    func successor() -> MyInt {
        return MyInt(i: self.i - 1)
    }
   
}

func ==(lhs: MyInt, rhs: MyInt) -> Bool {
    return lhs.i == rhs.i
}

//let downwardRange = 10...0 // 💥

let correctDownwardRange:Range<MyInt> = 10...0
Array(correctDownwardRange)

//: [Next](@next)
