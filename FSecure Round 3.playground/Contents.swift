import UIKit

// Find first character not in alphabetical order ("BEEHIVE")
// Write a function that, given a character string, finds the first character not in alphabetical order
// For example, if the string "BEEHIVE" is supplied, the first character out of alphabetical order is the final 'E'

func findOutOfOrderCharacter(str: String) -> Character? {
    var currentCharacter: Character?
    for char in str {
        if(currentCharacter == nil) {
            currentCharacter = char
        }
        
        guard let currChar = currentCharacter,
              currChar <= char else {
            return char
        }
        
        currentCharacter = char
    }
    
    return nil
}

print(findOutOfOrderCharacter(str: "BEEHIV") ?? "Nil value returned.")


// Can we compute the total number of characters that are out of order?
// We could make try to make it the minimum count, e.g. in "BEEXHIVE"
// the answer should be 2 rather than 4 which is what we would get if everything after 'X' were out of order.


//Combinatin Approch
func removingCharacterCountForOrderString(str: String) -> Int {
    var stringCombinations: [String] = []
    var minimumOutOfOrderCharacter = Int.max;
    
    for char in str {
        if stringCombinations.count > 0 {
            for (index, subStr) in stringCombinations.enumerated() {
                let lastCharacter = Array(subStr)[subStr.count-1]
                if(lastCharacter <= char) {
                    stringCombinations[index] = subStr + "\(char)"
                } else {
                    let index = Array(subStr).firstIndex(where: {$0 > char})
                    let itemsToRemove = subStr.count - (index ?? 0)
                    let newString = String(subStr.dropLast(itemsToRemove) + "\(char)")
                    if(!stringCombinations.contains(newString)) {
                        stringCombinations.append(newString)
                    }
                }
            }
        } else {
            stringCombinations.append("\(char)")
        }
    }
    
    //Printing Combinations
    //print(stringCombinations)
    
    //Validating Combination Length With Actual Length
    for subStr in stringCombinations {
        let diff = str.count - subStr.count
        minimumOutOfOrderCharacter = min(diff, minimumOutOfOrderCharacter)
    }
    
    return minimumOutOfOrderCharacter == Int.max ? 0 : minimumOutOfOrderCharacter
}

//print(removingCharacterCountForOrderString(str: "BEEXHIVE")) //XE
//print(removingCharacterCountForOrderString(str: "BEYXHIVE")) //YXE
//print(removingCharacterCountForOrderString(str: "ABCDFGFFIJ")) //G
print(removingCharacterCountForOrderString(str: "ABCDFGFJIJ")) //GJ
