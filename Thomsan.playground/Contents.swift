import UIKit


///1
///Example of In-Out Variable
var a: Int = 10

func doubleInPlace(number: inout Int) {
  number *= 2
}

doubleInPlace(number: &a)
print(a)

///2
///Example of Singleton Class Swift
class LocationManager{
  
  static let shared = LocationManager()
  
  var locationGranted: Bool?
  
  //Initializer access level change now
  private init(){}
  
  func requestForLocation(){
    //Code Process
    locationGranted = true
    print("Location granted")
  }
}

class NotificationManager {
  static let shared = NotificationManager()
  
  private init(){}
}

///3
///Reverse String
func reverse(_ str: String) -> String {
  var result = ""
  for character in str {
    result = "\(character)" + result
    print(str)
  }
  return result
}

reverse("Dhaval")
