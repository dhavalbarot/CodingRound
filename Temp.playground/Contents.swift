import UIKit

var str = "Hello, playground"

//1
//Given array with N numbers and return an array such that each element at respective index
//is consist of multiplication of other element except element at self index
//Given [1,2,3,4,5] should return [120, 60, 40, 30, 24]
 
func getCustomMultiplication(input1: [Int]) -> [Int] {
  
  var totalMultiplicationExceptZero: Int = 1
  var zeroExist: Bool = false
  var resultVal:[Int] = []
  
  for element in input1 {
    if element != 0 {
      totalMultiplicationExceptZero = totalMultiplicationExceptZero * element
    } else {
      zeroExist = true
    }
  }
  
  for element in input1 {
    if zeroExist {
      resultVal.append(element == 0 ? totalMultiplicationExceptZero : 0)
    } else {
      resultVal.append(totalMultiplicationExceptZero/element)
    }
  }
  
  return resultVal
}

getCustomMultiplication(input1: [1,2,3,4,5])
getCustomMultiplication(input1: [0,2,6,5,10])


//1
func temp(input1: Int, input2: [Int], input3: [Int]) -> Int {
  
  if input1 < 2 {
    return 0
  }
  
  let uniqueElements = Array(Set(input2))
  if uniqueElements.count < 2 {
    return 0
  }
  
  var minimumCost = Double.greatestFiniteMagnitude
  for element in uniqueElements {
    
    let seq = input2.enumerated().map { (index, item)  in
      return (abs(element - item) * input3[index])
    }
    
    let totalCost = seq.reduce(0.0) { $0 + Double($1) }
    minimumCost = totalCost < minimumCost ? totalCost : minimumCost
    //print(minimumCost)
  }
  
  print("Minimum cost is : \(minimumCost)")
  return Int(minimumCost)
}


temp(input1: 0, input2: [], input3: [])
temp(input1: 3, input2: [1,1,1], input3: [10,10,10])
temp(input1: 5, input2: [2,4,7,5,1], input3: [10, 5, 7, 4, 9])
temp(input1: 2, input2: [1,2], input3: [10,5])
temp(input1: 3, input2: [1,3,2], input3: [5,10,2])

//3
//Sort Array With Specific Elements
//Arr = [1,0,0,1,0,2,2,1,0,1]
//Result = [0,0,0,0,1,1,1,2,2]


func someSort(array: [Int]) -> [Int] {
  
  var resultDict: [Int: Int] = [0:0,
                                1:0,
                                2:0]
  
  for item in array {
    if let count = resultDict[item] {
      resultDict[item] = count + 1
    }
  }
  
  var resultArray:[Int] = []
  for key in resultDict.keys.sorted() {
    if let count = resultDict[key] {
      var i = 0
      while(i < count) {
        resultArray.append(key)
        i = i+1
      }
    }
  }
  
  return resultArray
}
print(someSort(array: [1,0,0,1,0,2,2,1,0,1]))
 




