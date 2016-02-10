/*:

[Previous](@previous)

# Making types range-able
## Strings

*/

import Foundation

// Not safe! Academic example only! Handle with care!

extension String : ForwardIndexType {
    public func successor() -> String {
        var i = self.unicodeScalars.first!.value
        i += 1
        return String(Character(UnicodeScalar(i)))
    }
}

let stringRange = "a"..."z"
stringRange.dynamicType

let emojiMoonRange = "🌑"..."🌘"
Array(emojiMoonRange)
//: [Next](@next)
