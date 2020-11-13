//
//  K번째 수 7469.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/11/09.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution7469() {
//
//    let NQ = readLine()!.split(separator: " ").map { Int($0)! }
//
//    let arr = readLine()!.split(separator: " ").map { Int($0)! }
//
//    var tree = [Int: [Int] ]()
//
//    func makeTree(node: Int, start: Int, end: Int) -> [Int] {
//        if start == end {
//            tree[node] = [arr[start]]
//        } else {
//            var temp = makeTree(node: 2*node, start: start, end: (start + end) / 2) + makeTree(node: node*2 + 1, start: (start + end) / 2 + 1, end: end)
//            tree[node] = temp.sorted()
//        }
//        return tree[node]!
//    }
//
//    func makeArr(node: Int, start: Int, end: Int, left: Int, right: Int, value: Int) -> Int {
//        if left > end || start > right {
//            return 0
//        } else if left <= start && end <= right {
//
//            var left = 0
//            var right = tree[node]!.count - 1
//            var mid = (left + right) / 2
//
//            while left < right {
//
//                if tree[node]![mid] > value {
//                    right = mid
//                } else {
//                    left = mid + 1
//                }
//
//                mid = (left + right) / 2
//            }
//
//            return right
//
//        } else {
//
//            var n = makeArr(node: 2*node, start: start, end: (start + end) / 2, left: left, right: right, value: value)
//            var m = makeArr(node: 2*node + 1, start: (start + end) / 2 + 1, end: end, left: left, right: right, value: value)
//
//            var temp = n + m
//
//            return temp
//        }
//    }
//
//
//    makeTree(node: 1, start: 0, end: NQ[0] - 1)
//
//    for i in 0 ..< NQ[1] {
//        var temp = readLine()!.split(separator: " ").map { Int($0)! }
//
//        //var ans = makeArr(node: 1, start: 0, end: NQ[0] - 1, left: temp[0] - 1, right: temp[1] - 1)
//
//        var left = -1000000000
//        var right = 1000000000
//
//        while left <= right {
//            var mid = (left + right) / 2
//            if makeArr(node: 1, start: 0, end: NQ[0] - 1, left: temp[0] - 1, right: temp[1] - 1, value: mid) < temp[2] - 1 {
//                left = mid + 1
//            }else {
//                right = mid - 1
//            }
//        }
//
//        print(left)
//    }
//
//}
