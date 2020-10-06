//
//  저울 10159.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/02.
//  Copyright © 2020 odyflame. All rights reserved.
//
//
//import Foundation
//
//func solution10159() {
//
//    let N = Int(readLine()!)!
//    let M = Int(readLine()!)!
//    let INF = 9999999
//    
//    var dp = [[Int]](repeating: [Int](repeating: INF, count: N + 1), count: N + 1)
//    var andDP = [[Int]](repeating: [Int](repeating: INF, count: N + 1) , count: N + 1)
//
//    for _ in 0 ..< M {
//        let temp = readLine()!.split(separator: " ").map { Int($0)! }
//
//        dp[temp[0]][temp[1]] = 1
//        andDP[temp[1]][temp[0]] = 1
//    }
//
//    for k in 1 ... N {
//        for i in 1 ... N {
//            for j in 1 ... N {
//
//                if dp[i][k] != INF && dp[k][j] != INF {
//                    dp[i][j] = 1
//                }
//            }
//        }
//    }
//
//    for i in 1 ... N {
//        var answer = 0
//        for j in 1 ... N {
//
//            if dp[i][j] == INF && dp[j][i] == INF {
//                answer += 1
//            }
//        }
//        print(N - answer)
//    }
//
//}
