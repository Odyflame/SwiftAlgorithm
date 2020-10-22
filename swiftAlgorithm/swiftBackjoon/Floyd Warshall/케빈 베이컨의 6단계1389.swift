//
//  케빈 베이컨의 6단계1389.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/16.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution1389() {
//    var NM = readLine()!.components(separatedBy: [" "]).map { return Int($0)! }
//    
//    var dp = [[Int]](repeating: [Int](repeating: 99999999, count: NM[0] + 1), count: NM[0] + 1)
//    
//    for i in 0..<NM[1] {
//        var friends = readLine()!.components(separatedBy: [" "]).map { return Int($0)! }
//        
//        dp[friends[0]][friends[1]] = 1
//        dp[friends[1]][friends[0]] = 1
//    }
//    
//    for i in 1...NM[0] {
//        dp[i][i] = 0
//    }
//    
//    for k in 1...NM[0] {
//        for i in 1...NM[0] {
//            for j in 1...NM[0] {
//                dp[i][j] = dp[i][j] > dp[i][k] + dp[k][j] ? dp[i][k] + dp[k][j] : dp[i][j]
//            }
//        }
//    }
//    
//    var answer = (9999, 9999999)
//    
//    for i in 1...NM[0] {
//        
//        var tempAnswer = 0
//        for j in 1...NM[0] {
//            tempAnswer += dp[i][j]
//        }
//        
//        if answer.1 > tempAnswer {
//            answer = (i, tempAnswer)
//        } else if answer.1 == tempAnswer {
//            answer = answer.0 < i ? answer : (i, answer.1)
//        }
//    }
//    
//    print(answer.0)
//}
