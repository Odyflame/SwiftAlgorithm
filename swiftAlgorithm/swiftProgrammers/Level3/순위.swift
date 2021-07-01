//
//  순위.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/06/21.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//func solution(_ n:Int, _ results:[[Int]]) -> Int {
//    
//    var dp = [[Bool]](repeating: [Bool](repeating: false, count: n + 1), count: n + 1)
//    
//    for result in results {
//        dp[result[0]][result[1]] = true
//    }
//    
//    for k in 0 ..< n {
//        for i in 0 ..< n {
//            for j in 0 ..< n {
//                if i == j { continue }
//                
//                if dp[i][k] && dp[k][j] {
//                    dp[i][j] = true
//                }
//            }
//        }
//    }
//    
//    var answer = 0
//    for i in 0 ..< n {
//        var sum = 0
//        for j in 0 ..< n {
//            if i == j { continue }
//            
//            if dp[i][j] || dp[j][i] {
//                sum += 1
//            }
//        }
//        if sum == n - 1 {
//            answer += 1
//        }
//    }
//    
//    return answer
//}
