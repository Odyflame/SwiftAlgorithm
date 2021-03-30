//
//  줄어들지 않아 2688.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/03/24.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//func solution2688() {
//    
//    var dp = [[Int]](repeating: [Int](repeating: 0, count: 10), count: 66)
//    var ans = [Int]()
//    var T = Int(readLine()!)!
//    
//    for i in 0...9 {
//        dp[1][i] = 1
//    }
//    
//    ans.append(1)
//    ans.append(10)
//    
//    for i in 1..<64 {
//        var sum = 0
//        for j in 0 ..< 10 {
//            for k in 0 ... j {
//                dp[i + 1][j] += dp[i][k]
//            }
//            sum += dp[i + 1][j]
//        }
//        ans.append(sum)
//    }
//    
//    for _ in 0..<T {
//        var n = Int(readLine()!)!
//        
//        print(ans[n])
//    }
//}
