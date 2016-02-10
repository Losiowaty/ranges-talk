/*:
[Previous](@previous)

# [ ]

*/

import UIKit
import Foundation

let range = -2...2

//range[0] // 💥

/*: 
From the docs : *To prevent confusion, in a context where `Element` is known to be an integer type, subscripting with `Element` is a compile-time error.*

---

But the same docs give us this generalise method :
*/

func brackets<Element : ForwardIndexType>(x: Range<Element>, i: Element) -> Element {
    return x[i] // Just forward to subscript
}

//: Question : what will the following statement return then?

//brackets(range, i: 0) // essentialy -> range[0]

/*:

To sum up, from the docs : *Axiom: for any `Range r`, `r[i] == i`.*

![](umm.png)

---

Let's check some things :

*/

range

//brackets(range, i: 0)
//range.contains(0)
//range.indexOf(0)
//
//brackets(range, i: 100)
//range.contains(100)
//range.indexOf(100)

//: [Next](@next)
