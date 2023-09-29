import UIKit

var greeting = "Hello, Pocket FM"


///General Question
//What is ARC? How it works?
//Different between struct and class
//Difference between weak and unowned self
//Access specifiers and their differences

//You are not allowed to HO functions like contains and others...

//Create a method to print duplicate from a string array
var arrayInput = ["abc", "def", "ghi", "abc", "abc", "ghi", "jkl"]

func printDuplicatedStrings(value: [String]) {
  var stringCount: [String: Int] = [:]
  
  for item in value {
    if let itemCount = stringCount[item] {
      stringCount[item] = itemCount + 1
      if(itemCount == 1) {
        print(item)
      }
    } else {
      stringCount[item] = 1
    }
  }
}

printDuplicatedStrings(value: arrayInput)


//Create a function to print missing elements from 0...20 array?
//E.g.: [1, 4, 8, 16, 20]

var inputArray = [1, 4, 8, 16, 18]

func missingTwenty(input: [Int], toValue: Int) {
  var inputPointer = 0;
  
  for i in 0...toValue {
    if inputPointer < input.count{
      if(input[inputPointer] == i) {
        inputPointer += 1
      } else {
        print(i)
      }
    } else {
      print(i)
    }
  }
}

missingTwenty(input: inputArray, toValue: 40)


