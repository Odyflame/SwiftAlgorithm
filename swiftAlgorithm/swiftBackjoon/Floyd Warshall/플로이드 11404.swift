//
//  플로이드 11404.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/16.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution11404() {
    var city = Int(readLine()!)!
    var busNum = Int(readLine()!)!
    
    var dp = [[Int]](repeating: [Int](repeating: 9999999, count: city + 1), count: city + 1)
    
    for i in 1...city {
        dp[i][i] = 0
    }
    
    for bus in 0 ..< busNum {
        var costs = readLine()!.components(separatedBy: " ").map { Int($0)! }
        
        dp[costs[0]][costs[1]] = min(dp[costs[0]][costs[1]], costs[2])
    }
    
    for k in 1...city {
        for i in 1...city {
            for j in 1...city {
                dp[i][j] = dp[i][j] > dp[i][k] + dp[k][j] ? dp[i][k] + dp[k][j] : dp[i][j]
            }
        }
    }
    
    for i in 1...city {
        var answer = ""
        for j in 1 ... city {
            if dp[i][j] == 9999999 {
                answer += "0 "
            } else {
                answer += "\(dp[i][j]) "
            }
        }
        print(answer)
    }
}
