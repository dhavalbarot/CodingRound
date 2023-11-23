import UIKit

//Replace every third character of string with $.
func replaceEveryThirdCharacter(withReplacement replacement: Character, inString input: String) -> String {
    var result = ""
    
    for (index, char) in input.enumerated() {
        // Check if the current index is a multiple of 3 (using 0-based indexing)
        if (index + 1) % 3 == 0 {
            result.append(replacement)
        } else {
            result.append(char)
        }
    }
    
    return result
}

// Example usage
let originalString = "abcdefghij"
let modifiedString = replaceEveryThirdCharacter(withReplacement: "#", inString: originalString)
print(modifiedString)



//Check String is Palindrom or Not
func checkPalindrom(str: String) -> Bool {
  let filteredString = Array(str.filter(\.isLetter));
  let lenght = filteredString.count-1;
  for index in 0...lenght/2 {
    if(filteredString[index] != filteredString[lenght-index]) {
      return false
    }
  }
  return true
}

var demoStr = "var tar rat rav"
checkPalindrom(str: demoStr);
