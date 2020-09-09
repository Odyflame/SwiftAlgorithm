//
//  70. Climbing Stairs.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/09.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func climbStairs(_ n: Int) -> Int {
    var dp = [Int](repeating: 0, count: n + 1)
    
    if n == 1 {
        return 1
    } else if n == 2 {
        return 2
    } else if n == 3 {
        return 3
    }
    
    dp[1] = 1
    dp[2] = 2
    dp[3] = 3
    
    for i in 4 ... n {
        dp[i] = dp[i-1] + dp[i-2]
    }
    
    return dp[n]
}
