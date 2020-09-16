//
//  1로 만들기.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/05/26.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//var dp = [Int](repeating: -1, count: 1000005)
//
//func solution() {
//    var x = Int(readLine()!)!
//    dp[x] = 0
//
//    while x >= 1 {
//        if x % 3 == 0 {
//            if dp[x/3] == -1 {
//                dp[x/3] = dp[x] + 1
//            } else {
//                dp[x/3] = dp[x/3] < dp[x] + 1 ? dp[x/3] : dp[x] + 1
//            }
//        }
//        if x%2 == 0 {
//            if dp[x/2] == -1 {
//                dp[x/2] = dp[x] + 1
//            } else {
//                dp[x/2] = dp[x/2] < dp[x] + 1 ? dp[x/2] : dp[x] + 1
//            }
//        }
//        if x > 1 {
//            if dp[x - 1] == -1 {
//                dp[x - 1] = dp[x] + 1
//            } else {
//                dp[x - 1] = dp[x - 1] < dp[x] + 1 ? dp[x - 1] : dp[x] + 1
//            }
//        }
//        x -= 1
//    }
//
//    print(dp[1])
//}
