import UIKit

///Sort and Search an given array with different mechanism


///
///1 - Bubble Sort / Simple Sort
///
func bubbleSort(array: [Int]) -> [Int] {
  var sortedArray = array
  
  for i in 0..<array.count {
    for j in 0..<array.count {
      if sortedArray[i] < sortedArray [j] {
        let temp = sortedArray [j]
        sortedArray[j] = sortedArray[i]
        sortedArray[i] = temp
      }
    }
  }
  
  return sortedArray
}

print(bubbleSort(array: [7,3,2,3,9,1,4,3]))

///
///2 - Merge Sort
///
func merge(reqArray: [Int]) -> [Int] {
  
  let mid = Int(reqArray.count/2)
  
  var startIndex = 0
  var midIndex = mid
  var result:[Int] = []
  
  while(startIndex < mid && midIndex < reqArray.count) {
    if reqArray[startIndex] < reqArray[midIndex] {
      result.append(reqArray[startIndex])
      startIndex += 1
    } else {
      result.append(reqArray[midIndex])
      midIndex += 1
    }
  }
  
  while(startIndex < mid) {
    result.append(reqArray[startIndex])
    startIndex += 1
  }
  
  while(midIndex < reqArray.count) {
    result.append(reqArray[midIndex])
    midIndex += 1
  }
  
  return result
}

func mergeSort(reqArray: [Int]) -> [Int] {
  let resultArray = reqArray
  
  if reqArray.count > 1 {
    let mid = Int(reqArray.count / 2)
    var result = mergeSort(reqArray: Array(resultArray[0..<mid]))
    result.append(contentsOf: mergeSort(reqArray: Array(resultArray[mid..<reqArray.count])))
    return merge(reqArray: result)
  }
  return resultArray
}

print(mergeSort(reqArray: [7,3,2,3,9,1,4,3,8]))

///
///3 - Quick Sort
///
func getLesserValues(reqArray: [Int], pivot: Int) -> [Int] {
  var result:[Int] = []
  for item in reqArray {
    if item <= pivot {
      result.append(item)
    }
  }
  
  return result
}

func getGreaterValues(reqArray: [Int], pivot: Int) -> [Int] {
  var result:[Int] = []
  for item in reqArray {
    if item > pivot {
      result.append(item)
    }
  }
  
  return result
}

func quickSort(reqArray: [Int]) -> [Int] {
  
  if reqArray.count == 1 {
    return reqArray
  }
  
  let pivot = reqArray[Int(reqArray.count/2)]
  
  //let lesserValues = reqArray.filter({ $0 <= pivot})
  //let greaterValues = reqArray.filter({ $0 > pivot})
  
  let lesserValues = getLesserValues(reqArray: reqArray, pivot: pivot)
  let greaterValues = getGreaterValues(reqArray: reqArray, pivot: pivot)
  
  return quickSort(reqArray: lesserValues) + [pivot] + quickSort(reqArray: greaterValues)
}

print(mergeSort(reqArray: [7,3,2,3,9,1,4,3,8]))

///
///4 - Dutch Flag Problem
///Sort an array with three different elements ie: [0, 1, 2, 0, 0, 2, 1, 2, 1]
///Result: [0, 0, 0, 1, 1, 1, 2, 2, 2]
///
func DNFP(array: inout [Int]) {
  
  var lowPointer = 0
  var midPointer = 0
  var highPointer = array.count-1
  
  while(midPointer <= highPointer) {
    switch(array[midPointer]) {
    case 0:
      let temp = array[lowPointer]
      array[lowPointer] = array[midPointer]
      array[midPointer] = temp
      
      lowPointer += 1
      midPointer += 1
      break
    case 1:
      midPointer += 1
      break
    case 2:
      let temp = array[highPointer]
      array[highPointer] = array[midPointer]
      array[midPointer] = temp
      
      highPointer -= 1
      break
    default:
      continue
    }
  }
}

var req = [0,1,2,0,0,2,1,2,1]
DNFP(array: &req)
print(req)


///
///4 - Bindary Search
///Search an element in array
///
func binarySearch(array: [Int], start: Int, end: Int, element: Int) -> Int {
  if end >= start {
    let mid = Int((start+end)/2)
    
    if array[mid] == element {
      return mid
    }
    
    if array[mid] > element {
      return binarySearch(array: array, start: start, end: mid-1, element: element)
    }
    
    return binarySearch(array: array, start: mid+1, end: end, element: element)
  }
  
  return -1
}

let searchArray = [1, 2, 3, 4, 5, 7, 9, 10]
print(binarySearch(array: searchArray, start: 0, end: searchArray.count-1, element: 9))


///
///5 - Sort a Binary Array
///
func sortBinaryArray(array: inout [Int]) {
  var j = -1
  for i in 0..<array.count {
    if array[i] < 1 {
      j = j + 1
      let temp = array[j]
      array[j] = array[i]
      array[i] = temp
    }
  }
}

var binaryArray = [0,0,1,0,1,0,1,0,1]
sortBinaryArray(array: &binaryArray)

