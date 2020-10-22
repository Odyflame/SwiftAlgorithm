//
//  맥주 마시면서 걸어가기 9205.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/16.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
////다시풀어봐야한다
//func solution9205() {
//    
//    var testCase = Int(readLine()!)!
//    
//    for _ in 0 ..< testCase {
//        
//        var storeNum = Int(readLine()!)!
//        
//        var dp = [[Int]](repeating: [Int](repeating: 9999999, count: storeNum + 3), count: storeNum + 3)
//        
//        for i in 1 ... storeNum + 2 {
//            dp[i][i] = 0
//        }
//        
//        var poses = [(Int, Int)]()
//        poses.append((0, 0))
//        
//        for store in 1 ... storeNum + 2 {
//            var pos = readLine()!.components(separatedBy: " ").map { Int($0)! }
//            poses.append((pos[0], pos[1]))
//            
//            for node in 1 ... store {
//                var distance = abs ( poses[node].0 - pos[0] ) + abs(poses[node].1 - pos[1] )
//                if distance <= 1000 {
//                    dp[store][node] = min(dp[store][node], distance)
//                    dp[node][store] = min(dp[node][store], distance)
//                }
//            }
//        }
//        
//        for k in 0..<poses.count {
//            for i in 0..<poses.count {
//                for j in 0 ..< poses.count {
//                    
//                    dp[i][j] = dp[i][j] > dp[i][k] + dp[k][j] ? dp[i][k] + dp[k][j] : dp[i][j]
//        
//                }
//            }
//        }
//        
//        if dp[1][storeNum + 2] == 9999999 {
//            print("sad")
//        } else {
//            print("happy")
//        }
//    }
//}
