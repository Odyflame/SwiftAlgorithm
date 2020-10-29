//
//  궁금한 민호.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/21.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution1507() {
//    
//    var dp = [[Int]]()
//    
//    var A = Int(readLine()!)!
//    
//    for i in 0 ..< A {
//        var temp = readLine()!.split(separator: " ").map { Int($0)! }
//        dp.append(temp)
//    }
//    
//    var visit = [[Bool]](repeating: [Bool](repeating: false, count: 20), count: 20)
//
//    for k in 0 ..< A {
//        for i in 0 ..< A {
//            for j in 0 ..< A {
//                
//                if i != j && i != k && j != k {
//                    
//                    if dp[i][j] == dp[i][k] + dp[k][j] {
//                        visit[i][j] = true
//                    }
//                    else if dp[i][j] > dp[i][k] + dp[k][j] {
//                        print(-1)
//                        return
//                    }
//                    
//                }
//                
//            }
//        }
//    }
//    
//    var answer = 0
//    
//    for i in 0 ..< A {
//        for j in i ..< A {
//            if i == j { continue }
//            if !visit[i][j] {
//                answer += dp[i][j]
//            }
//        }
//    }
//    
//    print(answer)
//}
