import UIKit

///1
///Reverse String the Given String
///Input: "Dhaval"
///Output: "lavahD"
///
func reverse(_ str: String) -> String {
  var result = ""
  for character in str {
    result = "\(character)" + result
  }
  return result
}

reverse("Dhaval")

///2
///Reverse String the Given String
///Input:  A = "the sky is blue"
///Output:  "blue is sky the"
///
func reverseSentence(_ str: String) -> String {
  var tempString = ""
  var resultString = ""
  for char in str {
    if char == " " {
      resultString = tempString + " " + resultString
      tempString = ""
    } else {
      tempString = tempString + "\(char)"
    }
  }
  return tempString + " " + resultString
}

reverseSentence("the sky is blue").trimmingCharacters(in: .whitespacesAndNewlines)


///3
///Check wheter string is palindromic or not
///"A man, a plan, a canal: Panama" is a palindrome.
///"race a car" is not a palindrome.
func checkPalindrome(_ word: String) -> Bool {

  let chars = Array(word.filter(\.isLetter).lowercased())
  let end = chars.count - 1
  
  for index in 0..<chars.count/2 {
    if chars[index] != chars[end - index] {
      return false
    }
  }
  return true
}

checkPalindrome("A man, a plan, a canal: Panama")
checkPalindrome("race a car")

///4
///Calculater Number of Vowels and Consonants in String
///Input: "Hello"
///Output: Wowels: 2, Consonants: 3
///
func calculateWowelsAndConsonents(str: String) -> (Int, Int) {
  
  let wowels:[String] = ["a", "e", "i", "o", "u"]
  var wowelCount = 0
  var conconentCount = 0
  
  for char in str.lowercased() {
    if wowels.contains(String(char)) {
      wowelCount += 1
    } else {
      conconentCount += 1
    }
  }
  
  return (wowelCount, conconentCount)
}

let (wowels, consonents) = calculateWowelsAndConsonents(str: "Hello")

///5
///Check wheter two string are anagrams or not
///Two strings are called anagrams if they accommodate a similar group of characters in a varied sequence.
///Input: str1:"Corona" str2:"Rocona"
///Output: true
///
func isAnagrams(str1: String, str2: String) -> Bool {
  
  if str1.count != str2.count {
    return false
  }
  
  let chars1 = str1.lowercased().sorted()
  let chars2 = str2.lowercased().sorted()
  
  if String(chars1).elementsEqual(String(chars2)) {
    return true
  }
  
  return false
}

isAnagrams(str1: "Corona", str2: "Rocona")
 
