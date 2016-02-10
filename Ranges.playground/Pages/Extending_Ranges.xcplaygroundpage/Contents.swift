/*:

[Previous](@previous)

# Making types range-able
## Ranges

*/

import Foundation

extension Range : ForwardIndexType {
    public func successor() -> Range {
        let start = self.startIndex
        let end = self.endIndex
        return start...end
    }
}

let rangeRange = (0...1)...(0...2)
rangeRange.count

rangeRange[-5...6]

rangeRange.contains(0...1)

let weNeedToGoDeeper = ((0...1)...(0...2))...((0...5)...(0...7))

/*:

![](full.jpg)

*If it's stupid but it works, it isn't stupid.* - Unknown

[Next](@next) 
*/
