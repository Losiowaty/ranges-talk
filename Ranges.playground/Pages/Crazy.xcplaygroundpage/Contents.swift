/*:

[Previous](@previous)

# Crazy and somewhat practical example

*/

import Foundation

struct MyCrazyStruct : ForwardIndexType {
    var i = arc4random() % 20
    
    func successor() -> MyCrazyStruct {
        return MyCrazyStruct()
    }
}

func ==(lhs: MyCrazyStruct, rhs: MyCrazyStruct) -> Bool {
    return lhs.i == rhs.i
}

let crazyRange = MyCrazyStruct()...MyCrazyStruct()

//crazyRange.count
//crazyRange.count

//for crazyValue in crazyRange {
//    crazyValue.i
//}

//Array(crazyRange) // 💥

func convertToArray(crazyRange: Range<MyCrazyStruct>) -> [UInt32] {
    var array:[UInt32] = []
    array.dynamicType
    for value in crazyRange {
        array += [value.i]
    }
    return array
}

//convertToArray(crazyRange)
//convertToArray(crazyRange)
//convertToArray(crazyRange)

//: [Next](@next)
