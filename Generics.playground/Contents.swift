import UIKit

//Learning Generics in Swift

var a = 10
var b = 20

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
  let temp = a
  a = b
  b = temp
}

print(a)
print(b)

var strA = "Dhaval"
var strB = "Barot"

func swapTwoString(_ a: inout String, _ b: inout String) {
  let temp = a
  a = b
  b = temp
}

swapTwoString(&strA, &strB)
print(strA)
print(strB)


//Here <T> is placehoder type which is important for the function
func swapItem<T>(_ a: inout T, _ b: inout T) {
  let temp = a
  a = b
  b = temp
}

swapItem(&a, &b)
print(a)
print(b)

swapItem(&strA, &strB)
print(strA)
print(strB)


//Using generics With Struct
struct Stack<Element> {
  var items:[Element] = []
  
  mutating func push(_ element: Element) {
    items.append(element)
  }
  
  mutating func pop() -> Element {
    return items.removeLast()
  }
}

extension Stack {
  var topItem: Element? {
    return items.last
  }
}

var stackOfStrings = Stack<String>()
stackOfStrings.push("uno")
stackOfStrings.push("dos")
stackOfStrings.push("tres")
stackOfStrings.push("cuatro")
print(stackOfStrings.items)

stackOfStrings.pop()
print(stackOfStrings.items)

//Write a program that returns and element at index if exist
func elementAt<T>(index: Int, in array: [T]) -> T? {
  if index < 0 {
    return nil
  }
      
  if index < array.count {
    return array[index]
  }
  
  return nil
}

elementAt(index: 3, in: [1,2,3,4,5])


//Addition
func addNumber<T: Numeric>(num1: T, num2: T) -> T {
  return num1 + num2
}

print(addNumber(num1: 10, num2: 10))
