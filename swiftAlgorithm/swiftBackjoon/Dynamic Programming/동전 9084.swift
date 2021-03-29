//
//  동전 9084.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/03/30.
//  Copyright © 2021 odyflame. All rights reserved.
//

import Foundation

func solution9084() {
    let T = Int(readLine()!)!
    
    for _ in 0 ..< T {
        let N = Int(readLine()!)!
        let coins = readLine()!.split(separator: " ").map { Int($0)! }
        var M = Int(readLine()!)!
        
        var dp = [Int](repeating: 0, count: M + 1)
        dp[0] = 1
        for i in 0 ..< N {
            let num = coins[i]
            for j in 1 ... M {
                if num <= j {
                    dp[j] += dp[j - num]
                }
            }
        }
        
        print(dp[M])
    }
}
