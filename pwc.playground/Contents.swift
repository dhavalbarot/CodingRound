import UIKit

var greeting = "Hello, PWC"


class Person {
  var name: String
  
  init(name: String){
    self.name = name
  }
  
  static func +(left: Person, right: Person) -> Person {
    let newPerson = Person(name: left.name)
    newPerson.name += right.name
    return newPerson
  }
}

extension Person: CustomStringConvertible {
  var description: String {
    return self.name
  }
}

let p1 = Person(name: "Dhaval")
let p2 = Person(name: "Barot")
let p3 = p1 + p2
print(p3)


var dict:[String: String] = ["one": "value"]
if let x = dict["one"] {
  print(x)
}

/*
 Here we are using let to unwrap to optional value by which we think that it will only print x if value is not nil,
 but with the dictionary, it self a optional for getting and will print the nil values.
 to solve that we might need to unwrap it twise
*/

var dict2:[String: String?] = ["one": "value"]
if let x = dict2["one"] {
  print(x)
}

if let a = dict2["one"], let y = a {
  print(y)
}



extension Person: Equatable {
  static func ==(lhs: Person, rhs: Person) -> Bool {
    return lhs.name == rhs.name
  }
}

let p4 = Person(name: "Test")
let p5 = p4
let p6 = Person(name: "Test")

print(p4==p5)
print(p4===p5)

print(p4==p6)
print(p4===p6)
