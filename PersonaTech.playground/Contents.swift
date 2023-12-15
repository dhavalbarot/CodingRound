import UIKit

/* Write Generic Structure which can store list of items of any type and have it's own sorting mechanis. */

struct Items<T: Equatable> {
  var items: [T] = []
  
    mutating func sort() {
    items = items.sorted(by: { $0 > $1 })
    }
}

struct Person: Comparable {
    var name: String

    static func <(lhs: Person, rhs: Person) -> Bool {
        return lhs.name < rhs.name
    }
}


let p1 = Person(name: "dhaval")
let p2 = Person(name: "Barot")

let itemString = Items<String>(items: ["A", "B"]).sort()
let itemObj = Items<Person>(items: [p1, p2]).sort()
