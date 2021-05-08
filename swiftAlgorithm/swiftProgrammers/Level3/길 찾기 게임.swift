//
//  길 찾기 게임.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/05/06.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//class Node {
//    var key: Int = -1
//    var value: Int = -1
//    var left: Node?
//    var right: Node?
//
//    init(_ value: Int, _ key: Int) {
//        self.value = value
//        self.key = key
//    }
//}
//
//class Tree {
//    var head: Node?
//    var preOrderArray = [Int]()
//    var postOrderArray = [Int]()
//
//    func insert(node: Node) {
//
//        guard self.head != nil else {
//            self.head = node
//            return
//        }
//
//        var currentHead = self.head
//
//        while true {
//            if node.key < currentHead!.key {
//                if currentHead!.left == nil {
//                    currentHead!.left = node
//                    break
//                } else {
//                    currentHead = currentHead!.left
//                }
//            } else {
//                if currentHead!.right == nil {
//                    currentHead!.right = node
//                    break
//                } else {
//                    currentHead = currentHead!.right
//                }
//            }
//        }
//    }
//
//    func printPreOrder(node: Node?) {
//
//        guard let currentNode = node else {
//            return
//        }
//        preOrderArray.append(currentNode.value)
//        printPreOrder(node: currentNode.left)
//        printPreOrder(node: currentNode.right)
//    }
//
//    func printPostOrder(node: Node?) {
//        guard let currentNode = node else {
//            return
//        }
//
//        printPostOrder(node: currentNode.left)
//        printPostOrder(node: currentNode.right)
//        postOrderArray.append(currentNode.value)
//    }
//
//}
//
//func solution(_ nodeinfo:[[Int]]) -> [[Int]] {
//
//    var nodeInfo = [ ([Int], Int) ]()
//    for index in 0 ..< nodeinfo.count {
//        nodeInfo.append(( nodeinfo[index], index + 1 ))
//    }
//
//    nodeInfo = nodeInfo.sorted { leftNode, rightNode in
//        if leftNode.0[1] == rightNode.0[1] {
//            return leftNode.0[0] < rightNode.0[0]
//        }
//        return leftNode.0[1] > rightNode.0[1]
//    }
//
//    var trie = Tree()
//
//    for info in nodeInfo {
//        trie.insert(node: Node( info.1, info.0[0] ))
//    }
//
//    trie.printPreOrder(node: trie.head)
//    trie.printPostOrder(node: trie.head)
//
//    return [trie.preOrderArray, trie.postOrderArray]
//}
