import UIKit

//Creating logger module which can switch between various service provider

class GeneralViewController {
  func btnAddToCalenderTap() {
    MyAnalyticsLogger.loger.logEvent(eventName: "AddToCalanderTap", params: ["Value": "One"]);
  }
}

class ListViewController {
  func didSelectListItem() {
    MyAnalyticsLogger.loger.logEvent(eventName: "ItemSelected", params: ["Index": 1, "Value": "Date"]);
  }
}

//General Analytics Protocol
protocol AnalyticsLogger {
  func logEvent(eventName: String, params: [String: Any])
}

//General Analytics Logger Class
class MyAnalyticsLogger: AnalyticsLogger {
  static let loger = MyAnalyticsLogger(myProvider: AnalyticsProviderApple())
  private var provider: AnalyticsProvider!

  private init(myProvider: AnalyticsProvider) {
    provider = myProvider
  }
  
  func logEvent(eventName: String, params: [String : Any]) {
    provider.logActualEvent(eventName: eventName, params: params);
  }
}

//Analytics Wrapper Protocol
protocol AnalyticsProvider {
  var apiKey: String { get }
  var apiEndPoint: String { get }
  func logActualEvent(eventName: String, params: [String : Any])
}

//Provide Class 1
class AnalyticsProviderGoogle: AnalyticsProvider {
  
  var apiKey = "123"
  var apiEndPoint = "www.google.com"
  
  func logActualEvent(eventName: String, params: [String : Any]) {
    //Actual log method of the specific provider
  }
}

//Provide Class 2
class AnalyticsProviderApple: AnalyticsProvider {
  
  var apiKey = "343940"
  var apiEndPoint = "www.apple.com"
  
  func logActualEvent(eventName: String, params: [String : Any]) {
    //Actual log method of the specific provider
  }
}
