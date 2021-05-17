//
//  가사 검색.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/05/11.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//class Node {
//    var value: String
//    var count: Int = 0
//    var child = [String: Node]()
//    
//    init(value: String) {
//        self.value = value
//    }
//}
//
//class Trie {
//    var root: Node
//    
//    init() {
//        root = Node(value: "")
//    }
//    
//    func insert(_ word: String) {
//        var currentNode = root
//        
//        for char in word {
//            currentNode.count += 1
//            if currentNode.child[String(char)] == nil {
//                currentNode.child[String(char)] = Node(value: String(char))
//            }
//            
//            currentNode = currentNode.child[String(char)]!
//        }
//    }
//    
//    func search(_ query: String) -> Int {
//        var currentNode = root
//        
//        for char in query {
//            if String(char) == "?" { return currentNode.count }
//            if currentNode.child[String(char)] == nil { return 0 }
//            
//            currentNode = currentNode.child[String(char)]!
//        }
//        
//        return currentNode.count
//    }
//}
//
//func solution(_ words:[String], _ queries:[String]) -> [Int] {
//    var dic = [Int: Trie]()
//    var reverseDic = [Int: Trie]()
//    
//    words.forEach { word in
//        if dic[word.count] == nil {
//            dic[word.count] = Trie()
//            reverseDic[word.count] = Trie()
//        }
//        dic[word.count]?.insert(word)
//        reverseDic[word.count]?.insert(String(word.reversed()))
//    }
//    
//    var answer = [Int]()
//    
//    queries.forEach { query in
//        if query.first == "?" {
//            if let reverseTrie = reverseDic[query.count] {
//                let count = reverseTrie.search(String(query.reversed()))
//                answer.append(count)
//            } else {
//                answer.append(0)
//            }
//            
//        } else {
//            if let trie = dic[query.count] {
//                let count = trie.search(query)
//                answer.append(count)
//            } else {
//                answer.append(0)
//            }
//        }
//    }
//    
//    return answer
//}
