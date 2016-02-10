/*:

[Previous](@previous)

# Making types range-able
## Double - decimals

*/

import Foundation

extension Double : ForwardIndexType {
    public func successor() -> Double {
        return self + 1.0
    }
}

//: But what if... 😈

let decimalRange = 0.2...2.6
//decimalRange.count

//: Conclusion: Ranges compute their elements on the fly.

//: [Next](@next)
