//
//  62. Unique Paths.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/08/23.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func uniquePaths(_ m: Int, _ n: Int) -> Int {
    var answer = 0
    var dp = [[Int]](repeating: [Int](repeating: 0, count: m), count: n)
    
    for i in 0 ..< m {
        dp[0][i] = 1
    }
    for i in 0 ..< n {
        dp[i][0] = 1
    }
    
    for i in 1 ..< n {
        for j in 1 ..< m {
            dp[i][j] = max(dp[i-1][j] + dp[i][j-1], dp[i][j])
        }
    }
    
    
    return dp[n-1][m-1]
}
