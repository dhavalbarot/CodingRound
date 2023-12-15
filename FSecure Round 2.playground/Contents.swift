import UIKit

/*  
    1. Find the letter which occurs maximum time in given string.
    considering string "Dhaval Barot" letter a is occuring maximum times
    2. List all the character which aren't repeating in the given string.
*/
var input = "Dhaval Barot"

func findMaxOccuringChar(str: String) -> [Character]{
  var charCount: [Character: Int] = [:]
  
  var maxCount: Int = 0
  var occuringChar: Character = Character("A")
  
  for char in str {
    if let count = charCount[char] {
      charCount[char] = count + 1
    } else {
      charCount[char] = 1
    }
    
    if let updatedCount = charCount[char], updatedCount > maxCount {
      maxCount = updatedCount
      occuringChar = char
    }
  }
  
  print("Character \(occuringChar) is occuring maximu of \(maxCount) times.")
    
  var uniqueChars: [Character] = []
  for key in charCount.keys {
    if let count = charCount[key], count == 1 {
      uniqueChars.append(key)
    }
  }
  
  return uniqueChars
}

print(findMaxOccuringChar(str: input.filter(\.isLetter)))

