import UIKit

//Sort Array With Specific Elements
//Arr = [1,0,0,1,0,2,2,1,0,1]
//Result = [0,0,0,0,1,1,1,2,2]

/*
func someSort(array: [Int]) -> [Int] {
  
  var resultDict: [Int: Int] = [0:0,
                                1:0,
                                2:0]
  
  for item in array {
    if let count = resultDict[item] {
      resultDict[item] = count + 1
    }
  }
  
  var resultArray:[Int] = []
  for key in resultDict.keys.sorted() {
    if let count = resultDict[key] {
      var i = 0
      while(i < count) {
        resultArray.append(key)
        i = i+1
      }
    }
  }
  
  return resultArray
}


print(someSort(array: [1,0,0,1,0,2,2,1,0,1]))
*/


//Reverse LinkedList
//Linked list = 16 —>15 —>20 —> 26
//Result = 26 —>20 —>15 —>16

class Node {
  var element: Int!
  var nextNode: Node?
  
  init(element: Int, nextNode: Node?) {
    self.element = element
    self.nextNode = nextNode
  }
}

//List Creation
var node4 = Node(element: 26, nextNode: nil)
var node3 = Node(element: 20, nextNode: node4)
var node2 = Node(element: 15, nextNode: node3)
var node1 = Node(element: 16, nextNode: node2)

func reverseList(head: Node) -> Node {
  
  var prev: Node? = nil
  var current: Node? = head
  var next: Node? = nil
  
  while(current != nil) {
    next = current!.nextNode
    current!.nextNode = prev
    prev = current
    current = next
  }
  
  return prev!
  
}

var head: Node? = reverseList(head: node1)

while(head != nil) {
  print(head!.element)
  head = head!.nextNode
}

