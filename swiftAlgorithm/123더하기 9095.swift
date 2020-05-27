//
//  123더하기 9095.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/05/27.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution9095() {
    
    var testCase = Int(readLine()!)!
    
    var dp = [Int](repeatElement(1, count: 50))
    
    dp[0] = 0
    dp[1] = 1
    dp[2] = 2
    dp[3] = 4
    dp[4] = 7
    
    for i in 4..<dp.count {
        dp[i] = dp[i-1] + dp[i-2] + dp[i-3]
    }
    
    for _ in 0..<testCase {
        var n = Int(readLine()!)!
        print(dp[n])
    }
    
}

//solution9095()
