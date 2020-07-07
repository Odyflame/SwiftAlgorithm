//
//  멀리 뛰기.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/07.
//  Copyright © 2020 odyflame. All rights reserved.
//
//
//import Foundation
//
//func solution(_ n:Int) -> Int {
//    
//    var dp:[Int] = [Int](repeating: 0, count: 2020)
//    
//    //dfs는 시간초과가 생긴다.
//    //    func dfs(_ sum: Int) -> Int {
//    //        var answer = 0
//    //
//    //        if sum == n {
//    //            return 1
//    //        } else if sum < n {
//    //            answer += dfs(sum + 1)
//    //            answer += dfs(sum + 2)
//    //        }
//    //
//    //        return answer
//    //    }
//    
//    dp[1] = 1
//    dp[2] = 2
//    if n >= 3 {
//        for i in 3...n {
//            dp[i] = (dp[i-2] + dp[i-1]) % 1234567
//        }
//    }
//    return dp[n]
//}
