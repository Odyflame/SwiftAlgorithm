//
//  전화번호 목록 5052.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/13.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//class Node {
//    var key: Character?
//    var data: String?
//
//    var children = [Character: Node]()
//
//    var order: Int = 0
//
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
//    //삽입용 함수
//    func insert(_ str: String) -> Bool {
//        var curr_node = self.head
//
//        //입력받은 단어의 트리작성
//        for char in str {
//            //요소가 없으면 char를 가지는 새 노드를 연결
//            if curr_node.children[char] == nil {
//                curr_node.children[char] = Node(char)
//            }
//
//            if curr_node.data != nil {
//                //데이터를 가지고 있을 경우
//                return false
//            }
//
//            //다음 노드로 이동
//            curr_node.order += 1
//            curr_node = curr_node.children[char]!
//        }
//
//        // 맨 마지막 노드는 data는 str이다
//        curr_node.data = str
//        return true
//    }
//}
//
//func solution() {
//
//    let testCase = Int(readLine()!)!
//
//    for _ in 0..<testCase  {
//        var answer = true
//        let trie = Trie()
//
//        let testCase1 = Int(readLine()!)!
//
//        var Strings = [String]()
//        for _ in 0 ..< testCase1 {
//            let num = String(readLine()!)
//            Strings.append(num)
//        }
//
//        for num in Strings.sorted() {
//            answer = trie.insert(num)
//            if !answer {
//                break
//            }
//        }
//
//        if !answer {
//            print("NO")
//        } else {
//            print("YES")
//        }
//    }
//
//}
