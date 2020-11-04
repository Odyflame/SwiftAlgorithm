////
////  커피숍 1257.swift
////  swiftAlgorithm
////
////  Created by apple on 2020/11/03.
////  Copyright © 2020 odyflame. All rights reserved.
////
//
//import Foundation
//
//func solution1275() {
//
//    var arr = [Int]()
//    var tree = [Int: Int]()
//
//    func makeTree(node: Int, start: Int, end: Int) -> Int {
//        if start == end {
//            tree[node] = arr[start]
//        }
//        else {
//            tree[node] = makeTree(node: 2*node, start: start, end: (start + end) / 2)
//                + makeTree(node: 2*node + 1, start: (start + end) / 2 + 1, end: end)
//        }
//
//        return tree[node]!
//    }
//
//    func sum( node: Int, start: Int, end: Int, left: Int, right: Int) -> Int {
//        if right < start || end < left {
//            return 0
//        }
//        if left <= start && end <= right {
//            return tree[node]!
//        }
//        return sum( node: 2 * node, start: start, end: (start + end) / 2, left: left , right: right)
//            + sum(node: 2*node + 1, start: (start + end) / 2 + 1, end: end, left: left, right: right)
//    }
//
//    func update( node: Int, start: Int, end: Int, index: Int, diff: Int) {
//        if index < start || end < index { return }
//        tree[node]! += diff
//        if start != end {
//            update( node: 2*node, start: start, end: (start + end) / 2, index: index, diff: diff)
//            update(node: 2*node + 1, start: (start + end) / 2 + 1, end: end, index: index, diff: diff)
//        }
//    }
//
//    var NQ = readLine()!.components(separatedBy: " ").map{ Int($0)! }
//    arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
//
//    makeTree(node: 1, start: 0, end: NQ[0] - 1)
//    for i in 0 ..< NQ[1] {
//        var temp = readLine()!.components(separatedBy: " ").map{ Int($0)! }
//
//        if temp[0] > temp[1] {
//            print(sum(node: 1, start: 0, end: NQ[0] - 1, left: temp[1] - 1, right: temp[0] - 1))
//        }else {
//            print(sum(node: 1, start: 0, end: NQ[0] - 1, left: temp[0] - 1, right: temp[1] - 1))
//        }
//
//        temp[2] -= 1
//        var diff = temp[3] - arr[temp[2]]
//        arr[temp[2]] = temp[3]
//
//        update(node: 1, start: 0, end: NQ[0] - 1, index: temp[2], diff: diff)
//    }
//}
