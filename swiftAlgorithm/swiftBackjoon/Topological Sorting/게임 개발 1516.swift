//
//  게임 개발 1516.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/06/24.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//func solution1516() {
//
//    let n = Int(readLine()!)!
//
//    var prebuild = [[Int]](repeating: [Int](), count: n + 1)
//    var line = [Int](repeating: 0, count: n + 1)
//    var dp = [Int](repeating: 0, count: n + 1)
//    var times = [Int](repeating: 0, count: n + 1)
//
//    for i in 1 ... n {
//        var input = readLine()!.split(separator: " ").map { Int($0)! }
//        times[i] = input[0]
//        for j in 1 ..< input.count {
//            if input[j] == -1 {
//                break
//            }
//            line[i] += 1
//            prebuild[input[j]].append(i)
//        }
//    }
//
//    var qu = [Int]()
//    for i in 1 ... n {
//        if line[i] == 0 {
//            qu.append(i)
//        }
//
//        dp[i] += times[i]
//    }
//    var index = 0
//
//    while index < qu.count {
//        var top = qu[index]
//
//        for i in 0 ..< prebuild[top].count {
//            var nextNode = prebuild[top][i]
//
//            dp[nextNode] = max(dp[nextNode], dp[top] + times[nextNode])
//
//            line[nextNode] -= 1
//            if line[nextNode] == 0 {
//                qu.append(nextNode)
//            }
//        }
//
//        index += 1
//    }
//
//    for i in 1 ... n {
//        print(dp[i])
//    }
//}
