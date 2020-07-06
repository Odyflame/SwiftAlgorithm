//
//  소수 만들기.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/03.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//func solution(_ nums:[Int]) -> Int {
//    var answer = 0
//
//    var check = [Bool](repeating: false, count: 1002)
//    var dp = [Bool](repeating: false, count: 3002)
//
//    dp[0] = true
//    dp[1] = true
//
//    for i in 2..<3002 {
//        if !dp[i] {
//            for j in stride(from: i + i, to: 3002, by: i) {
//                dp[j] = true
//            }
//        }
//    }
//
//    var mySet = Set<[Int]>()
//
//    func dfs(_ depth: Int,_ sum: Int, _ arr: [Int]) -> Int {
//        var answer = 0
//        var arr = arr
//        if depth == 3 {
//            if !dp[sum] {
//                mySet.insert(arr.sorted())
//                return 1
//            }
//            else { return 0 }
//        }
//
//        for i in nums {
//            if !check[i] {
//                check[i] = true
//                arr.append(i)
//                answer += dfs(depth + 1, sum + i, arr )
//                arr.removeLast()
//                check[i] = false
//            }
//        }
//
//        return answer
//    }
//
//    answer += dfs(0, 0, [])
//
//    return mySet.count
//
//}
