import UIKit

///1
///Reverse LinkedList
///Linked list = 16 —>15 —>20 —> 26
///Result = 26 —>20 —>15 —>16

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


///2
///Calculate height of binary tree
///
class TreeNode {
  var element: Int!
  var leftNode: TreeNode?
  var rightNode: TreeNode?
  
  init(element: Int) {
    self.element = element
    self.leftNode = nil
    self.rightNode = nil
  }
}


func calculateTreeHeight(root: TreeNode) -> Int {
  
  var queue: [TreeNode] = []
  var height = 0
  var nodeCount = 0
  
  queue.append(root)
  
  while(!queue.isEmpty) {
    height += 1
    nodeCount = queue.count
    
    while(nodeCount > 0) {
      let currentNode = queue[0]
      
      if let leftNode = currentNode.leftNode {
        queue.append(leftNode)
      }
      
      if let rightNode = currentNode.rightNode {
        queue.append(rightNode)
      }
      
      nodeCount -= 1
      queue.remove(at: 0)
    }
  }
  
  return height
}

///3
///Calculate height of binary tree recursively
///
func maxDepth(root: TreeNode?) -> Int {
  
  if root == nil {
    return 0
  }
  
  let leftDepth = maxDepth(root: root!.leftNode)
  let rightDepth = maxDepth(root: root!.rightNode)
  
  if leftDepth > rightDepth {
    return leftDepth + 1
  } else {
    return rightDepth + 1
  }
  
}

let treeNode1 = TreeNode(element: 1)
let treeNode2 = TreeNode(element: 2)
let treeNode3 = TreeNode(element: 3)
treeNode1.leftNode = treeNode2
treeNode1.rightNode = treeNode3
let treeNode4 = TreeNode(element: 4)
let treeNode5 = TreeNode(element: 5)
treeNode3.leftNode = treeNode4
treeNode3.rightNode = treeNode5

print(calculateTreeHeight(root: treeNode1))
print(maxDepth(root: treeNode1))
