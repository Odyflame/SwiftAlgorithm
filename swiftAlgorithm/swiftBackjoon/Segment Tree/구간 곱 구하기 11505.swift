//
//  구간 곱 구하기.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/11/03.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//extension String {
//    static let zero = Character("0").asciiValue!
//    func parse() -> [Int] {
//        var answer: [Int] = []
//        var temp = 0
//
//        for c in self {
//            if c == " " {
//                answer.append(temp)
//                temp = 0
//                continue
//            }
//
//            temp *= 10
//            temp += Int(c.asciiValue! - Self.zero)
//        }
//
//        answer.append(temp)
//        return answer
//    }
//
//}
//func solution11505() {
//    var arr = [Int64]()
//    var tree = [Int : Int64]()
//    
//    func makeTree( node: Int, start: Int, end: Int) -> Int64{
//        if start == end {
//            tree[node] = arr[start]
//        }else {
//            tree[node] = (makeTree(node: node*2, start: start, end: (start + end) / 2) * makeTree(node: 2*node + 1, start: (start + end) / 2 + 1, end: end)) % 1000000007
//        }
//        
//        return tree[node]!
//    }
//    
//    func multi(node: Int, left: Int, right: Int, start: Int, end: Int) -> Int64 {
//        
//        if end < left || right < start {
//            return 1
//        }
//        if left <= start && end <= right {
//            return tree[node]!
//        }
//        return (multi( node: node*2, left: left, right: right, start: start, end: (start + end) / 2) * multi(node: node*2 + 1, left: left, right: right, start: (start + end) / 2 + 1, end: end)) % 1000000007
//        
//    }
//    
//    func update(node: Int, start: Int, end: Int, index: Int, diff: Int64) {
//        if index < start || end < index {
//            return 
//        }
//        tree[node]! += diff
//        tree[node]! %= 1000000007
//        if start != end {
//            update(node: node * 2, start: start, end: (start + end) / 2, index: index, diff: diff)
//            update( node: node * 2 + 1, start: (start + end) / 2 + 1, end: end, index: index, diff: diff)
//        }
//        
//    }
//    
//    let NMK = readLine()!.split(separator: " ").map { Int($0)! }
//
//    for i in 0 ..< NMK[0] {
//        let t = Int64(readLine()!)!
//        arr.append(t)
//    }
//    makeTree(node: 1, start: 0, end: NMK[0] - 1)
//    
//    for i in 0 ..< NMK[1] + NMK[2] {
//        var temp = readLine()!.split(separator: " ").map { Int($0)! }
//        
//        if temp[0] == 1 {
//            temp[1] -= 1
//            var diff = Int64(temp[2]) - arr[temp[1]]
//            arr[temp[1]] = Int64(temp[2])
//            update( node: 1, start: 0, end: NMK[0] - 1, index: temp[1], diff: diff)
//        } else {
//            print(multi(node: 1,  left: temp[1] - 1, right: temp[2] - 1, start: 0, end: NMK[0] - 1))
//        }
//    }
// 
//}
