////
////  최솟값과 최댓값 2357.swift
////  swiftAlgorithm
////
////  Created by apple on 2020/10/30.
////  Copyright © 2020 odyflame. All rights reserved.
////
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
//}
//
//func solution2357() {
//    
//    let NM = readLine()!.parse()
//    var arr = [Int]()
//    var tree = [Int: Int]()
//    var maxTree = [Int: Int]()
//    
//    for i in 0 ..< NM[0] {
//        let temp = Int(readLine()!)!
//        arr.append(temp)
//    }
//    
//    func makeMinTree(a: inout [Int], tree: inout [Int: Int], node: Int, start: Int, end: Int) -> Int {
//        
//        if start == end {
//            tree[node] = a[start]
//        } else {
//            tree[node] = min (makeMinTree(a: &a, tree: &tree, node: node * 2, start: start, end: (start + end) / 2), makeMinTree(a: &a, tree: &tree, node: node * 2 + 1, start: (start + end) / 2 + 1, end: end))
//        }
//        
//        return tree[node]!
//    }
//    
//    func makeMaxTree(a: inout [Int], tree: inout [Int: Int], node: Int, start: Int, end: Int) -> Int {
//        
//        if start == end {
//            tree[node] = a[start]
//        } else {
//            tree[node] = max (makeMaxTree(a: &a, tree: &tree, node: node * 2, start: start, end: (start + end) / 2), makeMaxTree(a: &a, tree: &tree, node: node * 2 + 1, start: (start + end) / 2 + 1, end: end))
//        }
//        
//        return tree[node]!
//    }
//    
//    func check(tree: inout [Int: Int], node: Int, start: Int, end: Int, left: Int, right: Int) -> Int {
//        
//        if end < left || start > right {
//            return 21000000000
//        } else if left <= start && end <= right {
//            return tree[node]!
//        }
//        
//        return min (check(tree: &tree, node: node*2, start: start, end: (start + end) / 2, left: left, right: right), check(tree: &tree, node: node*2 + 1, start: (start + end) / 2 + 1, end: end, left: left, right: right) )
//    }
//    
//    func maxCheck(tree: inout [Int: Int], node: Int, start: Int, end: Int, left: Int, right: Int) -> Int {
//        
//        if end < left || start > right {
//            return -1
//        } else if left <= start && end <= right {
//            return tree[node]!
//        }
//        
//        return max (maxCheck(tree: &tree, node: node*2, start: start, end: (start + end) / 2, left: left, right: right), maxCheck(tree: &tree, node: node*2 + 1, start: (start + end) / 2 + 1, end: end, left: left, right: right) )
//    }
//    
//    makeMinTree(a: &arr, tree: &tree, node: 1, start: 0, end: NM[0] - 1)
//    makeMaxTree(a: &arr, tree: &maxTree, node: 1, start: 0, end: NM[0] - 1)
//    
//    for i in 0 ..< NM[1] {
//        let temp = readLine()!.parse()
//        
//        var ans1 = check(tree: &tree, node: 1, start: 0, end: NM[0]-1, left: temp[0]-1, right: temp[1] - 1)
//        var ans2 = maxCheck(tree: &maxTree, node: 1, start: 0, end: NM[0]-1, left: temp[0]-1, right: temp[1] - 1)
//        
//        print("\(ans1) \(ans2)")
//    }
//    
//}
