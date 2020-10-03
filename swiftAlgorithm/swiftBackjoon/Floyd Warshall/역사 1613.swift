//
//  역사 1631.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/02.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution1613() {
//    
//    let INF = 9999999
//    let nk = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
//    
//    var dp = [[Int]](repeating: [Int](repeating: INF, count: nk[0] + 1), count: nk[0] + 1)
//    for i in 0 ..< nk[1] {
//        var temp = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
//        
//        dp[temp[0]][temp[1]] = 1
//    }
//    
//    
//    for k in 1 ... nk[0] {
//        for i in 1 ... nk[0] {
//            for j in 1 ... nk[0] {
//                
//                if dp[i][k] == 1 && dp[k][j] == 1{
//                    dp[i][j] = 1
//                }
//                
//            }
//        }
//    }
//    
//    let s = Int(readLine()!)!
//    
//    for i in 0 ..< s {
//        var temp = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
//        
//        if dp[temp[0]][temp[1]] == 1{
//            print(-1)
//        } else if dp[temp[1]][temp[0]] == 1 {
//            print(1)
//        } else {
//            print(0)
//        }
//    }
//    
//}
