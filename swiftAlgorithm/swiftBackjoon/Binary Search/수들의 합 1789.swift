//
//  수들의 합 1789.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/21.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution1789() {
//    var S = Int(readLine()!)!
//    
//    var dp = [Int](repeating: 0, count: 100000)
//    dp[1] = 1
//    for i in 2 ..< 100000 {
//        dp[i] = dp[i - 1] + i
//    }
//    
//    var left = 1
//    var right = dp.count
//    var mid = 0
//    
//    var answer = 0
//    var index = 0
//    
//    while left <= right {
//        mid = (left + right) / 2
//        
//
//        if dp[mid] <= S {
//            
//            if answer == dp[mid] {
//                index = mid
//            }
//            
//            left = mid + 1
//            
//        } else {
//            right = mid - 1
//        }
//    }
//    
//    print(right)
//}
