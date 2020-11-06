//
//  히스토그램 1725.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/31.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution1725() {
//    
//    let N = Int(readLine()!)!
//    var arr = [Int]()
//    var tree = [Int: Int]()
//    
//    for i in 0 ..< N {
//        let temp = Int(readLine()!)!
//        arr.append(temp)
//    }
//    
//    func makeTree(node: Int, start: Int, end: Int) {
//        
//        if start == end {
//            tree[node] = start
//            
//        } else {
//            
//            makeTree(node: 2*node, start: start, end: (start + end) / 2)
//            makeTree(node: 2*node + 1, start: (start + end) / 2 + 1, end: end)
//            
//            if arr[tree[node*2]!] <= arr[tree[node * 2 + 1]!] {
//                tree[node] = tree[node*2]!
//            }else {
//                tree[node] = tree[node*2 + 1]!
//            }
//        }
//    }
//    
//    func checker(node: Int, start: Int, end: Int, left: Int, right: Int) -> Int {
//        
//        if end < left || right < start {
//            return -1
//        }
//        
//        if left <= start && end <= right {
//            return tree[node]!
//        }
//
//        var m = checker(node: 2*node, start: start, end: (start + end ) / 2, left: left, right: right)
//        var n = checker(node: 2*node + 1, start: (start + end) / 2 + 1, end: end, left: left, right: right)
//        
//        if m == -1 {
//            return n
//        } else if n == -1  {
//            return m
//        } else {
//            if arr[m] <= arr[n] {
//                return m
//            } else {
//                return n
//            }
//        }
//        
//    }
//    
//    func getMax(start: Int, end: Int) -> Int {
//        
//        let getHeight = checker(node: 1, start: 0, end: arr.count - 1, left: start, right: end)
//        
//        var answer = arr[getHeight] * (end - start + 1)
//        
//        if start <= getHeight - 1 {
//            let subAnswer = getMax(start: start, end: getHeight - 1)
//            if answer < subAnswer {
//                answer = subAnswer
//            }
//        }
//        
//        if getHeight + 1 <= end {
//            let subAnswer = getMax(start: getHeight + 1, end: end)
//            if answer < subAnswer {
//                answer = subAnswer
//            }
//        }
//        
//        return answer
//    }
//    
//    makeTree(node: 1, start: 0, end: arr.count - 1)
//    print(getMax(start: 0, end: arr.count - 1))
//}
