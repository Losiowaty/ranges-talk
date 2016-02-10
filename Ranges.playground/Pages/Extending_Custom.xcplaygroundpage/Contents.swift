/*:

[Previous](@previous)

# Making types range-able
## Custom types

*/

import Foundation

struct MyStruct : ForwardIndexType {
    var i = 0
    
    init(i: Int) {
        self.i = i
    }
    
    func successor() -> MyStruct {
        return MyStruct(i: self.i + 1)
    }
}

//: Previously extended types were already `Equatable`

func ==(lhs: MyStruct, rhs: MyStruct) -> Bool {
    return lhs.i == rhs.i
}

let myRange = MyStruct(i: 0)...MyStruct(i: 10)

//myRange[4] // 💥

let check1 = myRange[MyStruct(i: 4)]
check1.i

let check2 = myRange[MyStruct(i: 100)]
check2.i
myRange.contains(check2)

//: [Next](@next)
