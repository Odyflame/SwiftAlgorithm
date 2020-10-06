//
//  운동.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/03.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution1956() {
//
//    var INF = 9999999
//    var VE = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
//
//    var dp = [[Int]](repeating: [Int](repeating: INF, count: VE[0] + 1), count: VE[0] + 1)
//    for i in 0 ..< VE[1] {
//        var temp = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
//
//        dp[temp[0]][temp[1]] = temp[2]
//    }
//
//    for k in 1 ... VE[0] {
//        for i in 1 ... VE[0] {
//            for j in 1 ... VE[0] {
//                dp[i][j] = min(dp[i][j], dp[i][k] + dp[k][j])
//            }
//        }
//    }
//
//    var answer = INF
//    for i in 1 ... VE[0] {
//        answer = min(answer, dp[i][i])
//    }
//
//    print(answer)
//}
