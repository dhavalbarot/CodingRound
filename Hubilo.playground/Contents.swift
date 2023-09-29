import UIKit

func findSecondLarges(array: [Int]) -> Int {
  
  if array.count < 2 {
    return -1
  }
  
  var largest = Int.min
  var secondLargest = Int.min
  
  for number in array {
    if number > largest {
      let temp = largest
      largest = number
      secondLargest = temp
    } else if number > secondLargest {
      secondLargest = number
    }
  }
  
  return secondLargest
}

findSecondLarges(array: [-6, -544, -38, -86, -436, -324])

var animals = ["fish", "cat", "chicken", "dog"]
animals.sort { (one: String, two: String) -> Bool in
    return one < two
}
print(animals)

animals.sort{($0<$1)}

