//
//  소수 찾기.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/01.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//var check2 = [Bool](repeating: false, count: 10000000)
//
//func solution(_ numbers:String) -> Int {
//
//    var check = [Bool](repeating: false, count: 10000000)
//
//    check[0] = true
//    check[1] = true
//
//    for i in 2..<10000000 {
//        if !check[i] {
//            for j in stride(from: i + i, to: 10000000, by: i) {
//                check[j] = true
//            }
//        }
//    }
//
//    var srr = Array(numbers)
//    var answer = Set<Int>()
//
//    func dfs(_ depth: Int, _ srr: [String.Element],_ sum: String) {
//
//        if depth > srr.count {
//
//        }else {
//            for i in 0..<srr.count {
//                if !check2[i] {
//
//                    check2[i] = true
//                    answer.insert( Int(sum + String(srr[i]) )! )
//                    dfs( depth + 1, srr, sum + "\(srr[i])"  )
//                    check2[i] = false
//
//                }
//            }
//        }
//
//    }
//
//    dfs(0, srr, "0")
//    var sum = 0
//
//    for i in answer {
//        if !check[i] {
//            sum += 1
//        }
//    }
//
//    return sum
//}
