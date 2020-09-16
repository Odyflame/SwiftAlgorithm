//
//  main.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/05/26.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

////데이터 저장 및 커서관리용 노드
//class Node {
//    var key: Character?
//    var data: String?
//    //노드 연결용 이름표 컨테이너
//    var children = [Character: Node]()
//    //노드 순서를 표시하는 컨테이너
//    var order: Int = 0
//
//    init (_ key: Character?, data: String? = nil) {
//        self.key = key
//        self.data = data
//    }
//}
//
//// 트라이 자료구조 클래스
//// 캐릭터를 트리를 이용하여 포도송이처럼 연결시킨 구조
//
//class Trie {
//    var head: Node
//
//    init() {
//        self.head = Node(nil)
//    }
//
//    //삽입용 함수
//    func insert(_ str: String) {
//        var curr_node = self.head
//
//        //입력받은 단어의 트리작성
//        for char in str {
//            //요소가 없으면 char를 가지는 새 노드를 연결
//            if curr_node.children[char] == nil {
//                curr_node.children[char] = Node(char)
//            }
//
//            //다음 노드로 이동
//            curr_node.order += 1
//            curr_node = curr_node.children[char]!
//        }
//
//        // 맨 마지막 노드는 data는 str이다
//        curr_node.data = str
//    }
//
//    //입력 문자열에 대한 값 변환
//    func countInputWord(_ str: String) -> Int {
//        var curr_node = self.head
//        var count = 0
//
//        //전 노드 검색
//        for char in str {
//            curr_node = curr_node.children[char]!
//            count += 1
//            //일치하는 단어가 있거ㅗ나 첫번째 노드에 데이터가 없으면 중지
//            if curr_node.data == str || (curr_node.order == 1 && curr_node.data == nil) {
//                return count
//            }
//        }
//
//        return count
//    }
//}
//
//func solution1(_ words:[String]) -> Int {
//
//    // 입력으로부터 트라이 구조 작성
//    let trie = Trie()
//    for word in words {
//        trie.insert(word)
//    }
//
//    // 입력값 계산
//    var answer = 0
//    for word in words {
//        answer += trie.countInputWord(word)
//    }
//
//    return answer
//}

//class Trie():
//    def __init__(self):
//        self.next = dict()
//        self.value = 0
//
//def solution(words):
//    answer = 0
//    tree = Trie()
//    for word in words:
//        subtree = tree
//        for idx, val in enumerate(word):
//            subtree.value += 1
//            if val not in subtree.next:
//                subtree.next[val] = Trie()
//            subtree = subtree.next[val]
//            if (idx == len(word) - 1):
//                subtree.value += 1
//
//    for word in words:
//        subtree = tree
//        counts = 0
//        for idx, val in enumerate(word):
//            if (subtree.value == 1):
//                answer += counts
//                break
//            elif idx == len(word) - 1:
//                answer += counts + 1
//                break
//            else:
//                subtree = subtree.next[val]
//                counts += 1
//
//
//    return answer
//
//
//
//출처: https://geonlee.tistory.com/49 [빠리의 택시 운전사]

