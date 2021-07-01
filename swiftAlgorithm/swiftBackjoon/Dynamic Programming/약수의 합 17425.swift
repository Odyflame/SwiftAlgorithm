//
//  약수의 합 17425.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/07/01.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//func solution17425() {
//    var n = Int(readLine()!)!
//    
//    var dp = [Int](repeating: 1, count: 1000001)
//    
//    for i in 2 ..< 1000001 {
//        for j in stride(from: i, to: 1000001, by: i) {
//            if j % i == 0 {
//                dp[j] += i
//            }
//        }
//        dp[i] += dp[i - 1]
//    }
//    
//    for i in 0 ..< n {
//        var input = Int(readLine()!)!
//        print(dp[input])
//    }
//
//}
