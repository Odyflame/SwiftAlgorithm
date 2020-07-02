//
//  땅따먹기.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/02.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//func solution(_ land:[[Int]]) -> Int{
//    // 시간초과가 발생하여 제대로 된 값을 얻기가 힘들다
////    var answer = 0
////
////    func dfs(_ depth: Int,_ index: Int,_ sum: Int) -> Int {
////        var answer = 0
////
////        if depth == land.count {
////            return sum
////        }
////
////        for i in 0 ..< 4 {
////            if index != i {
////
////                answer = max(answer, dfs(depth + 1, i, sum + land[depth][i] ) )
////            }
////        }
////
////        return answer
////    }
////
////    for i in 0..<4 {
////        answer = max(dfs(0,i,0), answer)
////    }
////
////    return answer
//    
//    var answer = 0
//    
//    var dp = [[Int]] (repeating: [Int](repeating: 0, count: 4), count: 100001)
//    
//    for i in 0..<4 {
//        dp[0][i] = land[0][i]
//    }
//    
//    for i in 0..<land.count - 1 {
//        for j in 0..<4 {
//            for k in 0..<4 {
//                if j != k {
//                    dp[i + 1][k] = dp[i + 1][k] > dp[i][j] + land[i+1][k] ? dp[i+1][k] : dp[i][j] + land[i+1][k]
//                }
//            }
//        }
//    }
//    
//    for i in 0..<4 {
//        answer = max(dp[ land.count - 1 ][i], answer)
//    }
//    
//    return answer
//}
