import UIKit

// Given a string s, find the length of the longest substring without repeating characters.
// Input - Bangalore, Output - 7

func getLongestSubString(str: String) -> Int {
  guard str.count >= 1 else {
    return 0
  }

  var defaultSubStringLength = 1;
  let strArray = Array(str);
  var substringArray:[Character] = [];

  for index in 0..<strArray.count {
    if let index = substringArray.firstIndex(of: strArray[index]) {
      if(substringArray.count > defaultSubStringLength) {
        defaultSubStringLength = substringArray.count
        substringArray.removeFirst(index);
      }
    } else {
      substringArray.append(strArray[index])
    }
  }

  if(substringArray.count > defaultSubStringLength) {
    defaultSubStringLength = substringArray.count
  }

  return defaultSubStringLength
}


print(getLongestSubString(str: "Bangalore"));
