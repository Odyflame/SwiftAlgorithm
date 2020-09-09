//
//  64. Minimum Path Sum.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/09.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func minPathSum(_ grid: [[Int]]) -> Int {
    var answer = 0
    var dp = [[Int]](repeating: [Int](repeating: 999999999, count: grid[0].count), count: grid.count)
    
    dp[0][0] = grid[0][0]
    for i in 0 ..< grid.count - 1 {
        dp[i + 1][0] = dp[i][0] + grid[i + 1][0]
    }
    
    for i in 0 ..< grid[0].count - 1 {
        dp[0][i + 1] = dp[0][i] + grid[0][i + 1]
    }
    
    for i in 0 ..< grid.count - 1 {
        for j in 0 ..< grid[0].count - 1 {
            dp[i + 1][j + 1] = min(dp[i + 1][j + 1], dp[i][j + 1] + grid[i + 1][j + 1])
            dp[i + 1][j + 1] = min(dp[i + 1][j + 1], dp[i + 1][j] + grid[i + 1][j + 1])
        }
    }
    
    
    return dp[grid.count - 1][grid[0].count - 1]
}
