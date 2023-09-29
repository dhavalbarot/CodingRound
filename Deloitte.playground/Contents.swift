import UIKit

let numbers = [0,1,1,3,1]

func checkForDuplicat(array: [Int]) -> Bool {
  
  var uniqueValues:Set<Int> = []
  for item in numbers {
    if uniqueValues.contains(item) {
      return true
    } else {
      uniqueValues.insert(item)
    }
  }
  
  return false
}

checkForDuplicat(array: numbers)
