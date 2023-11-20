import UIKit

var greeting = "Hello, playground"


//Write the logic and create an output that prints numbers 1-1000. A number
//should be replaced by “Fizz” if divisible by 3, “Buzz” if divisible by 5,
//and “FizzBuzz” if divisible by both 3 and 5.

func printFizzBuzz(n: Int) {
  var i = 1
  repeat {
    if (i % 3 == 0 && i % 5 == 0) {
      print("FrizzBuzz");
    } else if (i % 3 == 0) {
      print("Fizz")
    } else if (i % 5 == 0) {
      print("Buzz")
    } else {
      print(i)
    }
    i = i + 1;
  }while(i <= n)
}

printFizzBuzz(n: 1000)


//Write a function ‘function1’ that takes in two integers as
//in-out parameters. It should also take in another function as a parameter
//and this function should swap the values of the two integers passed.
//Finally ‘function1’ should return two strings “Var1 is now \(var1)” and
//“Var2 is now \(var2)”.

func function1(var1: inout Int, var2: inout Int, swapFunction: (inout Int, inout Int) -> ()) -> (String, String) {
  swapFunction(&var1, &var2)
  return ("Var1 is now \(var1)", "Var2 is now \(var2)")
}

var var1 = 1
var var2 = 2

let mySwapFunction: (inout Int, inout Int) -> () = { val1, val2 in
  (val1, val2) = (val2, val1)
}

let (str1, str2) = function1(var1: &var1, var2: &var2, swapFunction: mySwapFunction)

print(str1)
print(str2)

//Define an enumeration for a traffic signal. The signal must
//cycle between three different states (red, yellow and green) every time its
//next() method is called.

struct TrafficSignla {
  let signals = ["Red", "Yellow", "Green"];
  var currentStatus = 3
  
  mutating func next() {
    currentStatus = currentStatus + 1;
    if currentStatus < signals.count {
      print(self.signals[currentStatus])
    } else {
      currentStatus = 0;
      print(self.signals[currentStatus])
    }
  }
}

var ts1 = TrafficSignla()
ts1.next();
ts1.next();
ts1.next();
ts1.next();
ts1.next();


//Create a class called VendingMachine. It must contain
//an array of strings called ‘items’ as a stored property. It must also contain
//a function ‘getItem’ which takes a string and compares it to the items in
//the ‘items’ array. If the item is present, it should print ‘Here you go!’ or
//else it should throw a custom error ‘ItemNotAvailable’.

class VendingMachine {
  var items: [String] = ["One", "Test", "Two"];

  func getItem(item: String){
    if(items.contains(item)){
      print("Here you go!")
    } else {
      print("ItemNotAvailable")
    }
  }
}

let vm = VendingMachine()
vm.getItem(item: "Test");
vm.getItem(item: "NotFound")


//let requestURL = URLRequest(url: URL(string: "https://api.covidtracking.com/v1/states/daily.json")!)
//
//let sessionConfig = URLSessionConfiguration.default;
//let session = URLSession(configuration: sessionConfig);
//let task = session.dataTask(with: requestURL) { data, response, error in
//  if let data = data {
//    print(data );
//  }
//}
//task.resume();


