//
//  63. Unique Paths II.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/08.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
    var answer = 0
    
    var dp = [[Int]](repeating: [Int](repeating: 0, count: obstacleGrid[0].count), count: obstacleGrid.count)
    
    if obstacleGrid.count == 0 {
        return answer
    }
    if obstacleGrid[0][0] == 1 {
        return answer
    }
    
    var check = true
    for i in 0 ..< obstacleGrid.count {
        if obstacleGrid[i][0] == 1 {
            check = false
        }
        if check {
            dp[i][0] = 1
        }
    }
    
    check = true
    for i in 0 ..< obstacleGrid[0].count {
        if obstacleGrid[0][i] == 1 {
            check = false
        }
        if check {
            dp[0][i] = 1
        }
    }
    
    for i in 1 ..< obstacleGrid.count {
        for j in 1..<obstacleGrid[0].count {
            
            if obstacleGrid[i - 1][j] == 0 && obstacleGrid[i][j - 1] == 0 && obstacleGrid[i][j] == 0 {
                dp[i][j] = max(dp[i-1][j] + dp[i][j-1], dp[i][j])
            } else if obstacleGrid[i - 1][j] == 0 && obstacleGrid[i][j] == 0{
                dp[i][j] = max(dp[i-1][j], dp[i][j])
            } else if obstacleGrid[i][j - 1] == 0 && obstacleGrid[i][j] == 0{
                dp[i][j] = max(dp[i][j-1], dp[i][j])
            }
            
        }
    }
    
    return dp[obstacleGrid.count - 1][ obstacleGrid[0].count - 1]
}
