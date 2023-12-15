import UIKit

//Write a function which can calculate the number of zeros in given integer.
//For given input 108901 output should return 2.
var input: Int = 108901

func zeroCount(value: Int) -> Int {
    var curValue = value
    var zeroCount = 0
    while((curValue/10) > 1) {
        if(curValue % 10 == 0) {
            zeroCount += 1
        }
        curValue = Int(curValue/10)
    }
  
    return zeroCount
}

print(zeroCount(value: input))
