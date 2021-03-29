//
//  앱 7579.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/03/28.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//func solution7579() {
//    var NM = readLine()!.split(separator: " ").map { Int($0)! }
//    
//    var A = readLine()!.split(separator: " ").map { Int($0)! }
//    var C = readLine()!.split(separator: " ").map { Int($0)! }
//    
//    var dp = [[Int]](repeating: [Int](repeating: 0, count: 10001), count: 101)
//    
//    dp[0][C[0]] = A[0]
//    for i in 1 ..< NM[0] {
//        for j in 0 ..< 10001 {
//            
//            dp[i][j] = dp[i - 1][j]
//            if j - C[i] >= 0 {
//                dp[i][j] = max(dp[i][j], dp[i-1][j - C[i]] + A[i])
//            }
//        }
//    }
//    
//    for i in 0 ..< 10001 {
//        if dp[NM[0] - 1][i] >= NM[1] {
//            print(i)
//            break
//        }
//    }
//}
