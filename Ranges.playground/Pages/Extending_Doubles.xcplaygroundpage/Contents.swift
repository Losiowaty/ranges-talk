/*: 

[Previous](@previous)

# Making types range-able
## Double

*/

import Foundation

extension Double : ForwardIndexType {
    public func successor() -> Double {
        return self + 1.0
    }
}

let doubleRange = 0.0...10.0
doubleRange.dynamicType

//: So... what happens to subscripting now?

//doubleRange[2.0]
//doubleRange[2]
//doubleRange[Double(2)]
//doubleRange[Int(2)]

let value = doubleRange[2.0]
value.dynamicType

//: Side note - reverse on ranges with extended type elements returns a plain array
doubleRange.reverse()

//: [Next](@next)
