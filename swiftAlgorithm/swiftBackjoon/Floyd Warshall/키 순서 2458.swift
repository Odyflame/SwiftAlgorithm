//
//  키 순서 2458.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/16.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution2458() {
//    
//    var costs = readLine()!.components(separatedBy: " ").map { Int($0)! }
//    var dp = [[Int]](repeating: [Int](repeating: 9999999, count: costs[0] + 1), count: costs[0] + 1)
//    
//    for i in 1...costs[0] {
//        dp[i][i]  = 0
//    }
//    
//    for cost in 0..<costs[1] {
//        var temp = readLine()!.components(separatedBy: " ").map { Int($0)! }
//        
//        dp[temp[0]][temp[1]] = 1
//    }
//    
//    for k in 1...costs[0] {
//        for i in 1...costs[0] {
//            for j in 1...costs[0] {
//                if dp[i][k] == 1 && dp[k][j] == 1{
//                    dp[i][j] = 1
//                }
//            }
//        }
//    }
//    
//    var answer = 0
//    
//    for i in 1...costs[0] {
//        var check = true
//        for j in 1...costs[0] {
//            if i == j {
//                continue
//            }
//            if dp[i][j] == 9999999 && dp[j][i] == 9999999 {
//                check = false
//                break
//            }
//        }
//        if check {
//            answer += 1
//        }
//    }
//  
//    print(answer)
//}
