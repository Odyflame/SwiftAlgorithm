//
//  양팔저울 2629.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/03/31.
//  Copyright © 2021 odyflame. All rights reserved.
//

import Foundation

// 뭔 개소린지 하나도 모르겠다
//func solution2629() {
//    let chuNum = Int(readLine()!)!
//    let chuWeight = readLine()!.split(separator: " ").map { Int($0)! }
//    let checkChuNum = Int(readLine()!)!
//    let checkChuWeight = readLine()!.split(separator: " ").map { Int($0)! }
//
//    var dp = [[Int]](repeating: [Int](repeating: false, count: 40001), count: chuNum)
//
//    func dfs(depth: Int, sum: Int) {
//        if depth > chuNum || dp[depth][sum] {
//            return
//        }
//        dp[depth][sum] = true
//
//        dfs(depth: depth + 1, sum: sum + chuWeight[depth])
//        dfs(depth: depth, sum: sum)
//        dfs(depth: depth - 1, sum: abs(sum - chuWeight[depth]))
//    }
//
//    dfs(depth: 0, sum: 0)
//    for weight in checkChuWeight {
//        if weight > 15000 {
//            print("N")
//        } else if dp[
//    }
//    print
//}
