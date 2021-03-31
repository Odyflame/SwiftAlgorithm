//
//  전화번호 목록 5052.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/13.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
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
//import Foundation
//
//class Node {
//    // 여기서 조심해야 하는건 struct와 class의 차이이다.
//    // struct는 값을 나타내고, class는 주소를 나타낸다.
//    // 따라서 Trie에서
//    // curr_node = head에서, Node가 struct일 때는 값을 복사했기 때문에,
//    // curr_node가 업데이트 되도 문제가 발생했다
//    // 그러나 class일 경우, 주소이기 때문에, curr_node가 없데이트 되면, 같은 주소인
//    // head도 값이 바뀌는 것이다. 그래서
//    // Node를 class로 해 주는 것이 포인트이다.
//    var key: Character?
//    var data: String?
//    var children = [Character: Node]()
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
//        head = Node(nil)
//    }
//
//    func insert(str: String) -> Bool {
//
//        var curr_node = head
//
//        for char in str {
//            if curr_node.children[char] == nil {
//                curr_node.children[char] = Node(char)
//            }
//
//            if curr_node.data != nil {
//                return false
//            }
//
//            curr_node = curr_node.children[char]!
//        }
//
//        curr_node.data = str
//        return true
//    }
//
//}
//
//func solution5052() {
//    var testCase = Int(readLine()!)!
//    for _ in 0 ..< testCase {
//        var N = Int(readLine()!)!
//        var strings = [String]()
//        let trie = Trie()
//        for _ in 0 ..< N {
//            var temp = readLine()!
//            strings.append(temp)
//        }
//        var answer = false
//        strings = strings.sorted()
//
//        for string in strings {
//            answer = trie.insert(str: string)
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
// 25%에서 시간 초과
//func solution5052() {
//    var testCase = Int(readLine()!)!
//    for _ in 0 ..< testCase {
//        var N = Int(readLine()!)!
//        var strings = [String]()
//        for _ in 0 ..< N {
//            var temp = readLine()!
//            strings.append(temp)
//        }
//
//        strings = strings.sorted()
//        var flag = true
//
//        for i in 0 ..< strings.count {
//            for j in i + 1 ..< strings.count {
//                if strings[j].hasPrefix(strings[i]) {
//                    flag = false
//                    break
//                }
//            }
//            if !flag {
//                break
//            }
//        }
//
//        if !flag {
//            print("NO")
//        } else {
//            print("YES")
//        }
//    }
//}
