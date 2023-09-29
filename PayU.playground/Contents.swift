import UIKit

//PayU Money Interview Questions

/*
1.
Find the maximum sum of subarray.
Maximum sum subarray of size K

Input: [1,3,4,6], 2
Optput: 10

Input: [3,10,20,30,10], 3
Output: 60
*/

func maxSumOfSubArray(array: [Int], k: Int) -> Int {
  
  let n = array.count
  
  if n < k {
    return -1
  }
  
  //Taking sum of first k element
  var res: Int = 0
  for i in 0..<k {
    res += array[i]
  }
  
  //Replacing one element with other
  var curr_sum: Int = res
  for i in k..<n {
    curr_sum += array[i] - array[i-k];
    res = max(res, curr_sum)
  }
  
  return res
}

maxSumOfSubArray(array: [1,3,4,6], k: 2)
maxSumOfSubArray(array: [3,10,20,30,30], k: 3)

/*
2.
Find the number of possible substring
 
Input: "abc"
Output: 6
 
Input: "abcd"
Output: 10
*/
//It will be base on formula n * (n+1) / 2.

func getSubstringCount(str: String) -> Int {
  return (str.count * (str.count + 1))/2
}

getSubstringCount(str: "abc")
getSubstringCount(str: "abcd")
