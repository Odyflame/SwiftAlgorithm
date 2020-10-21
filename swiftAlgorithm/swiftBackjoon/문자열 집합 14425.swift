//
//  문자열 집합 14425.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/16.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//class Node {
//    var key: Character?
//    var data: String?
//
//    var children = [Character: Node]()
//    var order: Int = 0
//    init(_ key: Character?, data: String? = nil ) {
//        self.key = key
//        self.data = data
//    }
//}
//
//class Trie {
//    var head: Node
//
//    init() {
//        self.head = Node(nil)
//    }
//
//    func insert(_ str: inout String) {
//        var curr_node = self.head
//
//        for char in str {
//
//            if curr_node.children[char] == nil {
//                curr_node.children[char] = Node(char)
//            }
//
//            curr_node = curr_node.children[char]!
//        }
//
//        curr_node.data = str
//    }
//
//    func checkData(_ str: inout String) -> Bool {
//        var curr_node = self.head
//        for char in str {
//
//            if curr_node.children[char] == nil {
//                return false
//            }
//
//            curr_node = curr_node.children[char]!
//
//            if curr_node.data == str {
//                return true
//            }
//        }
//        return false
//    }
//
//}
//
//func solution14425() {
//    var NM = readLine()!.components(separatedBy: " ").map { return Int($0)! }
//    var answer = 0
//
//    var trie = Trie()
//
//    for i in 0 ..< NM[0] {
//        var temp = readLine()!
//        trie.insert(&temp)
//    }
//
//    for i in 0 ..< NM[1] {
//        var temp = readLine()!
//        if trie.checkData(&temp) {
//            answer += 1
//        }
//    }
//
//    print(answer)
//}

//func solution14425() {
//    var NM = readLine()!.components(separatedBy: " ").map { return Int($0)! }
//    var answer = 0
//
//    var check = Set<String>()
//    for i in 0 ..< NM[0] {
//        check.insert(readLine()!)
//    }
//
//    for i in 0 ..< NM[1] {
//        if check.contains(readLine()!) {
//            answer += 1
//        }
//    }
//
//    print(answer)
//}
